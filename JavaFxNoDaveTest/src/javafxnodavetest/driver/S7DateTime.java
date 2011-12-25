/*
 Part of Libnodave, a free communication library for Siemens S7 300/400 via
 the MPI adapter 6ES7 972-0CA22-0XAC
 or  MPI adapter 6ES7 972-0CA33-0XAC
 or  MPI adapter 6ES7 972-0CA11-0XAC.
 
 */

package javafxnodavetest.driver;

public class S7DateTime {
    byte [] buffer;
    int pos;
    S7DateTime(byte[] buffer, int pos) {
    	this.buffer=buffer;
    	this.pos=pos;
    }	
	
	static String fromBCD2(int i) {
				String s=Integer.toHexString(i);
								if (s.length() < 2)
									s = "0" + s;
				return s;
			}						
				    
		
    public String getString () {
		int year = buffer[pos];
		if (year<90)year=year+2000;else year=year+1900;
		String month = fromBCD2(buffer[pos+1]);
		String day = fromBCD2(buffer[pos+2]);
		String hour = fromBCD2(buffer[pos+3]);
		String minute = fromBCD2(buffer[pos+4]);
		String second = fromBCD2(buffer[pos+5]);
		return day+'.'+month+'.'+year+' '+hour+':'+minute+':'+second;
    }
	
	public static String toString (byte[] buffer,int pos) {
			int year = buffer[pos];
			if (year<90)year=year+2000;else year=year+1900;
			String month = fromBCD2(buffer[pos+1]);
			String day = fromBCD2(buffer[pos+2]);
			String hour = fromBCD2(buffer[pos+3]);
			String minute = fromBCD2(buffer[pos+4]);
			String second = fromBCD2(buffer[pos+5]);
			return day+'.'+month+'.'+year+' '+hour+':'+minute+':'+second;
		}
    
    
}		    