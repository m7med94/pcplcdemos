Module Variables
    Public fds As libnodave.daveOSserialType
    Public di As libnodave.daveInterface
    Public dc As libnodave.daveConnection
    Public res As Integer
    Public buf(1000) As Byte
    Public localMPI As Integer = 0
    Public rack As Integer = 0
    Public slot As Integer = 2
    Public plcMPI As Integer = 2
    Public Connection As Boolean = False
    Public IP As String = "192.168.1.100"

End Module
