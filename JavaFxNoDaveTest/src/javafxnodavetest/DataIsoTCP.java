package javafxnodavetest;

/**
 *
 * @author Alex
 */
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

import javafxnodavetest.driver.Nodave;
import javafxnodavetest.driver.PLCinterface;
import javafxnodavetest.driver.TCPConnection;

public class DataIsoTCP {

    public static boolean Connection = false;
    public static int i, j;
    public static long a;
    public static PLCinterface di;
    public static TCPConnection dc;
    public static Socket sock;
    public static int slot = 2;
    public static byte[] by;
    public static String IP;

    //IP 192.168.1.101
    DataIsoTCP(String host) {
        IP = host;
        //Nodave.Debug=Nodave.DEBUG_ALL;
        try {
            sock = new Socket(host, 102);
        } catch (IOException e) {
            System.out.println(e);
        }
    }

    public static void StartConnection() {
        Connection = false;
        OutputStream oStream = null;
        InputStream iStream = null;
 
        if (sock != null) {
            try {
                oStream = sock.getOutputStream();
            } catch (IOException e) {
                System.out.println(e);
            }
            try {
                iStream = sock.getInputStream();
            } catch (IOException e) {
                System.out.println(e);
            }
            di = new PLCinterface(
                    oStream,
                    iStream,
                    "IF1",
                    0,
                    Nodave.PROTOCOL_ISOTCP);

            dc = new TCPConnection(di, 0, slot);
            int res = dc.connectPLC();
            if (0 == res) {
                Connection = true;
                System.out.println("Connection OK ");
            } else {
                System.out.println("No connection");
            }
        }
    }

    public static void StopConnection() {
        if (Connection == true) {
            Connection = false;
            dc.disconnectPLC();
            di.disconnectAdapter();
        }
    }
    //read 4 bytes from MW100 4bytes in buffer

    public static long ReadData(int address) {
        dc.readBytes(Nodave.FLAGS, 0, address, 4, null);
        a = dc.getU32();
        return (long) a;
    }
    //write 4 bytes to MW100 4bytes from buffer and MW104

    public static void WriteData(long a, long b) {
        by = Nodave.bswap_32(a);
        dc.writeBytes(Nodave.FLAGS, 0, 100, 4, by);
        by = Nodave.bswap_32(b);
        dc.writeBytes(Nodave.FLAGS, 0, 104, 4, by);
    }

    public static long ReadByte(int address) {
        dc.readBytes(Nodave.FLAGS, 0, address, 1, null);
        a = dc.getBYTE();
        return (short) a;
    }
    //write 4 bytes to merk 109

    public static void WriteByte(short a) {
        by = Nodave.bswap_8(a);
        dc.writeBytes(Nodave.FLAGS, 0, 108, 1, by);
    }

    public static void Start(String adres) {

        //Nodave.Debug=Nodave.DEBUG_ALL^(Nodave.DEBUG_IFACE|Nodave.DEBUG_SPECIALCHARS);

        DataIsoTCP tp = new DataIsoTCP(adres);
        tp.StartConnection();
    }
}
