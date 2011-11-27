Imports System.IO
Imports System.Net
Imports System.Text

Public Class CGIConnect

    ' ---------------------------------------------------------------------------------
    ' Daten
    ' ---------------------------------------------------------------------------------

    ' Fehlerbehandlung
    ' ----------------
    Private Shared pdNetCom_ErrorString As String       ' von .net generierte Fehlermeldungen
    Private Shared pdNetCom_ErrorMessage As String


    ' ---------------------------------------------------------------------------------
    ' Properties
    ' ---------------------------------------------------------------------------------

    ' .net Fehlermeldung (Text)
    ReadOnly Property dNetCom_ErrorString() As String
        Get
            Return pdNetCom_ErrorString
        End Get
    End Property

    ' .net Fehlermeldung (Code)
    ReadOnly Property dNetCom_ErrorMessage() As String
        Get
            Return pdNetCom_ErrorMessage
        End Get
    End Property


    ' ---------------------------------------------------------------------------------
    ' Methoden
    ' ---------------------------------------------------------------------------------
    ' Returnä-Code für alle Mehtoden:
    '  0 --> ok
    ' -1 --> Fehler, detailierte Info in Properties

    ' Download Text von URL
    ' ---------------------
    ' Loads a file (text / html) from the specified URL and the received reply
    ' Contents of the file to Response (String)

    Function URLLoad(ByVal URL As String, ByRef Response As String) As Integer
        ' Defining Object für Web Access
        Dim wReq As WebRequest
        Dim wResp As WebResponse

        Try
            ' Loads a file (text / html) from the specified URL and the received reply
            wReq = WebRequest.Create("http://cgi-demo.saia-sps.dyndns.org/cgi-bin/readVal.exe?PDP,,MW100,d")          
            wReq.Proxy = WebProxy.GetDefaultProxy		' Default Proxy-Server 
            wReq.Proxy.Credentials = System.Net.CredentialCache.DefaultCredentials ' Read response (Stream)          
            wResp = wReq.GetResponse()      
		Catch ex As Exception
            pdNetCom_ErrorMessage = ex.Message
            pdNetCom_ErrorString = ex.ToString
            Return -1
        End Try

        ' Objekte für Stream-Behandlung definieren
        Dim sr As New StreamReader(wResp.GetResponseStream(), Encoding.ASCII)
        Dim strSource As New StringBuilder("")
        Dim strTemp As String = ""
        ' Contents of the file to Response (String)n
		
        strTemp = sr.ReadLine()
        While Not (strTemp Is Nothing)
            strSource.Append((strTemp + ControlChars.Cr + ControlChars.Lf))
            strTemp = sr.ReadLine()
        End While
        Response = strSource.ToString

        wResp.Close()
        sr.Close()
        Return 0

    End Function


End Class
