package nodave;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

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

	// IP 192.168.1.101
	DataIsoTCP(String host) {
		IP = host;
		// Nodave.Debug=Nodave.DEBUG_ALL;
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
			}
			try {
				iStream = sock.getInputStream();
			} catch (IOException e) {
			}
			di = new PLCinterface(oStream, iStream, "IF1", 0,
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

	// read 4 bytes from MD 100
	public static long ReadData() {
		dc.readBytes(Nodave.FLAGS, 0, 100, 4, null);
		a = dc.getU32();
		return (long) a;
	}

	// write 4 bytes to MD 100
	public static void WriteData(long a) {
		by = Nodave.bswap_32(a);
		dc.writeBytes(Nodave.FLAGS, 0, 100, 4, by);
	}

	public static void ConnectIsoTcp(String adres) {

		Nodave.Debug = Nodave.DEBUG_ALL
				^ (Nodave.DEBUG_IFACE | Nodave.DEBUG_SPECIALCHARS);

		DataIsoTCP tp = new DataIsoTCP(adres);
		tp.StartConnection();
	}

}
