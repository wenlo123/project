package TCP通信;

import java.io.IOException;
import java.net.Socket;

public class TCPClient {
    public static void main(String[] args) throws IOException {
        Socket socket = new Socket("127.0.0.1",8888);
        new Thread(new Send(socket)).start();
        socket.close();
    }
}