package javafx2nodaveexample;

/**
 *
 * @author Alex
 */
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

import javafx2nodaveexample.nodave.Nodave;
import javafx2nodaveexample.nodave.PLCinterface;
import javafx2nodaveexample.nodave.TCPConnection;

public class DataIsoTCP {

    public static boolean Connection = false;
    private static int i, j;
    public static byte b, b1, b2, b3;
    //private static long a, c;
    //private static float d, e, f;
    private static char buf[];
    public static byte buf1[];
    public static PLCinterface di;
    public static TCPConnection dc;
    public static Socket sock;
    private static int slot;
    public static byte[] by;
    public static String IP;

    //IP 192.168.1.101
    DataIsoTCP(String host) {
        IP = host;
        //Nodave.Debug=Nodave.DEBUG_ALL;
        buf = new char[Nodave.OrderCodeSize];
        buf1 = new byte[Nodave.PartnerListSize];
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
        slot = 2;

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

    public static void ReadData(int area, int db, int address, int bytes) {
        i = 0;
        if (area == 1) {
            dc.readBytes(Nodave.INPUTS, 0, address, bytes, null);
        } else if (area == 2) {
            dc.readBytes(Nodave.FLAGS, db, address, bytes, null);
        } else if (area == 3) {
            dc.readBytes(Nodave.OUTPUTS, 0, address, bytes, null);
        }
    }

    public static int ReadOutputs(int address, int bytes) {
        int res = dc.readBytes(Nodave.OUTPUTS, 0, address, bytes, null);
        if (res == 0) {
            b1 = (byte) dc.getBYTE();
            b2 = (byte) dc.getBYTE();
            b3 = (byte) dc.getBYTE();
        }
        return res;
    }
    //write 1 byte  

    public static void WriteDataByteInput(int area, int db, int address, int value) {
        by = Nodave.bswap_8(value);
        if (area == 1) {
            dc.writeBytes(Nodave.INPUTS, 0, address, 1, by);
        } else if (area == 2) {
            dc.writeBytes(Nodave.FLAGS, db, address, 1, by);
        } else if (area == 3) {
            dc.writeBytes(Nodave.OUTPUTS, 0, address, 1, by);
        }
    }
    //write 2 bytes to MW 

    public static void WriteData16(int area, int db, int address, int m) {
        by = Nodave.bswap_16(m);
        if (area == 1) {
            dc.writeBytes(Nodave.INPUTS, 0, address, 2, by);
        } else if (area == 2) {
            dc.writeBytes(Nodave.FLAGS, db, address, 2, by);
        } else if (area == 3) {
            dc.writeBytes(Nodave.OUTPUTS, 0, address, 2, by);
        }
    }
    //write 4 bytes to MD 

    public static void WriteData32(int db, int address, long m) {
        by = Nodave.bswap_32(m);
        dc.writeBytes(Nodave.FLAGS, db, address, 4, by);
    }
    //write 4 bytes to MD 

    public static void WriteFloat(int db, int address, double m) {
        by = Nodave.toPLCfloat(m);
        dc.writeBytes(Nodave.FLAGS, db, address, 4, by);
    }
    //write 1 byte to IB , bit boolean

    public static void WriteBitInput(int area, int address, int bit, boolean value) {
        i = 0;
        int res = dc.readBytes(Nodave.INPUTS, 0, address, 1, null);
        if (res == 0) {
            j = dc.getS8(i);
            b = (byte) j;
            if (value == true) {
                b = (byte) (b | (1 << bit));  //Set het n'de Bit
            } else {
                b = (byte) (b & ~(1 << bit));   //Reset het n'de Bit              
            }
            by = Nodave.bswap_8(b);
            dc.writeBytes(Nodave.INPUTS, 0, address, 1, by);
        }
    }

    public static void Start(String adres) {
        Nodave.Debug=Nodave.DEBUG_ALL^(Nodave.DEBUG_IFACE|Nodave.DEBUG_SPECIALCHARS);

        DataIsoTCP tp = new DataIsoTCP(adres);
        DataIsoTCP.StartConnection();
    }
}
