/*
 Part of Libnodave, a free communication librray for Siemens S7 300/400 via
 the MPI adapter 6ES7 972-0CA22-0XAC
 or  MPI adapter 6ES7 972-0CA33-0XAC
 or  MPI adapter 6ES7 972-0CA11-0XAC.
*/
package javafxnodavetest.driver;

public class TCP243Connection extends TCPConnection {
	
	public TCP243Connection(PLCinterface ifa, int rack, int slot) {
		super(ifa,0,0);
	}
	
	public int connectPLC() {
		int res;
		byte[] b4CP243 ={
			(byte)0x11,

			(byte)0xE0,
			(byte)0x00,
			(byte)0x00,
			(byte)0x00,
			(byte)0x01,
			(byte)0x00,
			(byte)0xC1,
			(byte)0x02,
			(byte)0x4D,
			(byte)0x57,
			(byte)0xC2,
			(byte)0x02,
			(byte)0x4D,
			(byte)0x57,
			(byte)0xC0,
			(byte)0x01,
			(byte)0x09 };
			
		System.out.println("daveConnectPLC() step 0.");
		if ((Nodave.Debug & Nodave.DEBUG_CONNECT) != 0)
			System.out.println("daveConnectPLC() step 1.");
		System.arraycopy(b4CP243, 0, msgOut, 4, b4CP243.length);
		sendISOPacket(b4CP243.length);
		readISOPacket();
		if ((Nodave.Debug & Nodave.DEBUG_CONNECT) != 0)
			System.out.println("daveConnectPLC() step 1.");
		return negPDUlengthRequest();
	}
}
