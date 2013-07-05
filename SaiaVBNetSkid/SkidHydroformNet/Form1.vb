'Imports System.Windows.Forms
Imports System.IO
'Imports System.Text
'Imports System.Text.RegularExpressions

Public Class Form1
    ' Objekt voor PC-PLC communicatie
    Dim PLC_Connection As CGIConnect
    ' Antwoord van Web-q uries
    Dim Response As String
    'Files en directory
    Dim DefNaam As String
    Dim DataDir As String = "C:\SkidData\"
    ' Dim FileDatum As String
    Dim TimerBusy As Boolean = False
    Dim ConString As String = "http://192.168.1.150/cgi-bin/"

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' PC-PLC communicatie setup
        PLC_Connection = New CGIConnect
        GetFiles()
        SplitsenData(DefNaam)
        ' SetOrderF()
    End Sub
    Public Sub SetOrderR()
        Dim FileN As String = "OrderValues.exe?room2+dummy+1000"
        Dim W1 As String = "+PDP,,R100,d+PDP,,R101,d+PDP,,R102,d+PDP,,R103,d"
        Dim W2 As String = "+PDP,,R104,d+PDP,,R105,d+PDP,,R106,d+PDP,,R107,d"
        Dim W3 As String = "+PDP,,R108,d+PDP,,R109,d+PDP,,R110,d+PDP,,R111,d"
        Dim W4 As String = "+PDP,,R112,d+PDP,,R113,d+PDP,,R114,d+PDP,,R115,d"
        Dim W5 As String = "+PDP,,R116,d+PDP,,R117,d"

        If PLC_Connection.URLLoad(ConString & FileN & W1 & W2 & W3 & W4 & W4 & W5, Response) <> 0 Then
            ToolStripStatusLabel3.Text = PLC_Connection.dNetCom_ErrorString
        End If
    End Sub
    Public Sub SetOrderF()
        Dim FileN As String = "OrderValues.exe?room1+dummy+1000"
        Dim W1 As String = "+PDP,,F670,b" '1 Heater
        Dim W2 As String = "+PDP,,F671,b+PDP,,F672,b+PDP,,F673,b+PDP,,F674,b+PDP,,F675,b" '5 pompen
        Dim W3 As String = "+PDP,,F684,b+PDP,,F685,b" '2 Agit., koeler 
        Dim W4 As String = "+PDP,,F687,b+PDP,,F688,b+PDP,,F689,b" '3 kleppen
        Dim W5 As String = "+PDP,,F620,b+PDP,,F621,b+PDP,,F637,b" '3 nivo reactor
        Dim W6 As String = "+PDP,,F622,b+PDP,,F623,b" '2 nivo water
        Dim W7 As String = "+PDP,,F624,b+PDP,,F625,b" '2 nivo H2O2
        Dim W8 As String = "+PDP,,F626,b+PDP,,F627,b" '2 nivo FA
        Dim W9 As String = "+PDP,,F610,b+PDP,,F611,b+PDP,,F612,b+PDP,,F613,b+PDP,,F614,b+PDP,,F617,b" 'schakelaars
        '610 Proces aan-uit
        '611 Transfer pomp aan-uit
        '612 Dosing pomp manual
        '613 Dosing pomp automatic
        '614 Klep Rinse aan-uit
        '615 Reset Alarm
        '617 Nood

        If PLC_Connection.URLLoad(ConString & FileN & W1 & W2 & W3 & W4 & W5 & W6 & W7 & W8 & W9, Response) <> 0 Then
            ToolStripStatusLabel3.Text = PLC_Connection.dNetCom_ErrorString
        End If

    End Sub
    Public Sub SetOrderA()
        Dim FileN As String = "OrderValues.exe?room3+dummy+1000"
        Dim W1 As String = "+PDP,,F100,b+PDP,,F101,b+PDP,,F102,b+PDP,,F103,b+PDP,,F104,b"
        Dim W2 As String = "+PDP,,F105,b+PDP,,F106,b+PDP,,F107,b+PDP,,F108,b+PDP,,F109,b"
        Dim W3 As String = "+PDP,,F110,b+PDP,,F111,b+PDP,,F112,b+PDP,,F113,b+PDP,,F114,b"
        Dim W4 As String = "+PDP,,F115,b+PDP,,F116,b+PDP,,F117,b+PDP,,F118,b+PDP,,F119,b"
        Dim W5 As String = "+PDP,,F120,b+PDP,,F121,b"
        If PLC_Connection.URLLoad(ConString & FileN & W1 & W2 & W3 & W4 & W5, Response) <> 0 Then
            ToolStripStatusLabel3.Text = PLC_Connection.dNetCom_ErrorString
        End If

    End Sub

    Public Sub RunTime()
        Dim waardes As String = ""
        Dim flags As String = ""
        Dim alarms As String = ""

        Const PDP As Char = Chr(10)
        Const si As Char = "="c
        Dim delimiters() As Char = {PDP, si}
        'Dim delimiters() As Char = {ControlChars.Cr, ControlChars.Equals)
        Dim delimiters2() As Char = {Chr(10)}

        If PLC_Connection.URLLoad(ConString & "ReadFile.exe?room2", waardes) = 0 Then
            'Label1.Text = waardes
            Dim resA As String() = waardes.Split(delimiters)
            Me.L100.Text = CStr(Val(resA(1) / 10.0)) & " C˚" 'Temperatuur Reaction tank
            Me.L101.Text = CStr(Val(resA(3) / 10.0)) & " C˚" 'Temperatuur H2O2 tank
            Me.L102.Text = CStr(Val(resA(5) / 10.0)) & " C˚" 'Temperatuur FA tank
            Me.L103.Text = "Pressure: " & CStr(Val(resA(7) / 10.0)) & " Bar" 'Water druk
            Me.L104.Text = CStr(Val(resA(9) / 100.0)) & " Bar" 'Druk H2O2 tank
            Me.L105.Text = CStr(Val(resA(11) / 100.0)) & " Bar" 'Druk FA tank
            Me.L106.Text = "Redox Untread: " & CStr(Val(resA(13) / 1.0)) & " mV" 'Redox Untread
            Me.L107.Text = "Redox Tread: " & CStr(Val(resA(15) / 1.0)) & " mV" 'Redox Tread
            Me.L108.Text = "Sewage flow: " & CStr(Val(resA(17) / 1.0)) & " m3/h" 'Sewage flow m3/h
            Me.L109.Text = CStr(Val(resA(19) / 10.0)) & " %" 'Sewage flow %
            Me.L110.Text = CStr(Val(resA(21) / 10.0)) & " %" 'Nivo H2O2 tank
            Me.TrackBar110.Value = Val(resA(21))
            Me.L111.Text = CStr(Val(resA(23) / 10.0)) & " %" 'Nivo FA tank
            Me.TrackBar111.Value = Val(resA(23))
            Me.L112.Text = "Flow: " & CStr(Val(resA(25) / 1.0)) & " mL" 'Flow FA
            Me.L113.Text = "Flow: " & CStr(Val(resA(27) / 1.0)) & " mL" 'Flow H2O2
            Me.L114.Text = CStr(Val(resA(29) / 10.0)) & " %" 'set point dosing pomp H2O2
            Me.L115.Text = CStr(Val(resA(31) / 10.0)) & " %" 'set point dosing pomp FA
            Me.L116.Text = CStr(Val(resA(29) / 10.0)) & " %" 'set point dosing pomp H2O2
            Me.L117.Text = CStr(Val(resA(31) / 10.0)) & " %" 'set point dosing pomp FA
        Else
            '   ToolStripStatusLabel1.Text = PLC_Connection.dNetCom_ErrorString
            ToolStripStatusLabel1.Text = "RunTime error"
            Timer1.Enabled = False
        End If

        If PLC_Connection.URLLoad(ConString & "ReadFile.exe?room1", flags) = 0 Then
            'Label1.Text = flags
            Dim resA As String() = flags.Split(delimiters2)
            If resA(0).Equals("PDP,,F670,b=1" & Chr(13)) Then   'Heater
                Me.P670.BackColor = Color.LightGreen
            Else
                Me.P670.BackColor = Color.Gray
            End If
            If resA(1).Equals("PDP,,F671,b=1" & Chr(13)) Then   'Pomp water
                Me.PompW_O.Visible = True
                Me.PompW_D.Visible = False
            Else
                Me.PompW_O.Visible = False
                Me.PompW_D.Visible = True
            End If
            If resA(2).Equals("PDP,,F672,b=1" & Chr(13)) Then   'Pomp H2O2 1
                Me.PompHO1_O.Visible = True
                Me.PompHO1_D.Visible = False
            Else
                Me.PompHO1_O.Visible = False
                Me.PompHO1_D.Visible = True
            End If
            If resA(3).Equals("PDP,,F673,b=1" & Chr(13)) Then   'Pomp FA 1
                Me.PompFA1_O.Visible = True
                Me.PompFA1_D.Visible = False
            Else
                Me.PompFA1_O.Visible = False
                Me.PompFA1_D.Visible = True
            End If
            If resA(4).Equals("PDP,,F674,b=1" & Chr(13)) Then   'Pomp H2O2 2 en FA 2
                Me.PompHO2_O.Visible = True
                Me.PompHO2_D.Visible = False
                Me.PompFA2_O.Visible = True
                Me.PompFA2_D.Visible = False
            Else
                Me.PompHO2_O.Visible = False
                Me.PompHO2_D.Visible = True
                Me.PompFA2_O.Visible = False
                Me.PompFA2_D.Visible = True
            End If
            ' If resA(5).Equals("PDP,,F675,b=1" & Chr(13)) Then   'Pomp FA 2
            ' Else
            ' End If



            If resA(6).Equals("PDP,,F684,b=1" & Chr(13)) Then   'Agitator
                Me.P684.BackColor = Color.LightGreen
            Else
                Me.P684.BackColor = Color.Gray
            End If
            If resA(7).Equals("PDP,,F685,b=1" & Chr(13)) Then   'Koeler
                Me.P685.BackColor = Color.Green
            Else
                Me.P685.BackColor = Color.Gray
            End If

            If resA(8).Equals("PDP,,F687,b=1" & Chr(13)) Then   'Klep WATER
                Me.KlepW_O.Visible = True
                Me.KlepW_D.Visible = False
            Else
                Me.KlepW_O.Visible = False
                Me.KlepW_D.Visible = True
            End If
            If resA(9).Equals("PDP,,F688,b=1" & Chr(13)) Then   'Klep RINSE
                Me.KlepR_O.Visible = True
                Me.KlepR_D.Visible = False
            Else
                Me.KlepR_O.Visible = False
                Me.KlepR_D.Visible = True
            End If
            If resA(10).Equals("PDP,,F689,b=1" & Chr(13)) Then   'Klep EXTRA
                Me.KlepE_O.Visible = True
                Me.KlepE_D.Visible = False
            Else
                Me.KlepE_O.Visible = False
                Me.KlepE_D.Visible = True
            End If

            If resA(11).Equals("PDP,,F620,b=1" & Chr(13)) Then   'nivo reactor hoog
                Me.P620.BackColor = Color.LightGray
            Else
                Me.P620.BackColor = Color.Red
            End If
            If resA(12).Equals("PDP,,F621,b=1" & Chr(13)) Then   'nivo reactor laag
                Me.P621.BackColor = Color.LightGray
            Else
                Me.P621.BackColor = Color.Red
            End If
            If resA(13).Equals("PDP,,F637,b=1" & Chr(13)) Then   'nivo reactor hoog hoog
                Me.P637.BackColor = Color.LightGray
            Else
                Me.P637.BackColor = Color.Red
            End If
            If resA(14).Equals("PDP,,F622,b=1" & Chr(13)) Then   'nivo water hoog
                Me.P622.BackColor = Color.LightGray
            Else
                Me.P622.BackColor = Color.Red
            End If
            If resA(15).Equals("PDP,,F623,b=1" & Chr(13)) Then   'nivo water laag
                Me.P623.BackColor = Color.LightGray
            Else
                Me.P623.BackColor = Color.Red
            End If
            If resA(16).Equals("PDP,,F624,b=1" & Chr(13)) Then   'nivo H2O2 hoog
                Me.P624.BackColor = Color.LightGray
            Else
                Me.P624.BackColor = Color.Red
            End If
            If resA(17).Equals("PDP,,F625,b=1" & Chr(13)) Then   'nivo H2O2 laag
                Me.P625.BackColor = Color.LightGray
            Else
                Me.P625.BackColor = Color.Red
            End If
            If resA(18).Equals("PDP,,F626,b=1" & Chr(13)) Then   'nivo FA hoog
                Me.P626.BackColor = Color.LightGray
            Else
                Me.P624.BackColor = Color.Red
            End If
            If resA(19).Equals("PDP,,F627,b=1" & Chr(13)) Then   'nivo FA laag
                Me.P627.BackColor = Color.LightGray
            Else
                Me.P627.BackColor = Color.Red
            End If
            'Bedienings paneel
            If resA(20).Equals("PDP,,F610,b=1" & Chr(13)) Then   'sch. Proces Aan-Uit
                Me.Sch_start_A.Visible = True
                Me.Sch_start_U.Visible = False
            Else
                Me.Sch_start_A.Visible = False
                Me.Sch_start_U.Visible = True
            End If
            If resA(21).Equals("PDP,,F611,b=1" & Chr(13)) Then   'sch. Trans. pomp Aan-Uit
                Me.Sch_TR_A.Visible = True
                Me.Sch_TR_U.Visible = False
            Else
                Me.Sch_TR_A.Visible = False
                Me.Sch_TR_U.Visible = True
            End If
            If resA(22).Equals("PDP,,F612,b=1" & Chr(13)) Then   'sch. Dosing pomp Aan-Uit
                Me.Sch_Dos_M.Visible = True
                Me.Sch_Dos_U.Visible = False
                'Me.Sch_Dos_A.Visible = False
            Else
                Me.Sch_Dos_U.Visible = True
                Me.Sch_Dos_M.Visible = False
                'Me.Sch_Dos_A.Visible = False
            End If
            If resA(23).Equals("PDP,,F613,b=1" & Chr(13)) Then   'sch. Dosing pomp Aan-Uit
                Me.Sch_Dos_A.Visible = True
                Me.Sch_Dos_U.Visible = False
                'Me.Sch_Dos_M.Visible = False
            Else
                Me.Sch_Dos_U.Visible = True
                Me.Sch_Dos_A.Visible = False
                'Me.Sch_Dos_M.Visible = False
            End If
            If resA(24).Equals("PDP,,F614,b=1" & Chr(13)) Then   'sch. TRinse klep Aan-Uit
                Me.Sch_Rinse_A.Visible = True
                Me.Sch_Rinse_U.Visible = False
            Else
                Me.Sch_Rinse_A.Visible = False
                Me.Sch_Rinse_U.Visible = True
            End If
        Else
            '   ToolStripStatusLabel1.Text = PLC_Connection.dNetCom_ErrorString
            ToolStripStatusLabel1.Text = "RunTime error"
        End If


        'Alarmen en statussen
            If PLC_Connection.URLLoad(ConString & "ReadFile.exe?room3", alarms) = 0 Then
                'Label4.Text = alarms
                Dim resF As String() = alarms.Split(delimiters2)

            If resF(3).Equals("PDP,,F103,b=1" & Chr(13)) Then   'status
                Me.LabeLStatus.Text = "Rinse water"
                Me.LabeLStatus.ForeColor = Color.Blue
                Me.Led_run_AAN.Visible = False
                Me.Led_run_UIT.Visible = True
            ElseIf resF(1).Equals("PDP,,F101,b=1" & Chr(13)) Then   'status
                Me.LabeLStatus.Text = "Proces running"
                Me.LabeLStatus.ForeColor = Color.Green
                Me.Led_run_AAN.Visible = True
                Me.Led_run_UIT.Visible = False
            ElseIf resF(2).Equals("PDP,,F102,b=1" & Chr(13)) Then   'status
                Me.LabeLStatus.Text = "Dosing pumps running manual"
                Me.LabeLStatus.ForeColor = Color.Green
                Me.Led_run_AAN.Visible = True
                Me.Led_run_UIT.Visible = False
            ElseIf resF(0).Equals("PDP,,F100,b=1" & Chr(13)) Then   'status
                Me.LabeLStatus.Text = "OFF"
                Me.LabeLStatus.ForeColor = Color.Red
                Me.Led_run_AAN.Visible = False
                Me.Led_run_UIT.Visible = True
            ElseIf resF(4).Equals("PDP,,F104,b=1" & Chr(13)) Then   'status
                Me.LabeLStatus.Text = "Dosing pumps OFF"
                Me.LabeLStatus.ForeColor = Color.Red
                Me.Led_run_AAN.Visible = False
                Me.Led_run_UIT.Visible = True
            End If
            'Alarm lamp groot
            If resF(5).Equals("PDP,,F105,b=1" & Chr(13)) Then   'Grotte Alarm
                'Me.P105.BackColor = Color.Red
                Me.Led_alarm_AAN.Visible = True
                Me.Led_alarm_UIT.Visible = False
            Else
                'Me.P105.BackColor = Color.LightGreen
                Me.Led_alarm_AAN.Visible = False
                Me.Led_alarm_UIT.Visible = True
            End If
            'Alarmen
            If resF(6).Equals("PDP,,F106,b=1" & Chr(13)) Then
                Me.P106.BackColor = Color.Red
            Else
                Me.P106.BackColor = Color.MistyRose
            End If
            If resF(7).Equals("PDP,,F107,b=1" & Chr(13)) Then
                Me.P107.BackColor = Color.Red
            Else
                Me.P107.BackColor = Color.MistyRose
            End If
            If resF(8).Equals("PDP,,F108,b=1" & Chr(13)) Then
                Me.P108.BackColor = Color.Red
            Else
                Me.P108.BackColor = Color.MistyRose
            End If
            If resF(9).Equals("PDP,,F109,b=1" & Chr(13)) Then
                Me.P109.BackColor = Color.Red
            Else
                Me.P109.BackColor = Color.MistyRose
            End If
            If resF(10).Equals("PDP,,F110,b=1" & Chr(13)) Then
                Me.P110.BackColor = Color.Red
            Else
                Me.P110.BackColor = Color.MistyRose
            End If
            If resF(11).Equals("PDP,,F111,b=1" & Chr(13)) Then
                Me.P111.BackColor = Color.Red
            Else
                Me.P111.BackColor = Color.MistyRose
            End If
            If resF(12).Equals("PDP,,F112,b=1" & Chr(13)) Then
                Me.P112.BackColor = Color.Red
            Else
                Me.P112.BackColor = Color.MistyRose
            End If
            If resF(13).Equals("PDP,,F113,b=1" & Chr(13)) Then
                Me.P113.BackColor = Color.Red
            Else
                Me.P113.BackColor = Color.MistyRose
            End If
            If resF(14).Equals("PDP,,F114,b=1" & Chr(13)) Then
                Me.P114.BackColor = Color.Red
            Else
                Me.P114.BackColor = Color.MistyRose
            End If
            If resF(15).Equals("PDP,,F115,b=1" & Chr(13)) Then
                Me.P115.BackColor = Color.Red
            Else
                Me.P115.BackColor = Color.MistyRose
            End If
            If resF(16).Equals("PDP,,F116,b=1" & Chr(13)) Then
                Me.P116.BackColor = Color.Red
            Else
                Me.P116.BackColor = Color.MistyRose
            End If
            If resF(17).Equals("PDP,,F117,b=1" & Chr(13)) Then
                Me.P117.BackColor = Color.Red
            Else
                Me.P117.BackColor = Color.MistyRose
            End If
            If resF(18).Equals("PDP,,F118,b=1" & Chr(13)) Then
                Me.P118.BackColor = Color.Red
            Else
                Me.P118.BackColor = Color.MistyRose
            End If
            If resF(19).Equals("PDP,,F119,b=1" & Chr(13)) Then
                Me.P119.BackColor = Color.Red
            Else
                Me.P119.BackColor = Color.MistyRose
            End If
            If resF(20).Equals("PDP,,F120,b=1" & Chr(13)) Then
                Me.P120.BackColor = Color.Red
            Else
                Me.P120.BackColor = Color.MistyRose
            End If
            If resF(21).Equals("PDP,,F121,b=1" & Chr(13)) Then
                Me.P121.BackColor = Color.Red
            Else
                Me.P121.BackColor = Color.MistyRose
            End If
        Else
            '   ToolStripStatusLabel1.Text = PLC_Connection.dNetCom_ErrorString
            ToolStripStatusLabel1.Text = "RunTime error"


        End If
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        If TimerBusy = True Then Exit Sub
        TimerBusy = True
        RunTime()
        TimerBusy = False
    End Sub
    Private Sub GetFiles()
        Dim Parent As DirectoryInfo

        'Current = Directory.GetCurrentDirectory()
        Label2.Text = "Data directory: " & DataDir
        Parent = Directory.GetParent(DataDir)

        Dim di As New IO.DirectoryInfo(DataDir)
        Dim diar1 As IO.FileInfo() = di.GetFiles()
        Dim files() As System.IO.FileInfo = di.GetFiles
        Dim file As System.IO.FileInfo

        'list the names of all files in the specified directory
        ListView2.Columns.Add("Files", 200, HorizontalAlignment.Left)
        ListView2.View = View.Details
        ListView2.GridLines = True

        Dim li As ListViewItem
        For Each file In files
            li = ListView2.Items.Add(file.Name)
            '   li.SubItems.Add(file.Extension)
            '   li.SubItems.Add(file.Length)
            DefNaam = file.Name
            Label3.Text = "File: " & DefNaam
        Next

    End Sub
    Public Sub SplitsenData(ByVal naam As String)
        Dim wholeFile As String
        Dim lineData() As String
        Dim fieldData() As String
        Dim nIndex As Integer = 0
        Dim Gegevens(20) As String

        ListView1.Clear()
        nIndex = 0
        ''ListView1.Columns.Add("File Name", 200, HorizontalAlignment.Left)
        ListView1.View = View.Details
        '' ListView1.LabelEdit = True
        ''ListView1.AllowColumnReorder = True
        ''ListView1.CheckBoxes = True
        ''ListView1.FullRowSelect = True
        ListView1.GridLines = True
        ''ListView1.Sorting = SortOrder.Ascending

        If File.Exists(DataDir & naam) Then

            wholeFile = My.Computer.FileSystem.ReadAllText(DataDir & naam)

            lineData = Split(wholeFile, vbNewLine)
            Dim i As Byte
            Dim leeg As Boolean

            For Each lineOfText As String In lineData
                fieldData = lineOfText.Split(";")
                i = 0
                For Each wordOfText As String In fieldData
                    'ListView1.Items.Add(wordOfText)
                    If nIndex = 0 Then
                        ListView1.Columns.Add(wordOfText, 60, HorizontalAlignment.Left)
                    Else
                        Gegevens(i) = wordOfText
                        i += 1
                    End If
                    If wordOfText = Nothing Then
                        leeg = True
                    Else
                        leeg = False
                    End If

                Next wordOfText
                If nIndex <> 0 And leeg = False Then
                    ListView1.Items.Add(New ListViewItem(New String() {Gegevens(0), Gegevens(1), Gegevens(2), Gegevens(3), Gegevens(4), Gegevens(5), Gegevens(6), Gegevens(7), Gegevens(8), Gegevens(9), Gegevens(10), Gegevens(11), Gegevens(12)}))
                End If
                nIndex = +1
            Next lineOfText
            GetDatumVanFile(DefNaam)
        End If
    End Sub

    Private Sub ListView2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView2.Click
        DefNaam = ListView2.FocusedItem.Text
        SplitsenData(DefNaam)
        Label3.Text = "File: " & DefNaam

    End Sub
    Public Sub GetDatumVanFile(ByVal FileNaam As String)
        Dim dag As String
        Dim maand As String
        Dim jaar As String

        Dim Datum() As String
        Dim strArray1() As String = Split(FileNaam, "_")
        If strArray1(0) = "VALUES" Then
            Datum = Split(strArray1(1), ".CSV")
            If Datum(0).Length = 5 Then
                Datum(0) = "0" & Datum(0)
            End If
            jaar = Mid(Datum(0), 1, 2)
            maand = Mid(Datum(0), 3, 2)
            dag = Mid(Datum(0), 5, 2)
            ToolStripStatusLabel4.Text = "File:" & dag & "-" & maand & "-20" & jaar

        Else
            ToolStripStatusLabel4.Text = "Dat is niet SKID-DATA file"
        End If

    End Sub

    Private Sub OrderToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OrderToolStripMenuItem.Click
        Dim Aantword As String = ""

        Timer1.Enabled = False
        If MessageBox.Show("Do you want write order to PLC.", "Setup order for DATA in PLC", MessageBoxButtons.OKCancel, _
            Nothing, MessageBoxDefaultButton.Button1) = DialogResult.OK Then
            'OK Clicked
            If PLC_Connection.URLLoad(ConString & "readVal.exe?PDP,,R100,d", Aantword) = 0 Then
                'SetOrderR()
                'SetOrderF()
                'SetOrderA()
            Else
                MsgBox("No connection with device.", "Connection")
            End If
        End If
        Timer1.Enabled = True
    End Sub

    Private Sub ToolStripButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButton1.Click
        Dim Aantword As String = ""

        If TimerBusy = True Then Exit Sub
        TimerBusy = True

        If PLC_Connection.URLLoad(ConString & "readVal.exe?PDP,,R100,d", Aantword) = 0 Then

        Else
            MsgBox(PLC_Connection.dNetCom_ErrorString)
        End If
        TimerBusy = False

    End Sub

    Private Sub But_res_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles But_res_D.MouseDown
        'Reset Alarmen
        Dim Aantword As String = ""

        If TimerBusy = True Then Exit Sub
        TimerBusy = True
        If PLC_Connection.URLLoad(ConString & "writeVal.exe?PDP,,F615,d+1", Aantword) = 0 Then
        Else
            MsgBox(PLC_Connection.dNetCom_ErrorString)
        End If
        But_res_D.Visible = False
        But_res_U.Visible = True
        TimerBusy = False

    End Sub

    Private Sub But_res_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles But_res_D.MouseUp
        'Reset Alarmen
        Dim Aantword As String = ""

        If TimerBusy = True Then Exit Sub
        TimerBusy = True
        If PLC_Connection.URLLoad(ConString & "writeVal.exe?PDP,,F615,d+0", Aantword) = 0 Then
        Else
            MsgBox(PLC_Connection.dNetCom_ErrorString)
        End If
        But_res_U.Visible = False
        But_res_D.Visible = True
        TimerBusy = False

    End Sub

    Private Sub PictureBox2_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles But_resC_D.MouseDown
        'Reset Alarmen
        Dim Aantword As String = ""

        If TimerBusy = True Then Exit Sub
        TimerBusy = True
        If PLC_Connection.URLLoad(ConString & "writeVal.exe?PDP,,F615,d+1", Aantword) = 0 Then
        Else
            MsgBox(PLC_Connection.dNetCom_ErrorString)
        End If
        But_resC_D.Visible = False
        But_resC_U.Visible = True
        TimerBusy = False

    End Sub

    Private Sub PictureBox2_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles But_resC_D.MouseUp
        'Reset Alarmen
        Dim Aantword As String = ""

        If TimerBusy = True Then Exit Sub
        TimerBusy = True
        If PLC_Connection.URLLoad(ConString & "writeVal.exe?PDP,,F615,d+0", Aantword) = 0 Then
        Else
            MsgBox(PLC_Connection.dNetCom_ErrorString)
        End If
        But_resC_U.Visible = False
        But_resC_D.Visible = True
        TimerBusy = False

    End Sub
    Private Sub FTPToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles FTPToolStripMenuItem.Click
        SiteBeheer.Show()
    End Sub

    Private Sub OrderPLCToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OrderPLCToolStripMenuItem.Click
        Dim Aantword As String = ""

        Timer1.Enabled = False
        If MessageBox.Show("Do you want write order to PLC.", "Setup order for DATA in PLC", MessageBoxButtons.OKCancel, _
            Nothing, MessageBoxDefaultButton.Button1) = DialogResult.OK Then
            'OK Clicked
            If PLC_Connection.URLLoad(ConString & "readVal.exe?PDP,,R100,d", Aantword) = 0 Then
                SetOrderR()
                SetOrderF()
                SetOrderA()
            Else
                MsgBox("No connection with device.", "Connection")
            End If
        End If
        Timer1.Enabled = True

    End Sub

 
End Class
