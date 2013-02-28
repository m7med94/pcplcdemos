Imports System.Xml
Public Class Form1
    Private WithEvents S7ProSim As New S7PROSIMLib.S7ProSim
    Private Li As Boolean = False
    Private Ce As Boolean = False
    Private Ri As Boolean = False
    Private Wa As Boolean = False
    Private Dw As Boolean = False
    Private Up As Boolean = False

    Private Sub Form1_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        S7ProSim.Disconnect()
        WriteSw()
    End Sub

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LoadSwData()
        initConsole()
        S7ProSim.Connect()
        S7ProSim.SetScanMode(1)
    End Sub
    Public Sub initConsole()
        LabelTurnRolls.Text = String.Format("{0,14:P1}", TrackBarTR.Value / 27648)
        Sw_TS1(Sw(0)) 'AUTO  console CC_TS  
        Sw_LCA1(Sw(1)) 'ON  console CC_LCA  
        Sw_LCA2(Sw(2)) 'LOCAL  console CC_LCA  
        Sw_LCA3(Sw(3)) 'AUTO  console CC_LCA  
        Sw_LCA4(Sw(4)) 'AUTO  console CC_LCA  
        Sw_LCA5(Sw(5)) 'AUTO  console CC_LCA  

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
                For i = 0 To 20
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
                For i = 0 To 20
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
            "<sw0>2</sw0>" + _
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
            "</Settings>" & _
            "</Console>")
        doc.Save(NameSwXmlFile)
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
    ' CC TS1
    Sub Sw_TS1(ByVal Choice As Byte)
        'switch TS console CC-TS man-auto-jog
        SwChoice(Choice, 8)

        S7ProSim.WriteInputPoint(443, 4, Li)
        'S7ProSim.WriteInputPoint(443, 4, Ce)
        S7ProSim.WriteInputPoint(443, 5, Ri)

        schTS1_L.Visible = Li
        schTS1_C.Visible = Ce
        schTS1_R.Visible = Ri
    End Sub
    Sub JoyD_TS1(ByVal Choice As Byte)
        'joystick TS1 
        JoyChoice(Choice)

        S7ProSim.WriteInputPoint(443, 2, Ri)
        S7ProSim.WriteInputPoint(443, 1, Dw)
        S7ProSim.WriteInputPoint(443, 3, Li)
        S7ProSim.WriteInputPoint(443, 0, Up)

        JoyTS1_C.Visible = Ce
        JoyTS1_R.Visible = Ri
        JoyTS1_D.Visible = Dw
        JoyTS1_L.Visible = Li
        JoyTS1_U.Visible = Up
    End Sub
    Private Sub BschTS1_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschTS1_L.Click
        Sw_TS1(1)
    End Sub
    Private Sub BschTS1_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschTS1_C.Click
        Sw_TS1(2)
    End Sub
    Private Sub BschTS1_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschTS1_R.Click
        Sw_TS1(3)
    End Sub
    Private Sub BJoyTS1_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyTS1_R.MouseDown
        JoyD_TS1(1)
    End Sub
    Private Sub BJoyTS1_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyTS1_R.MouseUp
        JoyD_TS1(0)
    End Sub
    Private Sub BJoyTS1_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyTS1_D.MouseDown
        JoyD_TS1(2)
    End Sub
    Private Sub BJoyTS1_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyTS1_D.MouseUp
        JoyD_TS1(0)
    End Sub
    Private Sub BJoyTS1_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyTS1_L.MouseDown
        JoyD_TS1(3)
    End Sub
    Private Sub BJoyTS1_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyTS1_L.MouseUp
        JoyD_TS1(0)
    End Sub
    Private Sub BJoyTS1_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyTS1_U.MouseDown
        JoyD_TS1(4)
    End Sub
    Private Sub BJoyTS1_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyTS1_U.MouseUp
        JoyD_TS1(0)
    End Sub
    'CC LCA
    Sub Sw_LCA1(ByVal Choice As Byte)
        'switch TS console CC-TS man-auto-jog
        SwChoice(Choice, 8)

        S7ProSim.WriteInputPoint(101, 0, Li)
        S7ProSim.WriteInputPoint(101, 1, Ri)

        schLCA1_L.Visible = Li
        schLCA1_R.Visible = Ri
    End Sub
    Sub Sw_LCA2(ByVal Choice As Byte)
        'switch TS console CC-TS man-auto-jog
        SwChoice(Choice, 8)

        S7ProSim.WriteInputPoint(101, 2, Li)
        S7ProSim.WriteInputPoint(101, 3, Ri)

        schLCA2_L.Visible = Li
        schLCA2_R.Visible = Ri
    End Sub
    Sub Sw_LCA3(ByVal Choice As Byte)
        'switch TS console CC-TS man-auto-jog
        SwChoice(Choice, 8)

        S7ProSim.WriteInputPoint(101, 4, Li)
        S7ProSim.WriteInputPoint(101, 5, Ri)

        schLCA3_L.Visible = Li
        schLCA3_R.Visible = Ri
    End Sub
    Sub Sw_LCA4(ByVal Choice As Byte)
        'switch TS console CC-TS man-auto-jog
        SwChoice(Choice, 8)

        S7ProSim.WriteInputPoint(102, 0, Li)
        S7ProSim.WriteInputPoint(102, 1, Ce)
        S7ProSim.WriteInputPoint(102, 2, Ri)

        schLCA4_L.Visible = Li
        schLCA4_C.Visible = Ce
        schLCA4_R.Visible = Ri
    End Sub
    Sub Sw_LCA5(ByVal Choice As Byte)
        'switch TS console CC-TS man-auto-jog
        SwChoice(Choice, 8)

        S7ProSim.WriteInputPoint(102, 3, Li)
        S7ProSim.WriteInputPoint(102, 4, Ce)
        S7ProSim.WriteInputPoint(102, 5, Ri)

        schLCA5_L.Visible = Li
        schLCA5_C.Visible = Ce
        schLCA5_R.Visible = Ri
    End Sub
    Private Sub BschLCA1_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA1_L.Click
        Sw_LCA1(1)
    End Sub
    Private Sub BschLCA1_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA1_R.Click
        Sw_LCA1(3)
    End Sub
    Private Sub BschLCA2_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA2_L.Click
        Sw_LCA2(1)
    End Sub
    Private Sub BschLCA2_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA2_R.Click
        Sw_LCA2(3)
    End Sub
    Private Sub BschLCA3_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA3_L.Click
        Sw_LCA3(1)
    End Sub
    Private Sub BschLCA3_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA3_R.Click
        Sw_LCA3(3)
    End Sub
    Private Sub BschLCA4_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA4_L.Click
        Sw_LCA4(1)
    End Sub
    Private Sub BschLCA4_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA4_C.Click
        Sw_LCA4(2)
    End Sub
    Private Sub BschLCA4_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA4_R.Click
        Sw_LCA4(3)
    End Sub
    Private Sub BschLCA5_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA5_L.Click
        Sw_LCA5(1)
    End Sub
    Private Sub BschLCA5_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA5_C.Click
        Sw_LCA5(2)
    End Sub
    Private Sub BschLCA5_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschLCA5_R.Click
        Sw_LCA5(3)
    End Sub
    Sub JoyA_LCA1(ByVal Choice As Byte)
        'joystick TRACK 2
        JoyChoice(Choice)

        If Up Then
            pDataJoy(0) = TrackBarTR.Value
        ElseIf Dw Then
            pDataJoy(0) = -TrackBarTR.Value
        Else
            pDataJoy(0) = 0
        End If
        If Ri Then
            pDataJoy(1) = TrackBarTR.Value
        ElseIf Li Then
            pDataJoy(1) = -TrackBarTR.Value
        Else
            pDataJoy(1) = 0
        End If
        S7ProSim.WriteInputImage(152, pDataJoy)

        JoyLCA1_C.Visible = Ce
        JoyLCA1_R.Visible = Ri
        JoyLCA1_D.Visible = Dw
        JoyLCA1_L.Visible = Li
        JoyLCA1_U.Visible = Up

    End Sub
    Private Sub TrackBarTR_Scroll(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TrackBarTR.Scroll
        UpdateGUI()
    End Sub
    Private Sub BJoyLCA1_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA1_R.MouseDown
        JoyA_LCA1(1)
    End Sub
    Private Sub BJoyLCA1_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA1_R.MouseUp
        JoyA_LCA1(0)
    End Sub
    Private Sub BJoyLCA1_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA1_D.MouseDown
        JoyA_LCA1(2)
    End Sub
    Private Sub BJoyLCA1_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA1_D.MouseUp
        JoyA_LCA1(0)
    End Sub
    Private Sub BJoyLCA1_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA1_L.MouseDown
        JoyA_LCA1(3)
    End Sub
    Private Sub BJoyLCA1_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA1_L.MouseUp
        JoyA_LCA1(0)
    End Sub
    Private Sub BJoyLCA1_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA1_U.MouseDown
        JoyA_LCA1(4)
    End Sub
    Private Sub BJoyLCA1_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA1_U.MouseUp
        JoyA_LCA1(0)
    End Sub
    Sub JoyD_LCA2(ByVal Choice As Byte)
        'joystick pipe  elevate
        JoyChoice(Choice)

        S7ProSim.WriteInputPoint(103, 0, Dw)
        S7ProSim.WriteInputPoint(103, 1, Up)

        JoyLCA2_C.Visible = Ce
        JoyLCA2_D.Visible = Dw
        JoyLCA2_U.Visible = Up

    End Sub
    Private Sub BJoyLCA2_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA2_D.MouseDown
        JoyD_LCA2(2)
    End Sub
    Private Sub BJoyLCA2_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA2_D.MouseUp
        JoyD_LCA2(0)
    End Sub
    Private Sub BJoyLCA2_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA2_U.MouseDown
        JoyD_LCA2(4)
    End Sub
    Private Sub BJoyLCA2_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA2_U.MouseUp
        JoyD_LCA2(0)
    End Sub
    Sub JoyA_LCA3(ByVal Choice As Byte)
        'joystick TRACK 2
        JoyChoice(Choice)

        If Up Then
            pDataJoy(0) = TrackBarTR.Value
        ElseIf Dw Then
            pDataJoy(0) = -TrackBarTR.Value
        Else
            pDataJoy(0) = 0
        End If
        If Ri Then
            pDataJoy(1) = TrackBarTR.Value
        ElseIf Li Then
            pDataJoy(1) = -TrackBarTR.Value
        Else
            pDataJoy(1) = 0
        End If
        S7ProSim.WriteInputImage(156, pDataJoy)

        JoyLCA3_C.Visible = Ce
        JoyLCA3_R.Visible = Ri
        JoyLCA3_D.Visible = Dw
        JoyLCA3_L.Visible = Li
        JoyLCA3_U.Visible = Up

    End Sub
    Private Sub BJoyLCA3_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA3_R.MouseDown
        JoyA_LCA3(1)
    End Sub
    Private Sub BJoyLCA3_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA3_R.MouseUp
        JoyA_LCA3(0)
    End Sub
    Private Sub BJoyLCA3_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA3_D.MouseDown
        JoyA_LCA3(2)
    End Sub
    Private Sub BJoyLCA3_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA3_D.MouseUp
        JoyA_LCA3(0)
    End Sub
    Private Sub BJoyLCA3_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA3_L.MouseDown
        JoyA_LCA3(3)
    End Sub
    Private Sub BJoyLCA3_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA3_L.MouseUp
        JoyA_LCA3(0)
    End Sub
    Private Sub BJoyLCA3_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA3_U.MouseDown
        JoyA_LCA3(4)
    End Sub
    Private Sub BJoyLCA3_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA3_U.MouseUp
        JoyA_LCA3(0)
    End Sub
    Sub JoyA_LCA4(ByVal Choice As Byte)
        'joystick TRACK 2
        JoyChoice(Choice)

        If Up Then
            pDataJoy(0) = TrackBarTR.Value
        ElseIf Dw Then
            pDataJoy(0) = -TrackBarTR.Value
        Else
            pDataJoy(0) = 0
        End If
        If Ri Then
            pDataJoy(1) = TrackBarTR.Value
        ElseIf Li Then
            pDataJoy(1) = -TrackBarTR.Value
        Else
            pDataJoy(1) = 0
        End If
        S7ProSim.WriteInputImage(160, pDataJoy)

        JoyLCA4_C.Visible = Ce
        JoyLCA4_R.Visible = Ri
        JoyLCA4_D.Visible = Dw
        JoyLCA4_L.Visible = Li
        JoyLCA4_U.Visible = Up

    End Sub
    Private Sub BJoyLCA4_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA4_R.MouseDown
        JoyA_LCA4(1)
    End Sub
    Private Sub BJoyLCA4_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA4_R.MouseUp
        JoyA_LCA4(0)
    End Sub
    Private Sub BJoyLCA4_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA4_D.MouseDown
        JoyA_LCA4(2)
    End Sub
    Private Sub BJoyLCA4_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA4_D.MouseUp
        JoyA_LCA4(0)
    End Sub
    Private Sub BJoyLCA4_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA4_L.MouseDown
        JoyA_LCA4(3)
    End Sub
    Private Sub BJoyLCA4_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA4_L.MouseUp
        JoyA_LCA4(0)
    End Sub
    Private Sub BJoyLCA4_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA4_U.MouseDown
        JoyA_LCA4(4)
    End Sub
    Private Sub BJoyLCA4_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA4_U.MouseUp
        JoyA_LCA4(0)
    End Sub
    Sub JoyD_LCA5(ByVal Choice As Byte)
        'joystick walking beam 
        JoyChoice(Choice)

        S7ProSim.WriteInputPoint(103, 2, Ri)
        S7ProSim.WriteInputPoint(103, 3, Dw)
        S7ProSim.WriteInputPoint(103, 4, Li)
        S7ProSim.WriteInputPoint(103, 5, Up)

        JoyLCA5_C.Visible = Ce
        JoyLCA5_R.Visible = Ri
        JoyLCA5_D.Visible = Dw
        JoyLCA5_L.Visible = Li
        JoyLCA5_U.Visible = Up
    End Sub
    Private Sub BJoyLCA5_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA5_R.MouseDown
        JoyD_LCA5(1)
    End Sub
    Private Sub BJoyLCA5_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA5_R.MouseUp
        JoyD_LCA5(0)
    End Sub
    Private Sub BJoyLCA5_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA5_D.MouseDown
        JoyD_LCA5(2)
    End Sub
    Private Sub BJoyLCA5_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA5_D.MouseUp
        JoyD_LCA5(0)
    End Sub
    Private Sub BJoyLCA5_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA5_L.MouseDown
        JoyD_LCA5(3)
    End Sub
    Private Sub BJoyLCA5_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA5_L.MouseUp
        JoyD_LCA5(0)
    End Sub
    Private Sub BJoyLCA5_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA5_U.MouseDown
        JoyD_LCA5(4)
    End Sub
    Private Sub BJoyLCA5_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA5_U.MouseUp
        JoyD_LCA5(0)
    End Sub
    Sub JoyA_LCA6(ByVal Choice As Byte)
        'joystick CAR ASSY
        JoyChoice(Choice)

        If Ri Then
            pDataJoy2(0) = TrackBarTR.Value
        ElseIf Li Then
            pDataJoy2(0) = -TrackBarTR.Value
        Else
            pDataJoy2(0) = 0
        End If
        S7ProSim.WriteInputImage(164, pDataJoy2)

        JoyLCA6_C.Visible = Ce
        JoyLCA6_R.Visible = Ri
        JoyLCA6_L.Visible = Li

    End Sub
    Private Sub BJoyLCA6_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA6_R.MouseDown
        JoyA_LCA6(1)
    End Sub
    Private Sub BJoyLCA6_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA6_R.MouseUp
        JoyA_LCA6(0)
    End Sub
    Private Sub BJoyLCA6_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA6_L.MouseDown
        JoyA_LCA6(3)
    End Sub
    Private Sub BJoyLCA6_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA6_L.MouseUp
        JoyA_LCA6(0)
    End Sub
    Sub JoyA_LCA7(ByVal Choice As Byte)
        'joystick TRACK 1 AND 2
        JoyChoice(Choice)

        If Ri Then
            pDataJoy2(0) = TrackBarTR.Value
        ElseIf Li Then
            pDataJoy2(0) = -TrackBarTR.Value
        Else
            pDataJoy2(0) = 0
        End If
        S7ProSim.WriteInputImage(166, pDataJoy2)

        JoyLCA7_C.Visible = Ce
        JoyLCA7_R.Visible = Ri
        JoyLCA7_L.Visible = Li

    End Sub
    Private Sub BJoyLCA7_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA7_R.MouseDown
        JoyA_LCA7(1)
    End Sub
    Private Sub BJoyLCA7_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA7_R.MouseUp
        JoyA_LCA7(0)
    End Sub
    Private Sub BJoyLCA7_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA7_L.MouseDown
        JoyA_LCA7(3)
    End Sub
    Private Sub BJoyLCA7_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA7_L.MouseUp
        JoyA_LCA7(0)
    End Sub
    Sub JoyD_LCA8(ByVal Choice As Byte)
        'joystick SEAM rotate  
        JoyChoice(Choice)

        S7ProSim.WriteInputPoint(104, 0, Ri)
        S7ProSim.WriteInputPoint(104, 1, Dw)
        S7ProSim.WriteInputPoint(104, 2, Li)
        S7ProSim.WriteInputPoint(104, 3, Up)

        JoyLCA8_C.Visible = Ce
        JoyLCA8_R.Visible = Ri
        JoyLCA8_D.Visible = Dw
        JoyLCA8_L.Visible = Li
        JoyLCA8_U.Visible = Up
    End Sub
    Private Sub BJoyLCA8_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA8_R.MouseDown
        JoyD_LCA8(1)
    End Sub
    Private Sub BJoyLCA8_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA8_R.MouseUp
        JoyD_LCA8(0)
    End Sub
    Private Sub BJoyLCA8_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA8_D.MouseDown
        JoyD_LCA8(2)
    End Sub
    Private Sub BJoyLCA8_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA8_D.MouseUp
        JoyD_LCA8(0)
    End Sub
    Private Sub BJoyLCA8_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA8_L.MouseDown
        JoyD_LCA8(3)
    End Sub
    Private Sub BJoyLCA8_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA8_L.MouseUp
        JoyD_LCA8(0)
    End Sub
    Private Sub BJoyLCA8_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA8_U.MouseDown
        JoyD_LCA8(4)
    End Sub
    Private Sub BJoyLCA8_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyLCA8_U.MouseUp
        JoyD_LCA8(0)
    End Sub
    '***********************************
    Private Sub UpdateGUI()

        'analog sugnalen Potmeters 2x16bit
        pDataAna(0) = TrackBarTR.Value
        S7ProSim.WriteInputImage(150, pDataAna)


        LabelTurnRolls.Text = String.Format("{0,14:P1}", TrackBarTR.Value / 27648)


        '============================================================
        ' TS1
        '============================================================
        '443.45 - sw TS1 - auto-man-         jog?
        '443.0123 - joy TS1 - right-down-left-up
        S7ProSim.WriteInputPoint(443, 6, CB_TS1_ESD.Checked)

        '============================================================
        ' LCA
        '============================================================
        '101.01  - sw TRACK 1 & 2
        '101.23  - sw local-remote
        '101.45  - sw man-auto CAR
        S7ProSim.WriteInputPoint(101, 6, CB_LCA_ESD.Checked)
        '101.7 LCA HOME

        '102.012 - sw auto-man-abut TRACK 1 & 2
        '102.345 - sw auto-man-jog
        '102.6 LCA STOP
        '102.7 LCA START

        '103.01  - joystick pipe  elevate
        '103.2345 - joystick walking beam

        '104.1234 - joystick SEAM rotate


        'INT 150 Abutment force 27648
        'INT 152 154  joystick TRACK 2
        'INT 156 158  joystick TRACK 1
        'INT 160 162  joystick tilt & swivel
        'INT 164 joystick car assy
        'INT 166 joystick car track 1 & 2

    End Sub
    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        S7ProSim.ReadOutputPoint(441, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(0))

        '100.01   - TS1 LEDs Auto, Fault
        Led_TS_Auto_ON.Visible = IsBitSet(pDataCons(0), 4)
        Led_TS_Auto_OFF.Visible = Not (IsBitSet(pDataCons(0), 4))
        Led_TS_Fault_ON.Visible = IsBitSet(pDataCons(0), 5)
        Led_TS_Fault_OFF.Visible = Not (IsBitSet(pDataCons(0), 5))
        '100.2   - LSA LED Fault
        Led_LCA_Fault_ON.Visible = IsBitSet(pDataCons(0), 2)
        Led_LCA_Fault_OFF.Visible = Not (IsBitSet(pDataCons(0), 2))


    End Sub





    Private Sub CB_TS1_ESD_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CB_TS1_ESD.CheckedChanged
        'S7ProSim.WriteInputPoint(443, 6, CB_TS1_ESD.Checked)
        UpdateGUI()
    End Sub
    Private Sub CB_LCA_ESD_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CB_LCA_ESD.CheckedChanged
        'S7ProSim.WriteInputPoint(102, 6, CB_LCA_ESD.Checked)
        UpdateGUI()
    End Sub
    Private Sub Button_Home_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Button_Home.MouseDown
        S7ProSim.WriteInputPoint(102, 7, True)
    End Sub
    Private Sub Button_Home_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Button_Home.MouseUp
        S7ProSim.WriteInputPoint(102, 7, False)
    End Sub
    Private Sub Button_Stop_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Button_Stop.MouseDown
        S7ProSim.WriteInputPoint(103, 6, True)
    End Sub
    Private Sub Button_Stop_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Button_Stop.MouseUp
        S7ProSim.WriteInputPoint(103, 6, False)
    End Sub
    Private Sub Button_Start_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Button_Start.MouseDown
        S7ProSim.WriteInputPoint(103, 7, True)
    End Sub
    Private Sub Button_Start_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Button_Start.MouseUp
        S7ProSim.WriteInputPoint(103, 7, False)
    End Sub
End Class
