/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package VisElemS7;

/**
 *
 * @author ALEX
 */
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

import VisElemS7.driver.Nodave;
import VisElemS7.driver.PLCinterface;
import VisElemS7.driver.TCP243Connection;

public class DataIsoTCP243 {

        public static boolean Connection = false;
    	public static int i, j;
	public static long a, b, c;
	public static float d, e, f;
	public static char buf[];
	public static byte buf1[];
	public static PLCinterface di;
	public static TCP243Connection dc;
	public static Socket sock;
        public static int slot;

        public static void waitKey() {
		char c;
		System.out.println("Press return to continue.\n");
		//		System.in.read(c,1);
	}

        //IP 130.143.128.161
        DataIsoTCP243(String host) {
		Nodave.Debug=Nodave.DEBUG_ALL;
		buf = new char[Nodave.OrderCodeSize];
		buf1 = new byte[Nodave.PartnerListSize];
		try {
			sock = new Socket( host, 102);
		} catch (IOException e) {
			System.out.println(e);
		}
	}

         public static void StartConnection() {
                Connection = false;
 		OutputStream oStream = null;
		InputStream iStream = null;
                slot =2;

                byte[] by;
		if (sock != null) {
			try {
				oStream = sock.getOutputStream();
			} catch (IOException e) {
			}
			try {
				iStream = sock.getInputStream();
			} catch (IOException e) {
			}
			di = new PLCinterface(
					oStream,
					iStream,
					"IF1",
					0,
					Nodave.PROTOCOL_ISOTCP);

			for (int i = 0; i < 3; i++) {
				if (0 == di.initAdapter()) {
					//a = di.listReachablePartners(buf1);
					System.out.println("Success initAdapter " + a);
					if (a > 0) {
						for (j = 0; j < a; j++) {
							if (buf1[j] == Nodave.MPIReachable)
								System.out.println("PLC at " + j);
						}
					}
					break;
				}
			}
			dc = new TCP243Connection(di, 0, slot);
			int res = dc.connectPLC();
			if (0 == res) {
                            //Connection = true;
                            System.out.println("Connection OK ");
                        }else{
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

        public static long ReadData() {
            System.out.println("readBytes(Nodave.DB, 1, 2, 2, null)-->");
            dc.readBytes(Nodave.DB, 1, 2, 2, null);
            System.out.println("getWORD()-->");
            a = dc.getWORD();
            return (int)a;
        }
    
	public static void Start(String adres) {

		Nodave.Debug=Nodave.DEBUG_ALL^(Nodave.DEBUG_IFACE|Nodave.DEBUG_SPECIALCHARS);

		DataIsoTCP243 tp = new DataIsoTCP243(adres);
		tp.StartConnection();
		System.out.println("Done...");
	}
}
