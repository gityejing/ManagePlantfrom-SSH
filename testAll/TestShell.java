import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Created by Dell on 2017-05-22.
 */
public class TestShell {
    public static void main(String[] args) throws Exception {
			String id="E2004134721301180400EBBA";
            int status = Runtime.getRuntime().exec("/home/pi/PI0/c.sh "+id).waitFor();
			System.out.println("状态："+status);     
    }
}
