Module Variables
    'S7
    Public Const S7_Bit = 1
    Public Const S7_Byte = 2
    Public Const S7_Word = 3
    Public Const S7_DoubleWord = 4
    'XML connection
    Public NameXmlFile As String = "ConnIni.xml"
    Public Protocol As String
    Public IP As String = "192.168.1.100"
    Public Port As String = "COM1"
    Public Speed As String = "2"
    Public rack As Integer = 0
    Public slot As Integer = 2
    Public ConnectionsName As String = "Default"
    Public No As Boolean = False

    Public useBaud As String = "38400"
    Public Partners As Integer

    'XML opnemers
    Public NameOpnXmlFile As String = "OpnemersIni.xml"
    'XML switches
    Public NameSwXmlFile As String = "SwIni.xml"
    Public Sw(100) As Byte

    'Data
    'Public pDataB(2) As Byte     'Uitgangen
    'Public pDataInW(100) As Byte 'ingangen array 100 x 8 = 800 ingangen 0.0 - 999.7
    Public pDataCons(10) 'Uitgangen
    'tbv analoge joystick
    Public pDataJoy(2) As Short
    Public pDataJoy2(1) As Short
    Public pDataAna(1) As Short

End Module
