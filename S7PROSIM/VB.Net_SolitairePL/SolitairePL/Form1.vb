Imports System.Xml
Public Class Form1
    Private WithEvents S7ProSim As New S7PROSIMLib.S7ProSim
    Private Li As Boolean = False
    Private Ce As Boolean = False
    Private Ri As Boolean = False
    Private Wa As Boolean = False
    Private Dw As Boolean = False
    Private Up As Boolean = False
    Private ConnectionSim As Boolean = True

    Private Sub UpdateGUI()
        'PLCSIM
        S7ProSim.WriteInputPoint(1521, 1, ESD.Checked)
        If ESD.Checked Then ESD.BackColor = Color.Maroon Else ESD.BackColor = Color.Red

        S7ProSim.WriteInputPoint(1, 1, P0.Checked)
        S7ProSim.WriteInputPoint(1, 2, P1.Checked)
        S7ProSim.WriteInputPoint(1, 3, P2.Checked)
        S7ProSim.WriteInputPoint(1, 4, P3.Checked)
        S7ProSim.WriteInputPoint(1, 5, P4.Checked)
        S7ProSim.WriteInputPoint(1, 6, P5.Checked)
        S7ProSim.WriteInputPoint(41, 0, P6.Checked)
        S7ProSim.WriteInputPoint(41, 1, P7.Checked)
        S7ProSim.WriteInputPoint(41, 2, P8.Checked)
        S7ProSim.WriteInputPoint(81, 0, P9.Checked)
        S7ProSim.WriteInputPoint(81, 1, P10.Checked)
        S7ProSim.WriteInputPoint(81, 2, P11.Checked)
        S7ProSim.WriteInputPoint(81, 3, P12.Checked)
        S7ProSim.WriteInputPoint(122, 1, P18.Checked)
        S7ProSim.WriteInputPoint(122, 3, P14.Checked)
        S7ProSim.WriteInputPoint(122, 4, P15.Checked)
        S7ProSim.WriteInputPoint(122, 5, P16.Checked)
        S7ProSim.WriteInputPoint(120, 5, P16A.Checked)
        S7ProSim.WriteInputPoint(123, 0, P17.Checked)

        S7ProSim.WriteInputPoint(123, 3, P53.Checked)
        S7ProSim.WriteInputPoint(123, 4, P52.Checked)
        S7ProSim.WriteInputPoint(123, 5, P63.Checked)
        S7ProSim.WriteInputPoint(123, 6, P64.Checked)
        S7ProSim.WriteInputPoint(164, 1, P19.Checked)
        S7ProSim.WriteInputPoint(164, 2, P20.Checked)
        S7ProSim.WriteInputPoint(164, 3, P21.Checked)
        S7ProSim.WriteInputPoint(164, 4, P22.Checked)
        S7ProSim.WriteInputPoint(164, 5, P23.Checked)

        S7ProSim.WriteInputPoint(164, 6, P56.Checked)
        S7ProSim.WriteInputPoint(164, 7, P55.Checked)
        S7ProSim.WriteInputPoint(165, 0, P54.Checked)

        S7ProSim.WriteInputPoint(164, 5, P23.Checked)
        S7ProSim.WriteInputPoint(201, 2, P26.Checked)
        S7ProSim.WriteInputPoint(201, 3, P27.Checked)
        S7ProSim.WriteInputPoint(201, 5, P29.Checked)
        S7ProSim.WriteInputPoint(201, 6, P30.Checked)


        If P0.Checked Then P0.BackColor = Color.Lime Else P0.BackColor = Color.Green
        If P1.Checked Then P1.BackColor = Color.Lime Else P1.BackColor = Color.Green
        If P2.Checked Then P2.BackColor = Color.Lime Else P2.BackColor = Color.Green
        If P3.Checked Then P3.BackColor = Color.Lime Else P3.BackColor = Color.Green
        If P4.Checked Then P4.BackColor = Color.Lime Else P4.BackColor = Color.Green
        If P5.Checked Then P5.BackColor = Color.Lime Else P5.BackColor = Color.Green
        If P6.Checked Then P6.BackColor = Color.Lime Else P6.BackColor = Color.Green
        If P7.Checked Then P7.BackColor = Color.Lime Else P7.BackColor = Color.Green
        If P8.Checked Then P8.BackColor = Color.Lime Else P8.BackColor = Color.Green
        If P9.Checked Then P9.BackColor = Color.Lime Else P9.BackColor = Color.Green
        If P10.Checked Then P10.BackColor = Color.Lime Else P10.BackColor = Color.Green
        If P11.Checked Then P11.BackColor = Color.Lime Else P11.BackColor = Color.Green
        If P12.Checked Then P12.BackColor = Color.Lime Else P12.BackColor = Color.Green
        If P13.Checked Then P13.BackColor = Color.Lime Else P13.BackColor = Color.Green
        If P14.Checked Then P14.BackColor = Color.Lime Else P14.BackColor = Color.Green
        If P15.Checked Then P15.BackColor = Color.Lime Else P15.BackColor = Color.Green
        If P16.Checked Then P16.BackColor = Color.Lime Else P16.BackColor = Color.Green
        If P17.Checked Then P17.BackColor = Color.Lime Else P17.BackColor = Color.Green
        If P18.Checked Then P18.BackColor = Color.Lime Else P18.BackColor = Color.Green
        If P19.Checked Then P19.BackColor = Color.Lime Else P19.BackColor = Color.Green
        If P20.Checked Then P20.BackColor = Color.Lime Else P20.BackColor = Color.Green
        If P21.Checked Then P21.BackColor = Color.Lime Else P21.BackColor = Color.Green
        If P22.Checked Then P22.BackColor = Color.Lime Else P22.BackColor = Color.Green
        If P23.Checked Then P23.BackColor = Color.Lime Else P23.BackColor = Color.Green
        If P25.Checked Then P25.BackColor = Color.Lime Else P25.BackColor = Color.Green
        If P26.Checked Then P26.BackColor = Color.Lime Else P26.BackColor = Color.Green
        If P27.Checked Then P27.BackColor = Color.Lime Else P27.BackColor = Color.Green
        If P29.Checked Then P29.BackColor = Color.Lime Else P29.BackColor = Color.Green
        If P30.Checked Then P30.BackColor = Color.Lime Else P30.BackColor = Color.Green
        If P53.Checked Then P53.BackColor = Color.Lime Else P53.BackColor = Color.Green
        If P54.Checked Then P54.BackColor = Color.Lime Else P54.BackColor = Color.Green
        If P55.Checked Then P55.BackColor = Color.Lime Else P55.BackColor = Color.Green
        If P56.Checked Then P56.BackColor = Color.Lime Else P56.BackColor = Color.Green
        If P63.Checked Then P63.BackColor = Color.Lime Else P63.BackColor = Color.Green
        If P64.Checked Then P64.BackColor = Color.Lime Else P64.BackColor = Color.Green

    End Sub

    Private Sub Form1_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        WriteSw()
    End Sub

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        S7ProSim.Connect()
        'ToolStripStatusLabel1.Text = "PLCSIM connected "
        'inschakelen Scan Mode ContinuousScan
        S7ProSim.SetScanMode(1)
        LoadSwData()
        initConsole()
    End Sub
    Private Sub LoadSwData()
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList
        Dim name As String = "Default"
        Dim i As Integer
        If Not System.IO.File.Exists(NameSwXmlFile) Then
            NewSwXMLDoc()
        End If
        doc.Load(NameSwXmlFile)
        m_SettList = doc.SelectNodes("/Console/Settings")
        For Each m_node In m_SettList
            Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
            If n_Attribute = name Then
                For i = 0 To 50
                    Sw(i) = CByte(m_node.ChildNodes.Item(i).InnerText)
                Next
            End If
        Next
    End Sub
    Private Sub WriteSw()
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList
        Dim name As String = "Default"
        Dim i As Integer
        If Not System.IO.File.Exists(NameSwXmlFile) Then
            NewSwXMLDoc()
        End If

        doc.Load(NameSwXmlFile)
        m_SettList = doc.SelectNodes("/Console/Settings")
        For Each m_node In m_SettList
            Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
            If n_Attribute = Name Then
                For i = 0 To 50
                    m_node.ChildNodes.Item(i).InnerText = CStr(Sw(i))
                Next
            End If
        Next

        'MessageBox.Show(doc.OuterXml)
        doc.Save(NameSwXmlFile)

    End Sub
    Private Sub NewSwXMLDoc()
        Dim doc As New Xml.XmlDocument
        doc = New XmlDataDocument
        doc.LoadXml("<?xml version=""1.0"" encoding=""utf-8""?>" + _
            "<Console>" + _
            "<Settings name='Default'>" & _
            "<sw0>1</sw0>" + _
            "<sw1>1</sw1>" + _
            "<sw2>1</sw2>" + _
            "<sw3>3</sw3>" + _
            "<sw4>3</sw4>" + _
            "<sw5>1</sw5>" + _
            "<sw6>1</sw6>" + _
            "<sw7>1</sw7>" + _
            "<sw8>1</sw8>" + _
            "<sw9>1</sw9>" + _
            "<sw10>1</sw10>" + _
            "<sw11>1</sw11>" + _
            "<sw12>1</sw12>" + _
            "<sw13>1</sw13>" + _
            "<sw14>1</sw14>" + _
            "<sw15>1</sw15>" + _
            "<sw16>1</sw16>" + _
            "<sw17>1</sw17>" + _
            "<sw18>1</sw18>" + _
            "<sw19>2</sw19>" + _
            "<sw20>2</sw20>" + _
            "<sw21>2</sw21>" + _
            "<sw22>2</sw22>" + _
            "<sw23>2</sw23>" + _
            "<sw24>1</sw24>" + _
            "<sw25>1</sw25>" + _
            "<sw26>3</sw26>" + _
            "<sw27>3</sw27>" + _
            "<sw28>1</sw28>" + _
            "<sw29>3</sw29>" + _
            "<sw30>1</sw30>" + _
            "<sw31>3</sw31>" + _
            "<sw32>3</sw32>" + _
            "<sw33>1</sw33>" + _
            "<sw34>1</sw34>" + _
            "<sw35>1</sw35>" + _
            "<sw36>2</sw36>" + _
            "<sw37>1</sw37>" + _
            "<sw38>1</sw38>" + _
            "<sw39>2</sw39>" + _
            "<sw40>1</sw40>" + _
            "<sw41>1</sw41>" + _
            "<sw42>2</sw42>" + _
            "<sw43>2</sw43>" + _
            "<sw44>1</sw44>" + _
            "<sw45>1</sw45>" + _
            "<sw46>1</sw46>" + _
            "<sw47>1</sw47>" + _
            "<sw48>1</sw48>" + _
            "<sw49>1</sw49>" + _
            "<sw50>1</sw50>" + _
            "<sw51>1</sw51>" + _
            "</Settings>" & _
            "</Console>")
        doc.Save(NameSwXmlFile)
    End Sub
    Public Sub initConsole()
        SwIC_sycle(Sw(1))
        SwLC_sycle(Sw(2))
        SwSB12_sycle(Sw(3))
        SwSB34_sycle(Sw(4))
        SwPS12_sycle(Sw(5))
        SwIC_mode(Sw(6))
        SwLC_mode(Sw(7))
        SwSB12_mode(Sw(8))
        SwSB34_mode(Sw(9))
        SwPS12_mode(Sw(10))
        SwIC_S(Sw(11))
        SwIC_L2A(Sw(12))
    End Sub
    'Algemeen Joystick en Switch
    Sub SwChoice(ByVal Choice As Byte, ByVal num As Byte)
        Select Case Choice
            Case 1
                Li = True
                Ce = False
                Ri = False
                Wa = False
            Case 2
                Li = False
                Ce = True
                Ri = False
                Wa = False
            Case 3
                Li = False
                Ce = False
                Ri = True
                Wa = False
            Case 4
                Li = False
                Ce = False
                Ri = False
                Wa = True
        End Select
        Sw(num) = Choice
    End Sub
    Sub JoyChoice(ByVal Choice As Byte)
        Ce = False
        Li = False
        Dw = False
        Ri = False
        Up = False
        Select Case Choice
            Case 0
                Ce = True
            Case 1
                Ri = True
            Case 2
                Dw = True
            Case 3
                Li = True
            Case 4
                Up = True
        End Select
    End Sub
    Sub JoyIC(ByVal Choice As Byte)
        'joystick Nest Travel console CC_PS_PS
        JoyChoice(Choice)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1522, 0, Li) 'aft
            S7ProSim.WriteInputPoint(1522, 1, Ri) 'bow
        End If
        JoyIC_C.Visible = Ce
        JoyIC_R.Visible = Ri
        JoyIC_L.Visible = Li
    End Sub
    Sub SwIC_sycle(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 1)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1521, 7, Ri) 'run
        End If
        swCycIC_L.Visible = Li
        swCycIC_R.Visible = Ri
    End Sub
    Sub SwIC_mode(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 6)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1521, 2, Li) 'auto
            S7ProSim.WriteInputPoint(1521, 3, Ri) 'jog
        End If
        swIC_L.Visible = Li
        swIC_C.Visible = Ce '00
        swIC_R.Visible = Ri
    End Sub
    Sub SwIC_S(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 11)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1521, 4, Li)
            S7ProSim.WriteInputPoint(1521, 5, Ce)
            S7ProSim.WriteInputPoint(1521, 6, Ri)
        End If
        swSIC_L.Visible = Li
        swSIC_R.Visible = Ri
        swSIC_C.Visible = Ce
    End Sub
    Sub SwIC_L2A(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 12)
        If (ConnectionSim) Then
            'S7ProSim.WriteInputPoint(121, 2, Li)
            'S7ProSim.WriteInputPoint(121, 3, Ri)
        End If
        swLIC_L.Visible = Li
        swLIC_R.Visible = Ri
    End Sub
    Sub JoyLC(ByVal Choice As Byte)
        'joystick Nest Travel console CC_PS_PS
        JoyChoice(Choice)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1526, 7, Ri) 'bow
            S7ProSim.WriteInputPoint(1526, 6, Li) 'aft
        End If
        JoyLC_C.Visible = Ce
        JoyLC_R.Visible = Ri
        JoyLC_L.Visible = Li
    End Sub
    Sub SwLC_sycle(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 2)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1526, 5, Ri) 'run
        End If
        swCycLC_L.Visible = Li
        swCycLC_R.Visible = Ri
    End Sub
    Sub SwLC_mode(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 7)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1523, 4, Li) 'auto
            S7ProSim.WriteInputPoint(1523, 5, Ri) 'jog
        End If
        swLC_L.Visible = Li
        swLC_C.Visible = Ce
        swLC_R.Visible = Ri
    End Sub
    Sub JoySB12(ByVal Choice As Byte)
        'joystick Nest Travel console CC_PS_PS
        JoyChoice(Choice)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1523, 0, Up)
            S7ProSim.WriteInputPoint(1523, 1, Dw)
            S7ProSim.WriteInputPoint(1523, 2, Li) 'SB
            S7ProSim.WriteInputPoint(1523, 3, Ri) 'PS
        End If
        JoySB12_C.Visible = Ce
        JoySB12_R.Visible = Ri
        JoySB12_D.Visible = Dw
        JoySB12_L.Visible = Li
        JoySB12_U.Visible = Up
    End Sub
    Sub JoySB34(ByVal Choice As Byte)
        'joystick Nest Travel console CC_PS_PS
        JoyChoice(Choice)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1525, 0, Up)
            S7ProSim.WriteInputPoint(1526, 1, Dw)
            S7ProSim.WriteInputPoint(1526, 2, Li) 'SB
            S7ProSim.WriteInputPoint(1526, 3, Ri) 'PS
        End If
        JoySB34_C.Visible = Ce
        JoySB34_R.Visible = Ri
        JoySB34_D.Visible = Dw
        JoySB34_L.Visible = Li
        JoySB34_U.Visible = Up
    End Sub
    Sub JoyPS12(ByVal Choice As Byte)
        'joystick Nest Travel console CC_PS_PS
        JoyChoice(Choice)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1524, 4, Up)
            S7ProSim.WriteInputPoint(1524, 5, Dw)
            S7ProSim.WriteInputPoint(1524, 6, Li) 'SB
            S7ProSim.WriteInputPoint(1524, 7, Ri) 'PS
        End If
        JoyPS12_C.Visible = Ce
        JoyPS12_R.Visible = Ri
        JoyPS12_D.Visible = Dw
        JoyPS12_L.Visible = Li
        JoyPS12_U.Visible = Up
    End Sub
    Sub SwSB12_sycle(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 3)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1522, 2, Ri) 'run
        End If
        swCycSB12_L.Visible = Li
        swCycSB12_R.Visible = Ri
    End Sub
    Sub SwSB34_sycle(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 4)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1525, 0, Ri) 'RUN
        End If
        swCycSB34_L.Visible = Li
        swCycSB34_R.Visible = Ri
    End Sub
    Sub SwPS12_sycle(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 5)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1523, 6, Ri) 'run
        End If
        swCycPS12_L.Visible = Li
        swCycPS12_R.Visible = Ri
    End Sub
    Sub SwSB12_mode(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 8)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1522, 4, Li) 'auto
            S7ProSim.WriteInputPoint(1522, 5, Ce) 'man
            S7ProSim.WriteInputPoint(1522, 6, Ri) 'jog
            S7ProSim.WriteInputPoint(1522, 7, Wa) 'warm
        End If
        swSB12_L.Visible = Li
        swSB12_C.Visible = Ce
        swSB12_R.Visible = Ri
        swSB12_W.Visible = Wa
    End Sub
    Sub SwSB34_mode(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 9)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1525, 2, Li) 'auto
            S7ProSim.WriteInputPoint(1525, 3, Ce) 'man
            S7ProSim.WriteInputPoint(1525, 4, Ri) 'jog
            S7ProSim.WriteInputPoint(1525, 5, Wa) 'warm
        End If
        swSB34_L.Visible = Li
        swSB34_C.Visible = Ce
        swSB34_R.Visible = Ri
        swSB34_W.Visible = Wa
    End Sub
    Sub SwPS12_mode(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 10)
        If (ConnectionSim) Then
            S7ProSim.WriteInputPoint(1224, 0, Li) 'auto
            S7ProSim.WriteInputPoint(1224, 1, Ce) 'man
            S7ProSim.WriteInputPoint(1224, 2, Ri) 'jog
            S7ProSim.WriteInputPoint(1224, 3, Wa) 'warm
        End If
        swPS12_L.Visible = Li
        swPS12_C.Visible = Ce
        swPS12_R.Visible = Ri
        swPS12_W.Visible = Wa
    End Sub

    Private Sub BRJoySB12_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoySB12.MouseDown
        JoySB12(1)
    End Sub
    Private Sub BRJoySB12_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoySB12.MouseUp
        JoySB12(0)
    End Sub
    Private Sub BDJoySB12_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BDJoySB12.MouseDown
        JoySB12(2)
    End Sub
    Private Sub BDJoySB12_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BDJoySB12.MouseUp
        JoySB12(0)
    End Sub
    Private Sub BLJoySB12_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoySB12.MouseDown
        JoySB12(3)
    End Sub
    Private Sub BLJoySB12_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoySB12.MouseUp
        JoySB12(0)
    End Sub
    Private Sub BUJoySB12_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BUJoySB12.MouseDown
        JoySB12(4)
    End Sub
    Private Sub BUJoySB12_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BUJoySB12.MouseUp
        JoySB12(0)
    End Sub

    Private Sub BRJoySB34_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoySB34.MouseDown
        JoySB34(1)
    End Sub
    Private Sub BRJoySB34_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoySB34.MouseUp
        JoySB34(0)
    End Sub
    Private Sub BDJoySB34_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BDJoySB34.MouseDown
        JoySB34(2)
    End Sub
    Private Sub BDJoySB34_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BDJoySB34.MouseUp
        JoySB34(0)
    End Sub
    Private Sub BLJoySB34_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoySB34.MouseDown
        JoySB34(3)
    End Sub
    Private Sub BLJoySB34_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoySB34.MouseUp
        JoySB34(0)
    End Sub
    Private Sub BUJoySB34_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BUJoySB34.MouseDown
        JoySB34(4)
    End Sub
    Private Sub BUJoySB34_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BUJoySB34.MouseUp
        JoySB34(0)
    End Sub

    Private Sub BRJoyPS12_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoyPS12.MouseDown
        JoyPS12(1)
    End Sub
    Private Sub BRJoyPS12_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoyPS12.MouseUp
        JoyPS12(0)
    End Sub
    Private Sub BDJoyPS12_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BDJoyPS12.MouseDown
        JoyPS12(2)
    End Sub
    Private Sub BDJoyPS12_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BDJoyPS12.MouseUp
        JoyPS12(0)
    End Sub
    Private Sub BLJoyPS12_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoyPS12.MouseDown
        JoyPS12(3)
    End Sub
    Private Sub BLJoyPS12_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoyPS12.MouseUp
        JoyPS12(0)
    End Sub
    Private Sub BUJoyPS12_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BUJoyPS12.MouseDown
        JoyPS12(4)
    End Sub
    Private Sub BUJoyPS12_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BUJoyPS12.MouseUp
        JoyPS12(0)
    End Sub

    Private Sub BRJoyLC_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoyLC.MouseDown
        JoyLC(1)
    End Sub
    Private Sub BRJoyLC_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoyLC.MouseUp
        JoyLC(0)
    End Sub
    Private Sub BLJoyLC_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoyLC.MouseDown
        JoyLC(3)
    End Sub
    Private Sub BLJoyLC_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoyLC.MouseUp
        JoyLC(0)
    End Sub

    Private Sub BRJoyIC_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoyIC.MouseDown
        JoyIC(1)
    End Sub
    Private Sub BRJoyIC_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BRJoyIC.MouseUp
        JoyIC(0)
    End Sub
    Private Sub BLJoyIC_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoyIC.MouseDown
        JoyIC(3)
    End Sub
    Private Sub BLJoyIC_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BLJoyIC.MouseUp
        JoyIC(0)
    End Sub

    Private Sub BLswCycIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswCycIC.Click
        SwIC_sycle(1)
    End Sub
    Private Sub BRswCycIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswCycIC.Click
        SwIC_sycle(3)
    End Sub

    Private Sub BLswCycSB12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswCycSB12.Click
        SwSB12_sycle(1)
    End Sub
    Private Sub BRswCycSB12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswCycSB12.Click
        SwSB12_sycle(3)
    End Sub

    Private Sub BLswCycSB34_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswCycSB34.Click
        SwSB34_sycle(1)
    End Sub
    Private Sub BRswCycSB34_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswCycSB34.Click
        SwSB34_sycle(3)
    End Sub

    Private Sub BLswCycPS1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswCycPS1.Click
        SwPS12_sycle(1)
    End Sub
    Private Sub BRswCycPS1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswCycPS1.Click
        SwPS12_sycle(3)
    End Sub

    Private Sub BLswCycLC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswCycLC.Click
        SwLC_sycle(1)
    End Sub
    Private Sub BRswCycLC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswCycLC.Click
        SwLC_sycle(3)
    End Sub

    Private Sub BLswIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswIC.Click
        SwIC_mode(1)
    End Sub
    Private Sub BCswIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BCswIC.Click
        SwIC_mode(2)
    End Sub
    Private Sub BRswIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswIC.Click
        SwIC_mode(3)
    End Sub

    Private Sub BLswSB12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswSB12.Click
        SwSB12_mode(1)
    End Sub
    Private Sub BCswSB12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BCswSB12.Click
        SwSB12_mode(2)
    End Sub
    Private Sub BRswSB12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswSB12.Click
        SwSB12_mode(3)
    End Sub
    Private Sub BWswSB12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BWswSB12.Click
        SwSB12_mode(4)
    End Sub

    Private Sub BLswSB34_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswSB34.Click
        SwSB34_mode(1)
    End Sub
    Private Sub BCswSB34_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BCswSB34.Click
        SwSB34_mode(2)
    End Sub
    Private Sub BRswSB34_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswSB34.Click
        SwSB34_mode(3)
    End Sub
    Private Sub BWswSB34_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BWswSB34.Click
        SwSB34_mode(4)
    End Sub

    Private Sub BLswPS12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswPS12.Click
        SwPS12_mode(1)
    End Sub
    Private Sub BCswPS12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BCswPS12.Click
        SwPS12_mode(2)
    End Sub
    Private Sub BRswPS12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswPS12.Click
        SwPS12_mode(3)
    End Sub
    Private Sub BWswPS12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BWswPS12.Click
        SwPS12_mode(4)
    End Sub

    Private Sub BLswLC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswLC.Click
        SwLC_mode(1)
    End Sub
    Private Sub BCswLC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BCswLC.Click
        SwLC_mode(2)
    End Sub
    Private Sub BRswLC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswLC.Click
        SwLC_mode(3)
    End Sub

    Private Sub BLswSIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswSIC.Click
        SwIC_S(1)
    End Sub
    Private Sub BCswSIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BCswSIC.Click
        SwIC_S(2)
    End Sub
    Private Sub BRswSIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswSIC.Click
        SwIC_S(3)
    End Sub

    Private Sub BLswLIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BLswLIC.Click
        SwIC_L2A(1)
    End Sub
    Private Sub BRswLIC_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BRswLIC.Click
        SwIC_L2A(3)
    End Sub

    Private Sub SB12_home_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB12_home.MouseDown
        S7ProSim.WriteInputPoint(113, 1, True)
    End Sub
    Private Sub SB12_home_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB12_home.MouseUp
        S7ProSim.WriteInputPoint(113, 1, False)
    End Sub

    Private Sub SB34_home_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB34_home.MouseDown
        S7ProSim.WriteInputPoint(113, 1, True)
    End Sub
    Private Sub SB34_home_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB34_home.MouseUp
        S7ProSim.WriteInputPoint(113, 1, False)
    End Sub

    Private Sub PS12_home_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS12_home.MouseDown
        S7ProSim.WriteInputPoint(1523, 7, True)
    End Sub
    Private Sub PS12_home_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS12_home.MouseUp
        S7ProSim.WriteInputPoint(1523, 7, False)
    End Sub

    Private Sub SB12_start_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB12_start.MouseDown
        S7ProSim.WriteInputPoint(1522, 3, True)
    End Sub
    Private Sub SB12_start_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB12_start.MouseUp
        S7ProSim.WriteInputPoint(1522, 3, False)
    End Sub

    Private Sub SB12_stop_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB12_stop.MouseDown
        S7ProSim.WriteInputPoint(113, 1, True)
    End Sub
    Private Sub SB12_stop_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB12_stop.MouseUp
        S7ProSim.WriteInputPoint(113, 1, False)
    End Sub

    Private Sub SB34_start_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB34_start.MouseDown
        S7ProSim.WriteInputPoint(113, 1, True)
    End Sub
    Private Sub SB34_start_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB34_start.MouseUp
        S7ProSim.WriteInputPoint(113, 1, False)
    End Sub

    Private Sub SB34_stop_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB34_stop.MouseDown
        S7ProSim.WriteInputPoint(1525, 1, True)
    End Sub
    Private Sub SB34_stop_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB34_stop.MouseUp
        S7ProSim.WriteInputPoint(1525, 1, False)
    End Sub

    Private Sub PS12_start_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS12_start.MouseDown
        S7ProSim.WriteInputPoint(113, 1, True)
    End Sub
    Private Sub PS12_start_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS12_start.MouseUp
        S7ProSim.WriteInputPoint(113, 1, False)
    End Sub

    Private Sub PS12_stop_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS12_stop.MouseDown
        S7ProSim.WriteInputPoint(113, 1, True)
    End Sub
    Private Sub PS12_stop_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS12_stop.MouseUp
        S7ProSim.WriteInputPoint(113, 1, False)
    End Sub

    Private Sub Reset_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Reset.MouseDown
        S7ProSim.WriteInputPoint(1520, 2, True)
    End Sub
    Private Sub Reset_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Reset.MouseUp
        S7ProSim.WriteInputPoint(1520, 2, False)
    End Sub

    Private Sub TestLamp_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles TestLamp.MouseDown
        S7ProSim.WriteInputPoint(1521, 0, True)
    End Sub
    Private Sub TestLamp_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles TestLamp.MouseUp
        S7ProSim.WriteInputPoint(1521, 0, False)
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick

        UpdateGUI()
        If ConnectionSim Then
            S7ProSim.ReadOutputPoint(1521, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(0))
             If IsBitSet(pDataCons(0), 1) Then
                LampFaultOn.Visible = True
                LampFaultOff.Visible = False
            Else
                LampFaultOff.Visible = True
                LampFaultOn.Visible = False
            End If
            If IsBitSet(pDataCons(0), 2) Then
                LampHeatingOn.Visible = True
                LampHeatingOff.Visible = False
            Else
                LampHeatingOn.Visible = False
                LampHeatingOff.Visible = True
            End If
            If IsBitSet(pDataCons(0), 4) Then
                SB12_home.BackColor = Color.Lime
            Else
                SB12_home.BackColor = Color.DarkGreen
            End If
            If IsBitSet(pDataCons(0), 5) Then
                PS12_home.BackColor = Color.Lime
            Else
                PS12_home.BackColor = Color.DarkGreen
            End If
            If IsBitSet(pDataCons(0), 6) Then
                SB34_home.BackColor = Color.Lime
            Else
                SB34_home.BackColor = Color.DarkGreen
            End If
        End If
    End Sub
End Class
