import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Created by Dell on 2017-05-22.
 */
public class TestShell {
    public static void main(String[] args) throws Exception {
        //BufferedReader bufferedReader = null;
        //try {
            int status = Runtime.getRuntime().exec("/home/pi/PI0/1.sh").waitFor();
			System.out.println("状态："+status);
            /*StringBuilder stringBuffer=new StringBuilder();
            if (pid != null) {
                // bufferedReader用于读取Shell的输出内容
                Thread.sleep(100);

                bufferedReader = new BufferedReader(new InputStreamReader(pid.getInputStream()), 1024);
                try{
                    pid.waitFor();
                }catch(InterruptedException e){
                    e.printStackTrace();
                }
            } else {
                stringBuffer.append("没有pid\r\n");
            }
            stringBuffer.append(
                    "Shell命令执行完毕\r\n执行结果为：\r\n");
            String line = null;
            // 读取Shell的输出内容，并添加到stringBuffer中
            while (bufferedReader != null
                    && (line = bufferedReader.readLine()) != null) {
                stringBuffer.append(line).append("\r\n");
            }
            System.out.println("stringBuffer:"+stringBuffer);
        } catch (IOException e) {
            System.out.println("捕捉到异常");
            e.printStackTrace();
        }*/
    }
}
