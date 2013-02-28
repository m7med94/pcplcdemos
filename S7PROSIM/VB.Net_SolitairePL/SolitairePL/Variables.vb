Module Variables
    'LibNoDave
    Public Const S7_Bit = 1
    Public Const S7_Byte = 2
    Public Const S7_Word = 3
    Public Const S7_DoubleWord = 4
 
 
    'XML opnemers
    Public NameOpnXmlFile As String = "OpnemersIni.xml"
    Public PNum(101) As Integer 'numDB
    Public PAdr(101) As Integer 'adres parameter
    'XML switches
    Public NameSwXmlFile As String = "SwIni.xml"
    Public Sw(100) As Byte

    'Data
    'Public pDataO(5) As Integer
    'Public pDataOR(5) As Double
    Public pDataB(2) As Byte     'Uitgangen
    'Public pDataIn(2) As Byte 
    'Public pDataEnc(5) As Integer
    Public pDataInW(100) As Byte 'ingangen array 100 x 8 = 800 ingangen 0.0 - 999.7
    Public pDataCons(10) 'Uitgangen
    'tbv analoge joystick
    Public pDataJoy(2) As Short
    Public pDataAna(3) As Short


    Public JoyP1 As Byte = 0
    Public JoyP2 As Byte = 0
    Public JoyP3 As Byte = 0
    Public JoyP4 As Byte = 0
    Public JoyC1 As Byte = 0
    Public JoyC2 As Byte = 0
    Public JoyC3 As Byte = 0
    Public JoyC4 As Byte = 0
    Public JoyE1 As Byte = 0
    Public JoyE2 As Byte = 0
    Public JoyE3 As Byte = 0
    Public JoyE4 As Byte = 0

End Module
