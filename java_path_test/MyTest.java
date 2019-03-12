import java.nio.file.Paths;

public class MyTest {
  public static void main(String[] args) {
    System.out.println(Paths.get("").relativize(Paths.get("foo/bar")));
  }
}
