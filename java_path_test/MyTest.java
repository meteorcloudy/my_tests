import java.nio.file.Paths;

public class MyTest {
  public static void main(String[] args) {
    // On Windows, the result is ..\foo\bar
    // On Linux, the result is foo/bar
    System.out.println(Paths.get("").relativize(Paths.get("foo/bar")));
  }
}
