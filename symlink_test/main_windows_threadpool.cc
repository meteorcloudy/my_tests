#include <windows.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#include <atomic>
#include <mutex>
#include <string>
#include <memory>
#include <vector>

using namespace std;

#ifndef SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE
#define SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE 0x2
#endif

#ifndef SYMBOLIC_LINK_FLAG_DIRECTORY
#define SYMBOLIC_LINK_FLAG_DIRECTORY 0x1
#endif

class Action {
 public:
  Action(wstring link, wstring target, uint8_t is_dir)
  : link_(link), target_(target), is_dir_(is_dir) {}
  void Run();

 private:
  const wstring link_;
  const wstring target_;
  const uint8_t is_dir_;
};

void Action::Run() {
  if (CreateSymbolicLinkW(link_.c_str(), target_.c_str(), is_dir_ | SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE) == 0) {
    printf("Error: Symlink creation failed!\n");
  }
}

class Executor {
 public:
  static Executor* Create();
  ~Executor() { Finish(); }
  void Schedule(wstring link, wstring target, uint8_t is_dir);
  void Finish();

 private:
  Executor() : threadpool_(NULL), cleanup_group_(NULL) {}

  PTP_POOL threadpool_;
  PTP_CLEANUP_GROUP cleanup_group_;
  TP_CALLBACK_ENVIRON threadpool_env_;
};

VOID CALLBACK WorkCallback(_Inout_ PTP_CALLBACK_INSTANCE Instance,
                           _Inout_opt_ PVOID Context, _Inout_ PTP_WORK Work) {
  unique_ptr<Action> action(reinterpret_cast<Action*>(Context));
  action->Run();
}

Executor* Executor::Create() {
  unique_ptr<Executor> result(new Executor());

  result->threadpool_ = CreateThreadpool(NULL);
  if (result->threadpool_ == NULL) {
    DWORD err = GetLastError();
    fprintf(stderr, "ERROR(" __FILE__ ":%d) err=%d\n", __LINE__, err);
    return nullptr;
  }

  result->cleanup_group_ = CreateThreadpoolCleanupGroup();
  if (result->cleanup_group_ == NULL) {
    DWORD err = GetLastError();
    CloseThreadpool(result->threadpool_);
    fprintf(stderr, "ERROR(" __FILE__ ":%d) err=%d\n", __LINE__, err);
    return nullptr;
  }

  SetThreadpoolThreadMaximum(result->threadpool_, 128);
  SetThreadpoolThreadMinimum(result->threadpool_, 128);

  InitializeThreadpoolEnvironment(&result->threadpool_env_);
  SetThreadpoolCallbackPool(&result->threadpool_env_, result->threadpool_);
  SetThreadpoolCallbackCleanupGroup(&result->threadpool_env_,
                                    result->cleanup_group_, NULL);

  printf("Created executor\n");
  return result.release();  // release pointer ownership
}

void Executor::Schedule(wstring link, wstring target, uint8_t is_dir) {

  unique_ptr<Action> a(new Action(link, target, is_dir));

  PTP_WORK w = CreateThreadpoolWork(WorkCallback, a.get(), &threadpool_env_);
  if (w == NULL) {
    DWORD err = GetLastError();
    fprintf(stderr, "ERROR(" __FILE__ ":%d) err=%d\n", __LINE__, err);
  } else {
    a.release();
    SubmitThreadpoolWork(w);
  }
}

void Executor::Finish() {
  if (threadpool_ == NULL) {
    return;
  }
  CloseThreadpoolCleanupGroupMembers(cleanup_group_, FALSE, NULL);
  CloseThreadpoolCleanupGroup(cleanup_group_);
  CloseThreadpool(threadpool_);
  threadpool_ = NULL;
  cleanup_group_ = NULL;
}

int main(void) {
  printf("Start\n");
  unique_ptr<Executor> executor(Executor::Create());
  if (executor) {
    int count = 10000;
    const wchar_t* target = L"target_file";
    const wchar_t* linkDir = L"links_for_file/";

    CreateDirectoryW(linkDir, NULL);

    // Create
    clock_t begin = clock();

    for (int i = 0; i < count; i++) {
        wstring link = wstring(linkDir) + to_wstring(i);
        executor->Schedule(link, target, 0);
    }

    executor->Finish();
    clock_t end = clock();

    double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;

    printf("Time for creating %d file symlinks: %lf\n", count, elapsed_secs);
    return 0;
  } else {
    printf("Could not create executor.\n");
    return 1;
  }
}
