Attribute VB_Name = "ConnectPCD"
Option Explicit

Const PCD_CHANNELSIZE = 64
Const PCD_SECTIONSIZE = 64
Const PCD_DEVICESIZE = 64
Const PCD_PHONESIZE = 64
Const PCD_LOCSIZE = 64

Const PCD_OK As Long = 0
Const PCD_NAK As Long = 1
Const PCD_NORESP As Long = 6


Private Type T_REQSTATION
    Station     As Integer  '@Field S-Bus station number (1 byte long)
    TcpPort     As Integer  '@Field Tcp port number
    IpAddress   As Long
End Type

Private Type T_PCDOPENDATA
    Port        As Integer  '@Field Port number TAPI,RAS,COMx,SOCKET <t enumComPort>            short
    Device      As Integer  '@Field COM port number or Socket Port.                             short
    bPguMode    As Long     '@Field TRUE=using PGU mode (S-BUS/P800)                            BOOL
    SbusMode    As Long     '@Field S-BUS mode: <t enumSBusModes>                               DWORD
    Protocol    As Long     '@Field Type of protocol, <t enumProtocol>                          DWORD
    baudrate    As Long     '@Field 110..115200                                                 DWORD
    TsDelay     As Long     '@Field S-BUS training sequence delay, mS                           DWORD
    TnDelay     As Long     '@Field S-BUS turnaround time, mS                                   DWORD
    Timeout     As Long     '@Field S-BUS timeout in mS                                         DWORD
    BreakLen    As Long     '@Field S-BUS break length in chars, PCD_BREAK mode                 DWORD
    UartFifoLen As Long     '@Field Number of characters in UART Fifo buffer                    DWORD
                            '(to wait for RTS) if this value is 0, the driver will handle the togging of RTS
                            'automatically (NT/2000 only)
    bDontClose  As Long     '@Field Do not close the port.                                      BOOL
    bPortOpen   As Long     '@Field The port is open.                                           BOOL
    bConnected  As Long     '@Field The port is connected with the function                     BOOL
                            'PcdConnectChannel connection
    dwType      As Long     '@Field Channel type: <t ChannelTypesTag>.                          DWORD
    Channel(PCD_CHANNELSIZE - 1) As Byte  '@Field Channel name 'PGU'.                           CHAR
    Section(PCD_SECTIONSIZE - 1) As Byte  '@Field Name of the section in INI file or Registry   CHAR
    ModeToTry   As Long     '@Field Mode to connect: <t enumSBusModesToTry>                     DWORD
    Cpu         As Long     '@Field CPU number: 0..6                                            DWORD
    Station     As Long     '@Field S-BUS station number: 0..254                                DWORD
    bAutoStn    As Long     '@Field TRUE=send "read S-BUS station" telegram                     BOOL
    Retry       As Long     '@Field Retry count, default = 3                                    DWORD
    'for TAPI, RAS
    DeviceName(PCD_DEVICESIZE - 1) As Byte '@Field TAPI, RAS Modem name                         CHAR
    'TAPI connection
    bUseModem   As Long     '@Field Use dialing (TAPI modem).                                   BOOL
    bAutoAnswer As Long     '@Field Open the TAPI port in AutoAnswer mode.                      BOOL
    PhoneNumber(PCD_PHONESIZE - 1) As Byte '@Field Phone number for TAPI or RAS dialing.        CHAR
    CountryCode As Long     '@Field Country code (Switzerland 41).                              DWORD
    AreaCode    As Long     '@Field Area code (Morat 26).                                       DWORD
    Location(PCD_LOCSIZE - 1) As Byte '@Field Location name.                                    CHAR
    bUseDialing As Long     '@Field Use dialing (translate phone number).                       BOOL
    DialRetry   As Long     '@Field Number of retry when dialing.                               DWORD
    'Bues Connection
    bBues       As Long     '@Field Bues flag                                                   BOOL
    'password dialog box parent window
    hPWDlgParentWnd As Long '@Field Parent window for password dialog box <t PcdSetParentWnd>.  HWND
    ReqStation  As T_REQSTATION     '@Field information from Station for SOCKET <t REQSTATION>  REQSTATION
    'JPE 09.10.00 14:53
    Reserved(76 - 1) As Byte  '@Field Reserved for future extension and padding                   BYTE
End Type

Dim PcdOpenData     As T_PCDOPENDATA
Dim PcdConn         As Long


Private Declare Function PcdConnectChannel Lib "SCommDll" _
    (ByRef PcdConn As Long, ByRef PcdOpenData As T_PCDOPENDATA, ByVal flags As Long, ByVal hWnd As Long) _
    As Long
    
Private Declare Function PcdDisconnectChannel Lib "SCommDll" _
    (ByVal PcdConn As Long, ByVal flags As Long, ByVal hWnd As Long) _
    As Long

Private Declare Function PcdConnectionDialog Lib "SCommUsr" _
    (ByVal hWnd As Long, ByRef PcdOpenData As T_PCDOPENDATA) _
    As Long
    
Public Declare Function PcdRdChanSetupFromIni Lib "SCommDll.dll" _
    (ByVal IniFile As String, ByVal Topic As String, ByRef PcdOpenData As T_PCDOPENDATA) _
    As Long
    
Private Declare Function PcdWrChanSetupToIni Lib "SCommDll" _
    (ByVal IniFile As String, ByVal Topic As String, ByRef PcdOpenData As T_PCDOPENDATA) _
    As Long
    
Private Declare Function PcdRdVersion Lib "SCommDll" _
    (ByVal PcdConn As Long, ByVal version As String) _
    As Long

Private Declare Function PcdIEEEToFFP Lib "SCommDll" (ByVal f As Single) As Long
Private Declare Function PcdFFPToIEEE Lib "SCommDll" (ByVal v As Long) As Single
   
Private Declare Function PcdRdRTC Lib "SCommDll" _
    (ByVal PcdConn As Long, ByVal Typ As Long, ByVal Add As Long, ByVal cnt As Long, ByRef data As Long) _
    As Long
    
Private Declare Function PcdWrRTC Lib "SCommDll" _
    (ByVal PcdConn As Long, ByVal Typ As Long, ByVal Add As Long, ByVal cnt As Long, ByRef data As Long) _
    As Long
 
Private Declare Function PcdRdIOF Lib "SCommDll" _
    (ByVal PcdConn As Long, ByVal Typ As Long, ByVal Add As Long, ByVal cnt As Long, ByRef FlagsT As Byte) _
    As Long

Private Declare Function PcdWrOF Lib "SCommDll" _
    (ByVal PcdConn As Long, ByVal Typ As Long, ByVal Add As Long, ByVal cnt As Long, ByRef FlagsT As Byte) _
    As Long

Private Declare Function PcdMessage Lib "SCommDll" _
    (ByVal Status As Long) _
    As Byte
'---------------------------------------
Private Declare Function PcdGetPortName Lib "SCommDll" _
    (ByRef PcdOpenData As T_PCDOPENDATA, ByRef lpszName As Byte, ByVal MaxNameSize As Long) _
    As Long
    
Private Declare Function PcdGetBaudrateName Lib "SCommDll" _
    (ByRef PcdOpenData As T_PCDOPENDATA, ByRef lpszName As Byte, ByVal MaxNameSize As Long) _
    As Long

Private Declare Function PcdComUnloadDrv Lib "SCommDll" _
    (ByVal bClose As Boolean) _
    As Long

Public Function connect() As String

    Dim i As Integer
    Dim Status As Long
    Dim str1   As String
    Dim str2   As String
    Dim Buffer(32) As Byte
       
    Status = PcdRdChanSetupFromIni("Test.ini", "MyTestApp", PcdOpenData)
    Status = PcdConnectChannel(PcdConn, PcdOpenData, 0, 1)
    If Status = 0 Then
        Status = PcdGetPortName(PcdOpenData, Buffer(0), 32)
        For i = 0 To 31
            If Buffer(i) > 47 Then
                If Buffer(i) < 122 Then
                    str1 = str1 + Chr(Buffer(i))
                End If
            End If
        Next i
        Status = PcdGetBaudrateName(PcdOpenData, Buffer(0), 32)
        For i = 0 To 31
            If Buffer(i) > 47 Then
                If Buffer(i) < 122 Then
                    str2 = str2 + Chr(Buffer(i))
                End If
            End If
        Next i
        connect = "Connection with " + str1 + ", " + str2 + " bps."
        connection = PcdOpenData.bConnected
    Else
        connect = "Disconnected"
    End If
    Message = connect
End Function
Public Function disconnect() As String
    
    Dim Status As Long
    Dim str    As String
    
    Status = PcdRdChanSetupFromIni("Test.ini", "MyTestApp", PcdOpenData)
    Status = PcdDisconnectChannel(PcdConn, 0, 0)
    If Status = 0 Then
        disconnect = "Disconnected."
    Else
        disconnect = "Disconnect failed."
    End If
    Message = disconnect
    connection = PcdOpenData.bConnected
    'Status = PcdComUnloadDrv(True)

End Function

Public Function ShowStatus() As String
    'ShowStatus = LastOpr + str(PcdMessage(Status))

End Function

 Public Function ConnectionSetings() As String
    Dim Status As Long
    
    Status = PcdRdChanSetupFromIni("Test.ini", "MyTestApp", PcdOpenData)
    Status = PcdConnectionDialog(0, PcdOpenData)
    If Status = 1 Then
        Status = PcdWrChanSetupToIni("Test.ini", "MyTestApp", PcdOpenData)
    End If
    ConnectionSetings = "Settings"
End Function

Public Function UnloadDrv() As Long
    Dim Status As Long
    
    Status = ConnectPCD.PcdDisconnectChannel(PcdConn, 0, 0)
    Status = PcdComUnloadDrv(True)
    UnloadDrv = Status
End Function

Public Function ReadFlags(ByVal Adres As Integer, ByVal Number As Integer) As Long
    Dim Status As Long
    
    Status = 99
    Status = PcdRdIOF(PcdConn, Asc("F"), Adres, Number, flagsA(0))
      
    ReadFlags = Status
End Function

Public Function WriteFlag(ByVal Operation As Byte, ByVal Adres As Integer) As Long
   Dim Status As Long
    
    Status = 99
    Select Case Operation
    Case 0
         Status = PcdWrOF(PcdConn, Asc("F"), Adres, 1, 48)
    Case 1
         Status = PcdWrOF(PcdConn, Asc("F"), Adres, 1, 49)
    Case 2
         Status = PcdRdIOF(PcdConn, Asc("F"), Adres, 1, flagsK(0))
    If Status = 0 Then
        If flagsK(0) = 48 Then
         Status = PcdWrOF(PcdConn, Asc("F"), Adres, 1, 49)
        Else
         Status = PcdWrOF(PcdConn, Asc("F"), Adres, 1, 48)
        End If
    End If
    End Select
    WriteFlag = Status
End Function

Public Function ReadRegs(ByVal Adres As Integer, ByVal Number As Integer) As Long
    Dim Status As Long
    
    Status = PcdRdRTC(PcdConn, Asc("R"), Adres, Number, Regs(0))
    ReadRegs = Status
End Function

Public Function WriteRegs(ByVal Adres As Integer, ByVal Number As Integer) As Long
    Dim Status As Long
    
    Status = PcdWrRTC(PcdConn, Asc("R"), Adres, Number, Regs(0))
    WriteRegs = Status
End Function

