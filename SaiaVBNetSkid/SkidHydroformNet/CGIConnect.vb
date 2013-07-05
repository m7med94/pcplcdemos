Imports System.IO
Imports System.Net
Imports System.Text

Public Class CGIConnect

    Private Shared pdNetCom_ErrorString As String       ' von .net generierte Fehlermeldungen
    Private Shared pdNetCom_ErrorMessage As String

    ' ---------------------------------------------------------------------------------
    ' Properties
    ' ---------------------------------------------------------------------------------

    ' .net Foutbericht (Text)
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

    ' Download Text van URL
    ' ---------------------
    ' Downloaden van een bestand (text / html) van de opgegeven URL en retourneert de ontvangen
    ' Inhoud van het bestand Response (String)

    Function URLLoad(ByVal URL As String, _
                     ByRef Response As String) As Integer

        ' Voorwerpen voor web-toegang definiëren
        Dim wReq As WebRequest
        Dim wResp As WebResponse
 
        Try
            wReq = WebRequest.Create(URL) ' Toegang tot de site

            wReq.Proxy = WebProxy.GetDefaultProxy ' Standaard proxyserver
            wReq.Proxy.Credentials = System.Net.CredentialCache.DefaultCredentials

            wResp = wReq.GetResponse() ' Antwoord Extractie (Stream)
        Catch ex As Exception
            ' Error Handling
            pdNetCom_ErrorMessage = ex.Message
            pdNetCom_ErrorString = ex.ToString
            Return -1
        End Try

        ' Stream objecten voor het bepalen van de behandeling
        Dim sr As New StreamReader(wResp.GetResponseStream(), Encoding.ASCII)
        Dim strSource As New StringBuilder("")
        Dim strTemp As String = ""

        'Stream lezen en op te slaan in string
        strTemp = sr.ReadLine()
        While Not (strTemp Is Nothing)
            strSource.Append((strTemp + ControlChars.Cr + ControlChars.Lf))
            strTemp = sr.ReadLine()
        End While
        Response = strSource.ToString

        'Objecten vrijgegeven en retourcode set
        wResp.Close()
        sr.Close()
        Return 0

    End Function

End Class
