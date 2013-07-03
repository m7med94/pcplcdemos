package javafx2nodavetest;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

import javafx2nodavetest.driver.Nodave;
import javafx2nodavetest.driver.PLCinterface;
import javafx2nodavetest.driver.TCPConnection;

public class DataIsoTCP {

    public static boolean Connection = false;
    public static int i, j;
    public static long a, b, c;
    public static float d, e, f;
    public static char buf[];
    public static byte buf1[];
    public static PLCinterface di;
    public static TCPConnection dc;
    public static Socket sock;
    public static int slot;
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
        } catch (IOException e1) {
            System.out.println(e1);
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
            } catch (IOException e1) {
            }
            try {
                iStream = sock.getInputStream();
            } catch (IOException e1) {
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

    //write bytes 
    public static void WriteData(int area, int DBNum, int number, int bytes, long a) {
        switch (bytes) {
            case 1: {
                by = Nodave.bswap_8((byte) a);
            }
            case 2: {
                by = Nodave.bswap_16((int) a);
            }
            case 4: {
                by = Nodave.bswap_32(a);
            }
        }
        dc.writeBytes(area, DBNum, number, bytes, by);
    }

    //read bytes 
    public static String ReadData(int area, int DBNum, int number, int bytes, int repr) {
        String tmp;
        if (Connection) {
            dc.readBytes(area, DBNum, number, bytes, null);
            switch (bytes) {
                case 1: {
                    if (repr == 1) {
                        tmp = Integer.toBinaryString(dc.getBYTE());
                        for (int i = tmp.length(); i < 9; i++) {
                            tmp = "0" + tmp;
                        }
                        return "2#" + tmp;
                    } else if (repr == 2) {
                        return "B#16#" + Integer.toHexString(dc.getBYTE());
                    } else if (repr == 3) {
                        return Integer.toString(dc.getBYTE());
                    } else if (repr == 4) {
                        return Integer.toString(dc.getBYTE());
                    } else {
                        return Integer.toString(dc.getBYTE());
                    }
                }
                case 2: {
                    return Integer.toString(dc.getINT());
                }
                case 4: {
                    return Long.toString(dc.getU32());
                }
                default: {
                    return "unknown";
                }
            }
        } else {
            return "off-line";
        }
    }

    public static void Start(String adres) {

        Nodave.Debug = Nodave.DEBUG_ALL ^ (Nodave.DEBUG_IFACE | Nodave.DEBUG_SPECIALCHARS);

        DataIsoTCP tp = new DataIsoTCP(adres);
        tp.StartConnection();
    }
}
