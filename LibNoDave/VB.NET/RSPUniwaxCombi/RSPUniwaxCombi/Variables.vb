Module Variables
    'LibNoDave
    Public Const S7_Bit = 1
    Public Const S7_Byte = 2
    Public Const S7_Word = 3
    Public Const S7_DoubleWord = 4
    'display
    Public sm_belt As Integer = 5
    Public sm_scr02 As Integer = 10
    Public sm_scr04 As Integer = 15
    Public sm_scr06 As Integer = 20
    Public sm_scr08 As Integer = 25
    Public joystickW As Integer = 40
    'LibNoDave connections
    Public fds As libnodave.daveOSserialType
    Public di As libnodave.daveInterface
    Public dc As libnodave.daveConnection
    Public res As Integer
    Public buf(1000) As Byte
    'Appl
    Public Connection As Boolean = False
    Public ConnectionSim As Boolean = False
    Public DriveMode As Boolean = False '0-SIM, 1- NoDave
    Public SimOn As Boolean = False '0-Off, 1- NoDave sim On
    'XML
    Public NameXmlFile As String = "RSPConnIni.xml"
    Public Protocol As String
    Public IP As String = "192.168.1.100"
    Public Port As String = "COM1"
    Public Speed As String = "2"
    Public rack As Integer = 0
    Public slot As Integer = 2
    Public ConnectionsName As String = "Default"

    Public useBaud As String = "38400"
    Public Partners As Integer

    'Data
    Public pDataO(5) As Integer
    Public pDataOR(5) As Double
    Public pDataB(2) As Byte
    Public pDataIn(2) As Byte
    Public pDataEnc(5) As Integer
    Public pDataInW(4) As Byte


End Module
