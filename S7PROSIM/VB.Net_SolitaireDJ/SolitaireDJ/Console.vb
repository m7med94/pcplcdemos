Imports System.Xml
Public Class Console
    Private WithEvents S7ProSim As New S7PROSIMLib.S7ProSim
    Private Li As Boolean = False
    Private Ce As Boolean = False
    Private Ri As Boolean = False
    Private Wa As Boolean = False
    Private Dw As Boolean = False
    Private Up As Boolean = False
    Public Sub DoConnection()
        S7ProSim.Connect()
        initConsole()
    End Sub
    Private Sub Console_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        S7ProSim.Disconnect()
        WriteSw()
    End Sub
    Private Sub Console_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'If ConnectionSim Then
        'S7ProSim.Connect()
        LoadSwData()
        initConsole()
        'End If
    End Sub
    Public Sub initConsole()
        LabelTurnRolls.Text = String.Format("{0,14:P1}", TrackBarTR.Value / 27648)
        LabelAbForce.Text = String.Format("{0,14:P1}", TrackBarAF.Value / 27648)
        Sw_PS_DJ1_P1(Sw(1)) 'MAN  console CC_PS_DJ1  
        Sw_PS_DJ1_P2(Sw(2)) 'MAN  console CC_PS_DJ1  
        Sw_PS_DJ1_P3(Sw(3)) 'STOP console CC_PS_DJ1  CYCLE 
        Sw_PS_DJ1_P4(Sw(4)) 'STOP console CC_PS_DJ1  CYCLE 
        Sw_PS_SP_A1(Sw(5)) 'LOCAL console CC-PS-SP  local - remote
        Sw_PS_SP_A2(Sw(6)) 'retract console CC-PS-SP  rear retract - expand
        Sw_PS_SP_A3(Sw(7)) 'retract console CC-PS-SP  front retract - expand
        Sw_PS_SP_A4(Sw(8)) '1 console CC-PS-SP  force 1 - 2
        Sw_PS_PFM1_F1(Sw(9)) 'MAN console PFM1  man-auto-jog
        Sw_PS_PFM2_F2(Sw(10)) 'MAN console PFM2  man-auto-jog
        Sw_PS_PFM3_F3(Sw(11)) 'MAN console PFM3  man-auto-jog
        Sw_PS_PFM4_F4(Sw(12)) 'MAN console PFM4  man-auto-jog
        Sw_PS_PFM1_C1(Sw(13)) 'STOP console PFM1  stop-run
        Sw_PS_PFM2_C2(Sw(14)) 'STOP console PFM2  stop-run
        Sw_PS_PFM3_C3(Sw(15)) 'STOP console PFM3  stop-run
        Sw_PS_PFM4_C4(Sw(16)) 'STOP console PFM4  stop-run
        Sw_PS_PFM2_L1(Sw(17)) 'LOCAl console PFM2  local-remote
        Sw_PS_PFM4_L2(Sw(18)) 'LOCAl console PFM4  local-remote
        Sw_PS_PFM1_R1(Sw(19)) 'off console PFM1  fwd-off-rev
        Sw_PS_PFM2_R2(Sw(20)) 'off console PFM2  fwd-off-rev
        Sw_PS_PFM3_R3(Sw(21)) 'off console PFM3  fwd-off-rev
        Sw_PS_PFM4_R4(Sw(22)) 'off console PFM4  fwd-off-rev
        Sw_PS_PFM4_R5(Sw(23)) 'off console PFM4  long fwd-off-rev
        Sw_SB_DJ1_P5(Sw(24)) 'MAN  console CC_SB_DJ1  
        Sw_SB_DJ1_P6(Sw(25)) 'MAN  console CC_SB_DJ1  
        Sw_SB_DJ1_P7(Sw(26)) 'STOP console CC_SB_DJ1   CYCLE 
        Sw_SB_DJ1_P8(Sw(27)) 'STOP console CC_SB_DJ1   CYCLE 
        Sw_PS_DJ2_P9(Sw(28)) 'MAN  console CC_PS_DJ2 
        Sw_PS_DJ2_P10(Sw(29)) 'STOP console CC_PS_DJ2   CYCLE 
        Sw_SB_DJ2_P11(Sw(30)) 'MAN  console CC_SB_DJ2 
        Sw_SB_DJ2_P12(Sw(31)) 'STOP console CC_SB_DJ2   CYCLE 
        Sw_PS_SP_A1(Sw(32))   'PS  console SP dis-enable
        Sw_PS_SP_A2(Sw(33))   'PS  console SP clamp rear
        Sw_PS_SP_A3(Sw(34))   'PS  console SP clamp front
        Sw_PS_SP_A4(Sw(35))   'PS  console SP force 1-2
        Sw_PS_SP_A5(Sw(36))   'PS  console SP rev-auto-fwd

        Sw_PS_DJ2_P13(Sw(37))   'PS  console DJ2 auto-man-jog 
        Sw_PS_DJ2_P14(Sw(38))   'PS  console DJ2 speeed 1-2-3
        Sw_SB_DJ2_P15(Sw(39))   'SB  console DJ2 rev-auto-fwd
        Sw_SB_DJ2_P16(Sw(40))   'SB  console DJ2 speeed 1-2-3
        Sw_PS_W2_P17(Sw(41))   'PS  console DJ2 rev-auto-fwd
        Sw_PS_W2_P18(Sw(42))   'PS  console Dj2 up-down (terugkerend)
        Sw_PS_W2_P19(Sw(43))   'PS  console DJ2 conveyor
        Sw_PS_W3_EN(Sw(44))   'PS  console W3 SEQ op DJ2
        Sw_PS_W4_EN(Sw(45))   'PS  console W3 SEQ op DJ2

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
    Private Sub UpdateGUI()

        'analog sugnalen Potmeters 2x16bit
        pDataAna(0) = TrackBarTR.Value
        pDataAna(1) = TrackBarTR.Value
        pDataAna(2) = TrackBarAF.Value
        S7ProSim.WriteInputImage(178, pDataAna)


        LabelAbForce.Text = String.Format("{0,14:P1}", TrackBarAF.Value / 27648)
        LabelTurnRolls.Text = String.Format("{0,14:P1}", TrackBarTR.Value / 27648)


        '============================================================
        ' PS_DJ1-TC12, PFM1
        '============================================================
        '100.0123 - sw PS_DJ1 - auto-warm-man-jog
        ' 
        ''100, 4, PFM1_complete
        ''100, 5, PS_DJ1_TC12PrehCompl1
        ''100, 6, PS_DJ1_TC12RotComplete1
        ''S7ProSim.WriteInputPoint(100, 7, PS_SP_ReqPipe1.Value)
        '-------
        ''S7ProSim.WriteInputPoint(101, 1, PS_DJ1_TC12Home1.Value)
        '101.2345 joystick PS_DJ1
        '101.67 sw PS_DJ1 - stop-run
        '-------
        S7ProSim.WriteInputPoint(102, 0, PS_DJ1_EmergStop.Checked)
        S7ProSim.WriteInputPoint(102, 1, PFM1_EmerStop.Checked)
        ''102, 3, PS_DJ1_TestLamp1
        ''102, 4, PFM1_LampTest
        '============================================================
        ' PS_DJ1-TC12, PFM2
        '============================================================
        '103.0123 - sw PS_DJ1 - auto-warm-man-jog
        '103, 4, PFM2_complete.Value)
        '103, 5, SB_JD1_TC12PrehCompl.Value)
        '103, 6, SB_DJ1_TC12RotComplete.Value)
        '103, 7, SB_SP_ReqPipe
        '-------
        '104, 1, SB_DJ1_TC12Home.Value)
        '104.2345 joystick PS_DJ1
        '104.67 sw PS_DJ1 - stop-run

        S7ProSim.WriteInputPoint(105, 0, SB_DJ1_EmergStop.Checked)
        S7ProSim.WriteInputPoint(105, 1, PFM2_EmerStop.Checked)
        '' S7ProSim.WriteInputPoint(105, 3, SB_DJ1_TestLamp1.Value)

        '============================================================
        ' PS_DJ1-TC34, PFM3
        '============================================================
        '106.0123 - sw PS_DJ1 - auto-warm-man-jog
        ''106, 4, PFM3_complete.Value)
        ''S7ProSim.WriteInputPoint(106, 5, PS_DJ1_TC34PrehCompl1.Value)
        ''S7ProSim.WriteInputPoint(106, 6, PS_DJ1_TC34RotComplete1.Value)
        'S7ProSim.WriteInputPoint(106, 7, PS_SP_ReqPipe.Value)
        '-------
        ''S7ProSim.WriteInputPoint(107, 1, PS_DJ1_TC34Home1.Value)
        '107.2345 joystick PS_DJ1
        '107.67 sw PS_DJ1 - stop-run
        '-------
        S7ProSim.WriteInputPoint(108, 1, PFM3_EmerStop.Checked)
        '============================================================
        ' SB_DJ1-TC34, PFM4
        '============================================================
        '109.0123 - sw PS_DJ1 - auto-warm-man-jog
        ''109, 4, PFM4_complete.Value)
        '109, 5, SB_JD1_TC34PrehCompl.Value)
        '109, 6, SB_JD1_TC34RotComplete.Value)
        '-------
        '110, 1, SB_DJ1_TC34Home.Value)
        '110.2345 joystick SB_DJ1
        '110.67 sw PS_DJ1 - stop-run

        S7ProSim.WriteInputPoint(111, 1, PFM4_EmerStop.Checked)

        '============================================================
        ' PS_DJ2-TC58
        '============================================================
        '112.0123 - sw PS_DJ2 - auto-warm-man-jog
        ''112, 4, PS_W2_complete1.Value)
        ''112, 5, PS_W3_ReqPipe1.Value)
        ''112, 6, PS_W4_ReqPipe1.Value)
        ''112, 7, PS_W3_complete1.Value)
        '-------
        ''113, 0, PS_W4_complete1.Value)
        ''113, 1, PS_DJ2_TC58Home1.Value)
        '113.2345 joystick PS_DJ2
        '113.67 sw PS_DJ2 - stop-run
        '-------
        S7ProSim.WriteInputPoint(114, 0, PS_DJ2_EmerStop.Checked)
        '114, 3, PS_DJ2_TestLamp1.Value)
        '114.124 sw PS_DJ2 - auto-man-jog
        '114.567 sw PS_DJ2 - speed 1-2-3
        '============================================================
        ' SB_DJ2-TC58
        '============================================================
        '115.0123 - sw PS_DJ2 - auto-warm-man-jog
        ''115, 4, SB_W2_complete1.Value)
        ''115, 5, SB_W3_ReqPipe.Value)
        ''115, 6, SB_W4_ReqPipe.Value)
        ''115, 7, SB_W3_complete.Value)
        '-------
        ''116, 0, SB_W4_complete.Value)
        ''S7ProSim.WriteInputPoint(116, 1, SB_DJ2_TC58Home1.Value)
        '116.2345 joystick SB_DJ2
        '116.67 sw SB_DJ2 - stop-run

        S7ProSim.WriteInputPoint(117, 0, SB_DJ2_EmerStop.Checked)
        ''S7ProSim.WriteInputPoint(117, 3, SB_DJ2_TestLamp1.Value)
        '117.124 sw PS_DJ2 - auto-man-jog
        '117.567 sw PS_DJ2 - speed 1-2-3

        '============================================================
        ' PS_SP
        '============================================================
        '118.0123 joystick NEST
        '118.4567 joystick NEST
        '119.0123 joystick CLAMP
        '119.4567 joystick TURNING ROLLERS
        '120.0123 joystick PIPE ELEVATE
        ''S7ProSim.WriteInputPoint(121, 0, PS_SP_LineUpCmpl1.Value)
        ''S7ProSim.WriteInputPoint(121, 1, PS_SP_W1Cmpl1.Value)
        '121.23 sw SB_sw1 - dis-enable
        '121.45 sw SB_sw2 - clamp rr
        '121.67 sw SB_sw3 - clamp fr
        '122.01 sw SB_sw4 - force 1-2
        S7ProSim.WriteInputPoint(122, 2, PS_SP_ESD.Checked)
        '122.345 sw SB_sw5 - rev-auto-fwd

        '============================================================
        ' SB_W2     --> JD2
        '============================================================
        '123.012 sw SB_sw17 - rev-auto-fwd ROLLERS
        '123.34  sw SB_sw18 - up-down
        '123.567  sw SB_sw19 - rev-auto-fwd CONVEYOR

        '============================================================
        ' PS_W3-4     --> JD2
        '============================================================
        '124.0 sw_W3_EN EN-DIS
        '124.1 sw_W3_EN EN-DIS


    End Sub
    Private Sub Timer1_Tick_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick

        If DriveMode Then
            'NoDave
            If Connection Then
                '
            End If
        Else
            If ConnectionSim Then
                S7ProSim.ReadOutputPoint(100, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(0))
                S7ProSim.ReadOutputPoint(101, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(1))
                S7ProSim.ReadOutputPoint(102, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(2))
                S7ProSim.ReadOutputPoint(103, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(3))
                S7ProSim.ReadOutputPoint(104, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(4))
                S7ProSim.ReadOutputPoint(105, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(5))

                ''*************************************************
                ''''L_PS_DJ1_PFM12Complete.Value = IsBitSet(pDataCons(0), 0)
                ''''L_PS_DJ1_TC12SysFail.Value = IsBitSet(pDataCons(0), 1)
                If IsBitSet(pDataCons(0), 2) Then
                    PS_DJ1_TC12Home.BackColor = Color.Lime
                Else
                    PS_DJ1_TC12Home.BackColor = Color.Green
                End If
                If IsBitSet(pDataCons(0), 3) Then
                    PS_DJ1_TC12RotComplete.BackColor = Color.Lime
                Else
                    PS_DJ1_TC12RotComplete.BackColor = Color.Green
                End If
                If IsBitSet(pDataCons(0), 4) Then
                    PS_DJ1_TC12PrehCompl.BackColor = Color.Orange
                Else
                    PS_DJ1_TC12PrehCompl.BackColor = Color.Chocolate
                End If
                If IsBitSet(pDataCons(0), 5) Then
                    PS_DJ1_EmergStop.BackColor = Color.Red
                Else
                    PS_DJ1_EmergStop.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(0), 6) Then
                    PFM1_complete.BackColor = Color.Orange
                Else
                    PFM1_complete.BackColor = Color.Chocolate
                End If
                If IsBitSet(pDataCons(0), 7) Then
                    PFM2_complete.BackColor = Color.Orange
                Else
                    PFM2_complete.BackColor = Color.Chocolate
                End If

                ''*************************************************
                If IsBitSet(pDataCons(1), 0) Then
                    PS_SP_ReqPipe.BackColor = Color.Orange
                Else
                    PS_SP_ReqPipe.BackColor = Color.Chocolate
                End If
                If IsBitSet(pDataCons(1), 2) Then
                    PFM1_EmerStop.BackColor = Color.Red
                Else
                    PFM1_EmerStop.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(1), 3) Then
                    PFM2_EmerStop.BackColor = Color.Red
                Else
                    PFM2_EmerStop.BackColor = Color.DarkRed
                End If
                L_PS_SP_ClampHomeOn.Visible = IsBitSet(pDataCons(1), 4)
                L_PS_SP_ClampHomeOff.Visible = Not IsBitSet(pDataCons(1), 4)
                If IsBitSet(pDataCons(1), 5) Then
                    PS_SP_LineUpCmpl.BackColor = Color.Orange
                Else
                    PS_SP_LineUpCmpl.BackColor = Color.Chocolate
                End If
                If IsBitSet(pDataCons(1), 6) Then
                    PS_SP_W1Cmpl.BackColor = Color.Orange
                Else
                    PS_SP_W1Cmpl.BackColor = Color.Chocolate
                End If




                ''*************************************************
                L_SB_DJ1_PFM12CompleteOn.Visible = IsBitSet(pDataCons(2), 0)
                L_SB_DJ1_PFM12CompleteOff.Visible = Not IsBitSet(pDataCons(2), 0)
                L_SB_DJ1_TC12SysFailOn.Visible = IsBitSet(pDataCons(2), 1)
                L_SB_DJ1_TC12SysFailOff.Visible = Not IsBitSet(pDataCons(2), 1)
                If IsBitSet(pDataCons(2), 2) Then
                    SB_DJ1_TC12Home.BackColor = Color.Lime
                Else
                    SB_DJ1_TC12Home.BackColor = Color.ForestGreen
                End If
                If IsBitSet(pDataCons(2), 3) Then
                    SB_DJ1_TC12RotComplete.BackColor = Color.Orange
                Else
                    SB_DJ1_TC12RotComplete.BackColor = Color.Chocolate
                End If

                If IsBitSet(pDataCons(2), 4) Then
                    SB_JD1_TC12PrehCompl.BackColor = Color.Orange
                Else
                    SB_JD1_TC12PrehCompl.BackColor = Color.Chocolate
                End If
                If IsBitSet(pDataCons(2), 5) Then
                    SB_DJ1_EmergStop.BackColor = Color.Red
                Else
                    SB_DJ1_EmergStop.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(2), 6) Then
                    SB_SP_ReqPipe.BackColor = Color.Orange
                Else
                    SB_SP_ReqPipe.BackColor = Color.Chocolate
                End If



                ''*************************************************
                If IsBitSet(pDataCons(3), 0) Then
                    PS_DJ2_TC58Home.BackColor = Color.Orange
                Else
                    PS_DJ2_TC58Home.BackColor = Color.Chocolate
                End If
                If IsBitSet(pDataCons(3), 1) Then
                    PS_DJ2_EmerStop.BackColor = Color.Red
                Else
                    PS_DJ2_EmerStop.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(3), 2) Then
                    PS_W2_complete.BackColor = Color.Lime
                Else
                    PS_W2_complete.BackColor = Color.ForestGreen
                End If
                If IsBitSet(pDataCons(3), 3) Then
                    PS_W3_ReqPipe.BackColor = Color.Lime
                Else
                    PS_W3_ReqPipe.BackColor = Color.ForestGreen
                End If
                If IsBitSet(pDataCons(3), 4) Then
                    PS_W4_ReqPipe.BackColor = Color.Lime
                Else
                    PS_W4_ReqPipe.BackColor = Color.ForestGreen
                End If
                If IsBitSet(pDataCons(3), 5) Then
                    PS_W3_complete.BackColor = Color.Lime
                Else
                    PS_W3_complete.BackColor = Color.ForestGreen
                End If
                If IsBitSet(pDataCons(3), 6) Then
                    PS_W4_complete.BackColor = Color.Lime
                Else
                    PS_W4_complete.BackColor = Color.ForestGreen
                End If

                ''*************************************************
                If IsBitSet(pDataCons(4), 0) Then
                    SB_DJ2_TC58Home.BackColor = Color.Orange
                Else
                    SB_DJ2_TC58Home.BackColor = Color.Chocolate
                End If
                If IsBitSet(pDataCons(4), 1) Then
                    SB_DJ2_EmerStop.BackColor = Color.Red
                Else
                    SB_DJ2_EmerStop.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(4), 2) Then
                    SB_W2_complete.BackColor = Color.Red
                Else
                    SB_W2_complete.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(4), 3) Then
                    SB_W3_ReqPipe.BackColor = Color.Red
                Else
                    SB_W3_ReqPipe.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(4), 4) Then
                    SB_W4_ReqPipe.BackColor = Color.Red
                Else
                    SB_W4_ReqPipe.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(4), 5) Then
                    SB_W3_complete.BackColor = Color.Red
                Else
                    SB_W3_complete.BackColor = Color.DarkRed
                End If
                If IsBitSet(pDataCons(4), 6) Then
                    SB_W4_complete.BackColor = Color.Red
                Else
                    SB_W4_complete.BackColor = Color.DarkRed
                End If

                ''*************************************************
                'SYSTEM TC34 5,0
                If IsBitSet(pDataCons(5), 1) Then
                    PS_DJ1_TC34Home.BackColor = Color.Lime
                Else
                    PS_DJ1_TC34Home.BackColor = Color.Green
                End If
                If IsBitSet(pDataCons(5), 2) Then
                    PS_DJ1_TC34RotComplete.BackColor = Color.Lime
                Else
                    PS_DJ1_TC34RotComplete.BackColor = Color.ForestGreen
                End If
                If IsBitSet(pDataCons(5), 3) Then
                    PS_DJ1_TC34PrehCompl.BackColor = Color.Orange
                Else
                    PS_DJ1_TC34PrehCompl.BackColor = Color.Chocolate
                End If

            End If
        End If

    End Sub
    Private Sub WriteInputConsole(ByVal InputNm As Byte, ByVal BitNm As Byte, ByVal Par As Boolean)
        Dim Adr As Integer
        Dim pDataInC(1) As Byte
        If Par Then
            pDataInC(0) = 255
        Else
            pDataInC(0) = 0
        End If
        If Connection And DriveMode Then
            Adr = InputNm * 8 + BitNm
            res = dc.writeBits(libnodave.daveInputs, 0, Adr, 1, pDataInC)
        Else
            MsgBox("No connection with PLC!")
        End If
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


    'PFM1                           
    Sub Sw_PS_PFM1_F1(ByVal Choice As Byte)
        'switch F1 console PFM1  man-auto-jog
        SwChoice(Choice, 9)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 0, Li)
            WriteInputConsole(1, 1, Ce)
            WriteInputConsole(1, 2, Ri)
        End If
        schF1_L.Visible = Li
        schF1_C.Visible = Ce
        schF1_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM1_C1(ByVal Choice As Byte)
        'switch C1 console PFM1  stop-run
        SwChoice(Choice, 13)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        End If
        schC1_L.Visible = Li
        schC1_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM1_R1(ByVal Choice As Byte)
        'switch R1 console PFM1 fwd-off-rev
        SwChoice(Choice, 19)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
        End If
        schR1_L.Visible = Li
        schR1_C.Visible = Ce
        schR1_R.Visible = Ri
    End Sub
    Sub Joy_C1(ByVal Choice As Byte)
        'joystick C1 console PFM1
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        End If
        JoyC1_C.Visible = Ce
        JoyC1_R.Visible = Ri
        JoyC1_L.Visible = Li
    End Sub
    Sub Joy_E1(ByVal Choice As Byte)
        'joystick E1 console PFM1
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Up)
        End If
        JoyE1_C.Visible = Ce
        JoyE1_D.Visible = Dw
        JoyE1_U.Visible = Up
    End Sub
    Sub Joy_C2(ByVal Choice As Byte)
        'joystick C2 console PFM2
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        End If
        JoyC2_C.Visible = Ce
        JoyC2_R.Visible = Ri
        JoyC2_L.Visible = Li
    End Sub
    Private Sub BschF1_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF1_L.Click
        Sw_PS_PFM1_F1(1)
    End Sub
    Private Sub BschF1_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF1_C.Click
        Sw_PS_PFM1_F1(2)
    End Sub
    Private Sub BschF1_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF1_R.Click
        Sw_PS_PFM1_F1(3)
    End Sub
    Private Sub BschC1_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschC1_L.Click
        Sw_PS_PFM1_C1(1)
    End Sub
    Private Sub BschC1_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschC1_R.Click
        Sw_PS_PFM1_C1(3)
    End Sub
    Private Sub BschR1_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR1_L.Click
        Sw_PS_PFM1_R1(1)
    End Sub
    Private Sub BschR1_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR1_C.Click
        Sw_PS_PFM1_R1(2)
    End Sub
    Private Sub BschR1_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR1_R.Click
        Sw_PS_PFM1_R1(3)
    End Sub
    Private Sub BJoyC1_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC1_R.MouseDown
        Joy_C1(1)
    End Sub
    Private Sub BJoyC1_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC1_R.MouseUp
        Joy_C1(0)
    End Sub
    Private Sub BJoyC1_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC1_L.MouseDown
        Joy_C1(3)
    End Sub
    Private Sub BJoyC1_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC1_L.MouseUp
        Joy_C1(0)
    End Sub
    Private Sub BJoyE1_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE1_D.MouseDown
        Joy_E1(2)
    End Sub
    Private Sub BJoyE1_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE1_D.MouseUp
        Joy_E1(0)
    End Sub
    Private Sub BJoyE1_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE1_U.MouseDown
        Joy_E1(4)
    End Sub
    Private Sub BJoyE1_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE1_U.MouseUp
        Joy_E1(0)
    End Sub
    'Push buttons
    Private Sub PFM1_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM1_complete.MouseDown
        S7ProSim.WriteInputPoint(100, 4, True)
    End Sub
    Private Sub PFM1_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM1_complete.MouseUp
        S7ProSim.WriteInputPoint(100, 4, False)
    End Sub
    Private Sub PFM1_EmerStop_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PFM1_EmerStop.CheckedChanged
        UpdateGUI()
    End Sub
    Private Sub PFM1_LampTest_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM1_LampTest.MouseDown
        S7ProSim.WriteInputPoint(102, 4, False)
    End Sub
    Private Sub PFM1_LampTest_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM1_LampTest.MouseUp
        S7ProSim.WriteInputPoint(102, 4, False)
    End Sub

    'PFM2                         
    Sub Sw_PS_PFM2_F2(ByVal Choice As Byte)
        'switch F2 console PFM2  man-auto-jog
        SwChoice(Choice, 10)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 0, Li)
            WriteInputConsole(1, 1, Ce)
            WriteInputConsole(1, 2, Ri)
        End If
        schF2_L.Visible = Li
        schF2_C.Visible = Ce
        schF2_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM2_C2(ByVal Choice As Byte)
        'switch C2 console PFM2  stop-run
        SwChoice(Choice, 14)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        End If
        schC2_L.Visible = Li
        schC2_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM2_R2(ByVal Choice As Byte)
        'switch R2 console PFM2 fwd-off-rev
        SwChoice(Choice, 20)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
        End If
        schR2_L.Visible = Li
        schR2_C.Visible = Ce
        schR2_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM2_L1(ByVal Choice As Byte)
        'switch L1 console PFM2  local-remote
        SwChoice(Choice, 17)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        End If
        schL1_L.Visible = Li
        schL1_R.Visible = Ri
    End Sub
    Sub Joy_E2(ByVal Choice As Byte)
        'joystick E2 console PFM2
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Up)
        End If
        JoyE2_C.Visible = Ce
        JoyE2_D.Visible = Dw
        JoyE2_U.Visible = Up
    End Sub
    Private Sub BschF2_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF2_L.Click
        Sw_PS_PFM2_F2(1)
    End Sub
    Private Sub BschF2_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF2_C.Click
        Sw_PS_PFM2_F2(2)
    End Sub
    Private Sub BschF2_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF2_R.Click
        Sw_PS_PFM2_F2(3)
    End Sub
    Private Sub BschC2_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschC2_L.Click
        Sw_PS_PFM2_C2(1)
    End Sub
    Private Sub BschC2_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschC2_R.Click
        Sw_PS_PFM2_C2(3)
    End Sub
    Private Sub BschR2_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR2_L.Click
        Sw_PS_PFM2_R2(1)
    End Sub
    Private Sub BschR2_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR2_C.Click
        Sw_PS_PFM2_R2(2)
    End Sub
    Private Sub BschR2_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR2_R.Click
        Sw_PS_PFM2_R2(3)
    End Sub
    Private Sub BschL1_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschL1_L.Click
        Sw_PS_PFM2_L1(1)
    End Sub
    Private Sub BschL1_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschL1_R.Click
        Sw_PS_PFM2_L1(3)
    End Sub
    Private Sub BJoyC2_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC2_R.MouseDown
        Joy_C2(1)
    End Sub
    Private Sub BJoyC2_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC2_R.MouseUp
        Joy_C2(0)
    End Sub
    Private Sub BJoyC2_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC2_L.MouseDown
        Joy_C2(3)
    End Sub
    Private Sub BJoyC2_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC2_L.MouseUp
        Joy_C2(0)
    End Sub
    Private Sub BJoyE2_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE2_D.MouseDown
        Joy_E2(2)
    End Sub
    Private Sub BJoyE2_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE2_D.MouseUp
        Joy_E2(0)
    End Sub
    Private Sub BJoyE2_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE2_U.MouseDown
        Joy_E2(4)
    End Sub
    Private Sub BJoyE2_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE2_U.MouseUp
        Joy_E2(0)
    End Sub
    'Push buttons
    Private Sub PFM2_EmerStop_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PFM2_EmerStop.CheckedChanged
        UpdateGUI()
    End Sub
    Private Sub PFM2_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM2_complete.MouseDown
        S7ProSim.WriteInputPoint(103, 4, True)
    End Sub
    Private Sub PFM2_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM2_complete.MouseUp
        S7ProSim.WriteInputPoint(103, 4, False)
    End Sub

    'PFM3                         
    Sub Sw_PS_PFM3_F3(ByVal Choice As Byte)
        'switch F3 console PFM3  man-auto-jog
        SwChoice(Choice, 11)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 0, Li)
            WriteInputConsole(1, 1, Ce)
            WriteInputConsole(1, 2, Ri)
        End If
        schF3_L.Visible = Li
        schF3_C.Visible = Ce
        schF3_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM3_C3(ByVal Choice As Byte)
        'switch C3 console PFM3  stop-run
        SwChoice(Choice, 15)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        End If
        schC3_L.Visible = Li
        schC3_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM3_R3(ByVal Choice As Byte)
        'switch R3 console PFM3 fwd-off-rev
        SwChoice(Choice, 21)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
        End If
        schR3_L.Visible = Li
        schR3_C.Visible = Ce
        schR3_R.Visible = Ri
    End Sub
    Sub Joy_C3(ByVal Choice As Byte)
        'joystick C3 console PFM3
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        End If
        JoyC3_C.Visible = Ce
        JoyC3_R.Visible = Ri
        JoyC3_L.Visible = Li
    End Sub
    Sub Joy_E3(ByVal Choice As Byte)
        'joystick E3 console PFM3
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Up)
        End If
        JoyE3_C.Visible = Ce
        JoyE3_D.Visible = Dw
        JoyE3_U.Visible = Up
    End Sub
    Private Sub BschF3_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF3_L.Click
        Sw_PS_PFM3_F3(1)
    End Sub
    Private Sub BschF3_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF3_C.Click
        Sw_PS_PFM3_F3(2)
    End Sub
    Private Sub BschF3_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF3_R.Click
        Sw_PS_PFM3_F3(3)
    End Sub
    Private Sub BschC3_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschC3_L.Click
        Sw_PS_PFM3_C3(1)
    End Sub
    Private Sub BschC3_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschC3_R.Click
        Sw_PS_PFM3_C3(3)
    End Sub
    Private Sub BschR3_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR3_L.Click
        Sw_PS_PFM3_R3(1)
    End Sub
    Private Sub BschR3_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR3_C.Click
        Sw_PS_PFM3_R3(2)
    End Sub
    Private Sub BschR3_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR3_R.Click
        Sw_PS_PFM3_R3(3)
    End Sub
    Private Sub BschL2_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschL2_L.Click
        Sw_PS_PFM4_L2(1)
    End Sub
    Private Sub BschL2_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschL2_R.Click
        Sw_PS_PFM4_L2(3)
    End Sub
    Private Sub BJoyC3_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC3_R.MouseDown
        Joy_C3(1)
    End Sub
    Private Sub BJoyC3_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC3_R.MouseUp
        Joy_C3(0)
    End Sub
    Private Sub BJoyC3_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC3_L.MouseDown
        Joy_C3(3)
    End Sub
    Private Sub BJoyC3_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC3_L.MouseUp
        Joy_C3(0)
    End Sub
    Private Sub BJoyE3_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE3_D.MouseDown
        Joy_E3(2)
    End Sub
    Private Sub BJoyE3_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE3_D.MouseUp
        Joy_E3(0)
    End Sub
    Private Sub BJoyE3_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE3_U.MouseDown
        Joy_E3(4)
    End Sub
    Private Sub BJoyE3_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE3_U.MouseUp
        Joy_E3(0)
    End Sub
    Private Sub PFM3_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM3_complete.MouseDown
        S7ProSim.WriteInputPoint(106, 4, True)
    End Sub
    Private Sub PFM3_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM3_complete.MouseUp
        S7ProSim.WriteInputPoint(106, 4, False)
    End Sub
    Private Sub PFM3_EmerStop_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PFM3_EmerStop.CheckedChanged
        UpdateGUI()
    End Sub

    'Console PFM4                          
    Sub Sw_PS_PFM4_F4(ByVal Choice As Byte)
        'switch F4 console PFM4  man-auto-jog
        SwChoice(Choice, 12)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 0, Li)
            WriteInputConsole(1, 1, Ce)
            WriteInputConsole(1, 2, Ri)
        End If
        schF4_L.Visible = Li
        schF4_C.Visible = Ce
        schF4_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM4_C4(ByVal Choice As Byte)
        'switch C4 console PFM4  stop-run
        SwChoice(Choice, 16)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        End If
        schC4_L.Visible = Li
        schC4_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM4_R4(ByVal Choice As Byte)
        'switch R4 console PFM4 fwd-off-rev
        SwChoice(Choice, 22)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
        End If
        schR4_L.Visible = Li
        schR4_C.Visible = Ce
        schR4_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM4_L2(ByVal Choice As Byte)
        'switch L2 console PFM4  local-remote
        SwChoice(Choice, 18)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        End If
        schL2_L.Visible = Li
        schL2_R.Visible = Ri
    End Sub
    Sub Sw_PS_PFM4_R5(ByVal Choice As Byte)
        'switch R5 console PFM4 long fwd-off-rev
        SwChoice(Choice, 23)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
        End If
        schR5_L.Visible = Li
        schR5_C.Visible = Ce
        schR5_R.Visible = Ri
    End Sub
    Sub Joy_C4(ByVal Choice As Byte)
        'joystick C4 console PFM4
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        End If
        JoyC4_C.Visible = Ce
        JoyC4_R.Visible = Ri
        JoyC4_L.Visible = Li
    End Sub
    Sub Joy_E4(ByVal Choice As Byte)
        'joystick E4 console PFM4
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Up)
        End If
        JoyE4_C.Visible = Ce
        JoyE4_D.Visible = Dw
        JoyE4_U.Visible = Up
    End Sub
    Private Sub BschF4_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF4_L.Click
        Sw_PS_PFM4_F4(1)
    End Sub
    Private Sub BschF4_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF4_C.Click
        Sw_PS_PFM4_F4(2)
    End Sub
    Private Sub BschF4_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschF4_R.Click
        Sw_PS_PFM4_F4(3)
    End Sub
    Private Sub BschC4_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschC4_L.Click
        Sw_PS_PFM4_C4(1)
    End Sub
    Private Sub BschC4_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschC4_R.Click
        Sw_PS_PFM4_C4(3)
    End Sub
    Private Sub BschR4_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR4_L.Click
        Sw_PS_PFM4_R4(1)
    End Sub
    Private Sub BschR4_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR4_C.Click
        Sw_PS_PFM4_R4(2)
    End Sub
    Private Sub BschR4_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR4_R.Click
        Sw_PS_PFM4_R4(3)
    End Sub
    Private Sub BschR5_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR5_L.Click
        Sw_PS_PFM4_R5(1)
    End Sub
    Private Sub BschR5_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR5_C.Click
        Sw_PS_PFM4_R5(2)
    End Sub
    Private Sub BschR5_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschR5_R.Click
        Sw_PS_PFM4_R5(3)
    End Sub
    Private Sub BJoyC4_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC4_R.MouseDown
        Joy_C4(1)
    End Sub
    Private Sub BJoyC4_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC4_R.MouseUp
        Joy_C4(0)
    End Sub
    Private Sub BJoyC4_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC4_L.MouseDown
        Joy_C4(3)
    End Sub
    Private Sub BJoyC4_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyC4_L.MouseUp
        Joy_C4(0)
    End Sub
    Private Sub BJoyE4_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE4_D.MouseDown
        Joy_E4(2)
    End Sub
    Private Sub BJoyE4_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE4_D.MouseUp
        Joy_E4(0)
    End Sub
    Private Sub BJoyE4_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE4_U.MouseDown
        Joy_E4(4)
    End Sub
    Private Sub BJoyE4_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyE4_U.MouseUp
        Joy_E4(0)
    End Sub
    Private Sub PFM4_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM4_complete.MouseDown
        S7ProSim.WriteInputPoint(109, 4, True)
    End Sub
    Private Sub PFM4_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PFM4_complete.MouseUp
        S7ProSim.WriteInputPoint(109, 4, False)
    End Sub
    Private Sub PFM4_EmerStop_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PFM4_EmerStop.CheckedChanged
        UpdateGUI()
    End Sub

    'CC-PS-SP    
    Sub Sw_PS_SP_A1(ByVal Choice As Byte)
        'switch A1 console CC-PS-SP local-remote
        SwChoice(Choice, 5)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 2, Li)
            WriteInputConsole(1, 3, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(121, 2, Li)
            S7ProSim.WriteInputPoint(121, 3, Ri)
        End If
        schA1_L.Visible = Li
        schA1_R.Visible = Ri
    End Sub
    Sub Sw_PS_SP_A2(ByVal Choice As Byte)
        'switch A2 console CC-PS-SP rear retract - expand
        SwChoice(Choice, 6)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 2, Li)
            WriteInputConsole(1, 3, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(121, 4, Li)
            S7ProSim.WriteInputPoint(121, 5, Ri)
        End If
        schA2_L.Visible = Li
        schA2_R.Visible = Ri
    End Sub
    Sub Sw_PS_SP_A3(ByVal Choice As Byte)
        'switch A3 console CC-PS-SP front retract - expand
        SwChoice(Choice, 7)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 2, Li)
            WriteInputConsole(1, 3, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(121, 6, Li)
            S7ProSim.WriteInputPoint(121, 7, Ri)
        End If
        schA3_L.Visible = Li
        schA3_R.Visible = Ri
    End Sub
    Sub Sw_PS_SP_A4(ByVal Choice As Byte)
        'switch A4 console CC-PS-SP force 1 - 2
        SwChoice(Choice, 8)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 2, Li)
            WriteInputConsole(1, 3, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(122, 0, Li)
            S7ProSim.WriteInputPoint(122, 1, Ri)
        End If
        schA4_L.Visible = Li
        schA4_R.Visible = Ri
    End Sub
    Sub Sw_PS_SP_A5(ByVal Choice As Byte)
        'switch A5 console CC-PS-SP Rollers rev-auto-fwd
        SwChoice(Choice, 8)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 2, Li)
            WriteInputConsole(1, 3, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(122, 3, Li)
            S7ProSim.WriteInputPoint(122, 4, Ce)
            S7ProSim.WriteInputPoint(122, 5, Ri)
        End If
        schA5_L.Visible = Li
        schA5_C.Visible = Ce
        schA5_R.Visible = Ri
    End Sub
    Private Sub BschA5_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Sw_PS_SP_A5(3)
    End Sub
    Private Sub BschA5_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Sw_PS_SP_A5(2)
    End Sub
    Private Sub BschA5_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Sw_PS_SP_A5(1)
    End Sub
    Private Sub BschA1_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA1_R.Click
        Sw_PS_SP_A1(3)
    End Sub
    Private Sub BschA1_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA1_L.Click
        Sw_PS_SP_A1(1)
    End Sub
    Private Sub BschA1_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschA1_R.MouseDown
        'Sw_PS_SP_A1(3)
    End Sub
    Private Sub BschA1_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschA1_R.MouseUp
        'Sw_PS_SP_A1(1)
    End Sub
    Private Sub BschA2_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA2_L.Click
        Sw_PS_SP_A2(1)
    End Sub
    Private Sub BschA2_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA2_R.Click
        Sw_PS_SP_A2(3)
    End Sub
    Private Sub BschA3_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA3_L.Click
        Sw_PS_SP_A3(1)
    End Sub
    Private Sub BschA3_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA3_R.Click
        Sw_PS_SP_A3(3)
    End Sub
    Private Sub BschA4_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA4_L.Click
        Sw_PS_SP_A4(1)
    End Sub
    Private Sub BschA4_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA4_R.Click
        Sw_PS_SP_A4(3)
    End Sub
    Private Sub BschA5_R_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA5_R.Click
        Sw_PS_SP_A5(3)
    End Sub
    Private Sub BschA5_C_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA5_C.Click
        Sw_PS_SP_A5(2)
    End Sub
    Private Sub BschA5_L_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschA5_L.Click
        Sw_PS_SP_A5(1)
    End Sub
    Sub Joy_A1(ByVal Choice As Byte)
        'joystick LCO 7A console CC_PS_SP

        JoyChoice(Choice)
        If Connection And DriveMode Then
            If Ri Then
                buf = (BitConverter.GetBytes(libnodave.daveSwapIed_16(CShort(TrackBarAF.Value / 2))))
             ElseIf Li Then
                buf = (BitConverter.GetBytes(libnodave.daveSwapIed_16(CShort(-TrackBarAF.Value / 2))))
            Else
                buf(0) = 0
                buf(1) = 0
            End If
            res = dc.writeBytes(libnodave.daveInputs, 0, 20, 2, buf)
            res = dc.writeBytes(libnodave.daveFlags, 0, 192, 2, buf)
        ElseIf (ConnectionSim) Then
            pDataJoy(0) = 0
            If Ri Then
                pDataJoy(1) = TrackBarAF.Value
            ElseIf Li Then
                pDataJoy(1) = -TrackBarAF.Value
            Else
                pDataJoy(1) = 0
            End If
            S7ProSim.WriteInputImage(150, pDataJoy)
        End If
        JoyA1_C.Visible = Ce
        JoyA1_R.Visible = Ri
        JoyA1_L.Visible = Li
    End Sub
    Sub Joy_A2(ByVal Choice As Byte)
        'joystick LCO 7B console CC_PS_SP
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        ElseIf (ConnectionSim) Then
            pDataJoy(0) = 0
            If Ri Then
                pDataJoy(1) = TrackBarAF.Value
            ElseIf Li Then
                pDataJoy(1) = -TrackBarAF.Value
            Else
                pDataJoy(1) = 0
            End If
            S7ProSim.WriteInputImage(154, pDataJoy)
        End If
        JoyA2_C.Visible = Ce
        JoyA2_R.Visible = Ri
        JoyA2_L.Visible = Li
    End Sub
    Sub Joy_A3(ByVal Choice As Byte)
        'joystick NO TAKE console CC_PS_PS
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            If Up Then
                pDataJoy(0) = TrackBarTR.Value
            ElseIf Dw Then
                pDataJoy(0) = -TrackBarTR.Value
            Else
                pDataJoy(0) = 0
            End If
            If Ri Then
                pDataJoy(1) = TrackBarAF.Value
            ElseIf Li Then
                pDataJoy(1) = -TrackBarAF.Value
            Else
                pDataJoy(1) = 0
            End If
            S7ProSim.WriteInputImage(158, pDataJoy)
        End If
        JoyA3_C.Visible = Ce
        JoyA3_R.Visible = Ri
        JoyA3_D.Visible = Dw
        JoyA3_L.Visible = Li
        JoyA3_U.Visible = Up
    End Sub
    Sub Joy_A4(ByVal Choice As Byte)
        'joystick ELC 3 console CC_PS_PS
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Up)
        ElseIf (ConnectionSim) Then
            If Up Then
                pDataJoy(0) = TrackBarTR.Value
            ElseIf Dw Then
                pDataJoy(0) = -TrackBarTR.Value
            Else
                pDataJoy(0) = 0
            End If
            pDataJoy(1) = 0
            S7ProSim.WriteInputImage(162, pDataJoy)
        End If
        JoyA4_C.Visible = Ce
        JoyA4_D.Visible = Dw
        JoyA4_U.Visible = Up
    End Sub
    Sub Joy_A5(ByVal Choice As Byte)
        'joystick ELS 4 console CC_PS_PS
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Up)
        ElseIf (ConnectionSim) Then
            If Up Then
                pDataJoy(0) = TrackBarTR.Value
            ElseIf Dw Then
                pDataJoy(0) = -TrackBarTR.Value
            Else
                pDataJoy(0) = 0
            End If
            pDataJoy(1) = 0
            S7ProSim.WriteInputImage(166, pDataJoy)
        End If
        JoyA5_C.Visible = Ce
        JoyA5_D.Visible = Dw
        JoyA5_U.Visible = Up
    End Sub
    Sub Joy_A6(ByVal Choice As Byte)
        'joystick LLC 3 console CC_PS_PS
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            If Up Then
                pDataJoy(0) = TrackBarTR.Value
            ElseIf Dw Then
                pDataJoy(0) = -TrackBarTR.Value
            Else
                pDataJoy(0) = 0
            End If
            If Ri Then
                pDataJoy(1) = TrackBarAF.Value
            ElseIf Li Then
                pDataJoy(1) = -TrackBarAF.Value
            Else
                pDataJoy(1) = 0
            End If
            S7ProSim.WriteInputImage(170, pDataJoy)
        End If
        JoyA6_C.Visible = Ce
        JoyA6_R.Visible = Ri
        JoyA6_D.Visible = Dw
        JoyA6_L.Visible = Li
        JoyA6_U.Visible = Up
    End Sub
    Sub Joy_A7(ByVal Choice As Byte)
        'joystick LLC 4 console CC_PS_PS
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            If Up Then
                pDataJoy(0) = TrackBarTR.Value
            ElseIf Dw Then
                pDataJoy(0) = -TrackBarTR.Value
            Else
                pDataJoy(0) = 0
            End If
            If Ri Then
                pDataJoy(1) = TrackBarAF.Value
            ElseIf Li Then
                pDataJoy(1) = -TrackBarAF.Value
            Else
                pDataJoy(1) = 0
            End If
            S7ProSim.WriteInputImage(174, pDataJoy)
        End If
        JoyA7_C.Visible = Ce
        JoyA7_R.Visible = Ri
        JoyA7_D.Visible = Dw
        JoyA7_L.Visible = Li
        JoyA7_U.Visible = Up
    End Sub
    Sub Joy_A8(ByVal Choice As Byte)
        'joystick NEST Rotate console CC_PS_SP
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(118, 0, Ri)
            'S7ProSim.WriteInputPoint(118, 1, Dw)
            S7ProSim.WriteInputPoint(118, 2, Li)
            'S7ProSim.WriteInputPoint(118, 3, Up)
        End If
        JoyA8_C.Visible = Ce
        JoyA8_R.Visible = Ri
        JoyA8_L.Visible = Li
    End Sub
    Sub Joy_A9(ByVal Choice As Byte)
        'joystick Nest Travel console CC_PS_PS
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(118, 4, Ri)
            S7ProSim.WriteInputPoint(118, 5, Dw)
            S7ProSim.WriteInputPoint(118, 6, Li)
            S7ProSim.WriteInputPoint(118, 7, Up)
        End If
        JoyA9_C.Visible = Ce
        JoyA9_R.Visible = Ri
        JoyA9_D.Visible = Dw
        JoyA9_L.Visible = Li
        JoyA9_U.Visible = Up
    End Sub
    Sub Joy_A10(ByVal Choice As Byte)
        'joystick Clamp travel console CC_PS_SP
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(119, 0, Ri)
            S7ProSim.WriteInputPoint(119, 1, Dw)
            S7ProSim.WriteInputPoint(119, 2, Li)
            S7ProSim.WriteInputPoint(119, 3, Up)
        End If
        JoyA10_C.Visible = Ce
        JoyA10_R.Visible = Ri
        JoyA10_L.Visible = Li
    End Sub
    Sub Joy_A11(ByVal Choice As Byte)
        'joystick Turning Rollers console CC_PS_PS
        JoyChoice(Choice)
        If Connection And DriveMode Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(119, 4, Ri)
            S7ProSim.WriteInputPoint(119, 5, Dw)
            S7ProSim.WriteInputPoint(119, 6, Li)
            S7ProSim.WriteInputPoint(119, 7, Up)
        End If
        JoyA11_C.Visible = Ce
        JoyA11_R.Visible = Ri
        JoyA11_D.Visible = Dw
        JoyA11_L.Visible = Li
        JoyA11_U.Visible = Up
    End Sub
    Sub Joy_A12(ByVal Choice As Byte)
        'joystick Pipe Elevate console CC_PS_PS
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Up)
        ElseIf (ConnectionSim) Then
            'S7ProSim.WriteInputPoint(120, 0, Ri)
            S7ProSim.WriteInputPoint(120, 1, Dw)
            'S7ProSim.WriteInputPoint(120, 2, Li)
            S7ProSim.WriteInputPoint(120, 3, Up)
        End If
        JoyA12_C.Visible = Ce
        JoyA12_D.Visible = Dw
        JoyA12_U.Visible = Up
    End Sub
    Private Sub BJoyA1_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA1_R.MouseDown
        Joy_A1(1)
    End Sub
    Private Sub BJoyA1_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA1_R.MouseUp
        Joy_A1(0)
    End Sub
    Private Sub BJoyA1_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA1_L.MouseDown
        Joy_A1(3)
    End Sub
    Private Sub BJoyA1_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA1_L.MouseUp
        Joy_A1(0)
    End Sub
    Private Sub BJoyA2_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA2_R.MouseDown
        Joy_A2(1)
    End Sub
    Private Sub BJoyA2_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA2_R.MouseUp
        Joy_A2(0)
    End Sub
    Private Sub BJoyA2_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA2_L.MouseDown
        Joy_A2(3)
    End Sub
    Private Sub BJoyA2_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA2_L.MouseUp
        Joy_A2(0)
    End Sub
    Private Sub BJoyA3_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA3_R.MouseDown
        Joy_A3(1)
    End Sub
    Private Sub BJoyA3_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA3_R.MouseUp
        Joy_A3(0)
    End Sub
    Private Sub BJoyA3_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA3_D.MouseDown
        Joy_A3(2)
    End Sub
    Private Sub BJoyA3_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA3_D.MouseUp
        Joy_A3(0)
    End Sub
    Private Sub BJoyA3_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA3_L.MouseDown
        Joy_A3(3)
    End Sub
    Private Sub BJoyA3_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA3_L.MouseUp
        Joy_A3(0)
    End Sub
    Private Sub BJoyA3_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA3_U.MouseDown
        Joy_A3(4)
    End Sub
    Private Sub BJoyA3_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA3_U.MouseUp
        Joy_A3(0)
    End Sub
    Private Sub BJoyA4_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA4_D.MouseDown
        Joy_A4(2)
    End Sub
    Private Sub BJoyA4_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA4_D.MouseUp
        Joy_A4(0)
    End Sub
    Private Sub BJoyA4_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA4_U.MouseDown
        Joy_A4(4)
    End Sub
    Private Sub BJoyA4_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA4_U.MouseUp
        Joy_A4(0)
    End Sub
    Private Sub BJoyA5_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA5_D.MouseDown
        Joy_A5(2)
    End Sub
    Private Sub BJoyA5_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA5_D.MouseUp
        Joy_A5(0)
    End Sub
    Private Sub BJoyA5_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA5_U.MouseDown
        Joy_A5(4)
    End Sub
    Private Sub BJoyA5_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA5_U.MouseUp
        Joy_A5(0)
    End Sub
    Private Sub BJoyA6_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA6_R.MouseDown
        Joy_A6(1)
    End Sub
    Private Sub BJoyA6_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA6_R.MouseUp
        Joy_A6(0)
    End Sub
    Private Sub BJoyA6_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA6_D.MouseDown
        Joy_A6(2)
    End Sub
    Private Sub BJoyA6_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA6_D.MouseUp
        Joy_A6(0)
    End Sub
    Private Sub BJoyA6_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA6_L.MouseDown
        Joy_A6(3)
    End Sub
    Private Sub BJoyA6_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA6_L.MouseUp
        Joy_A6(0)
    End Sub
    Private Sub BJoyA6_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA6_U.MouseDown
        Joy_A6(4)
    End Sub
    Private Sub BJoyA6_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA6_U.MouseUp
        Joy_A6(0)
    End Sub
    Private Sub BJoyA7_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA7_R.MouseDown
        Joy_A7(1)
    End Sub
    Private Sub BJoyA7_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA7_R.MouseUp
        Joy_A7(0)
    End Sub
    Private Sub BJoyA7_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA7_D.MouseDown
        Joy_A7(2)
    End Sub
    Private Sub BJoyA7_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA7_D.MouseUp
        Joy_A7(0)
    End Sub
    Private Sub BJoyA7_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA7_L.MouseDown
        Joy_A7(3)
    End Sub
    Private Sub BJoyA7_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA7_L.MouseUp
        Joy_A7(0)
    End Sub
    Private Sub BJoyA7_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA7_U.MouseDown
        Joy_A7(4)
    End Sub
    Private Sub BJoyA7_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA7_U.MouseUp
        Joy_A7(0)
    End Sub
    Private Sub BJoyA8_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA8_R.MouseDown
        Joy_A8(1)
    End Sub
    Private Sub BJoyA8_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA8_R.MouseUp
        Joy_A8(0)
    End Sub
    Private Sub BJoyA8_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA8_L.MouseDown
        Joy_A8(3)
    End Sub
    Private Sub BJoyA8_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA8_L.MouseUp
        Joy_A8(0)
    End Sub
    Private Sub BJoyA9_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA9_R.MouseDown
        Joy_A9(1)
    End Sub
    Private Sub BJoyA9_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA9_R.MouseUp
        Joy_A9(0)
    End Sub
    Private Sub BJoyA9_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA9_D.MouseDown
        Joy_A9(2)
    End Sub
    Private Sub BJoyA9_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA9_D.MouseUp
        Joy_A9(0)
    End Sub
    Private Sub BJoyA9_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA9_L.MouseDown
        Joy_A9(3)
    End Sub
    Private Sub BJoyA9_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA9_L.MouseUp
        Joy_A9(0)
    End Sub
    Private Sub BJoyA9_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA9_U.MouseDown
        Joy_A9(4)
    End Sub
    Private Sub BJoyA9_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA9_U.MouseUp
        Joy_A9(0)
    End Sub
    Private Sub BJoyA10_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA10_R.MouseDown
        Joy_A10(1)
    End Sub
    Private Sub BJoyA10_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA10_R.MouseUp
        Joy_A10(0)
    End Sub
    Private Sub BJoyA10_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA10_L.MouseDown
        Joy_A10(3)
    End Sub
    Private Sub BJoyA10_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA10_L.MouseUp
        Joy_A10(0)
    End Sub
    Private Sub BJoyA11_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA11_R.MouseDown
        Joy_A11(1)
    End Sub
    Private Sub BJoyA11_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA11_R.MouseUp
        Joy_A11(0)
    End Sub
    Private Sub BJoyA11_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA11_D.MouseDown
        Joy_A11(2)
    End Sub
    Private Sub BJoyA11_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA11_D.MouseUp
        Joy_A11(0)
    End Sub
    Private Sub BJoyA11_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA11_L.MouseDown
        Joy_A11(3)
    End Sub
    Private Sub BJoyA11_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA11_L.MouseUp
        Joy_A11(0)
    End Sub
    Private Sub BJoyA11_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA11_U.MouseDown
        Joy_A11(4)
    End Sub
    Private Sub BJoyA11_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA11_U.MouseUp
        Joy_A11(0)
    End Sub
    Private Sub BJoyA12_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA12_D.MouseDown
        Joy_A12(2)
    End Sub
    Private Sub BJoyA12_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA12_D.MouseUp
        Joy_A12(0)
    End Sub
    Private Sub BJoyA12_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA12_U.MouseDown
        Joy_A12(4)
    End Sub
    Private Sub BJoyA12_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyA12_U.MouseUp
        Joy_A12(0)
    End Sub
    Private Sub TrackBar1_Scroll(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TrackBarTR.Scroll
        UpdateGUI()
    End Sub
    Private Sub TrackBarAbForce_Scroll(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TrackBarAF.Scroll
        UpdateGUI()
    End Sub
    'Push buttons
    Private Sub PS_SP_ReqPipe_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_SP_ReqPipe.MouseDown
        S7ProSim.WriteInputPoint(100, 7, True)
    End Sub
    Private Sub PS_SP_ReqPipe_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_SP_ReqPipe.MouseUp
        S7ProSim.WriteInputPoint(100, 7, False)
    End Sub
    Private Sub PS_SP_LineUpCmpl_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_SP_LineUpCmpl.MouseDown
        S7ProSim.WriteInputPoint(121, 0, True)
    End Sub
    Private Sub PS_SP_LineUpCmpl_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_SP_LineUpCmpl.MouseUp
        S7ProSim.WriteInputPoint(121, 0, False)
    End Sub
    Private Sub PS_SP_W1Cmpl_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_SP_W1Cmpl.MouseDown
        S7ProSim.WriteInputPoint(121, 1, True)
    End Sub
    Private Sub PS_SP_W1Cmpl_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_SP_W1Cmpl.MouseUp
        S7ProSim.WriteInputPoint(121, 1, False)
    End Sub
    Private Sub PS_SP_ESD_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PS_SP_ESD.CheckedChanged
        UpdateGUI()
    End Sub

    'CC-SB-SP
    Private Sub SB_SP_ReqPipe_MouseDown_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_SP_ReqPipe.MouseDown
        S7ProSim.WriteInputPoint(103, 7, True)
    End Sub
    Private Sub SB_SP_ReqPipe_MouseUp_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_SP_ReqPipe.MouseUp
        S7ProSim.WriteInputPoint(103, 7, False)
    End Sub

    'CC_PS_DJ1
    Sub Sw_PS_DJ1_P1(ByVal Choice As Byte)
        'switch P1 console CC_PS_DJ1 
        SwChoice(Choice, 1)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
            WriteInputConsole(0, 3, Wa)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(106, 0, Li)
            S7ProSim.WriteInputPoint(106, 1, Ce)
            S7ProSim.WriteInputPoint(106, 2, Ri)
            S7ProSim.WriteInputPoint(106, 3, Wa)
        End If
        schP1_L.Visible = Li
        schP1_C.Visible = Ce
        schP1_R.Visible = Ri
        schP1_W.Visible = Wa
    End Sub
    Sub Sw_PS_DJ1_P2(ByVal Choice As Byte)
        'switch P2 console CC_PS_DJ1  
        SwChoice(Choice, 2)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 3, Li)
            WriteInputConsole(0, 4, Ce)
            WriteInputConsole(0, 5, Ri)
            WriteInputConsole(0, 6, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(100, 0, Li)
            S7ProSim.WriteInputPoint(100, 1, Ce)
            S7ProSim.WriteInputPoint(100, 2, Ri)
            S7ProSim.WriteInputPoint(100, 3, Wa)
        End If
        schP2_L.Visible = Li
        schP2_C.Visible = Ce
        schP2_R.Visible = Ri
        schP2_W.Visible = Wa
    End Sub
    Sub Sw_PS_DJ1_P3(ByVal Choice As Byte)
        'switch P3 console CC_PS_DJ1  CYCLE 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(107, 6, Li)
            S7ProSim.WriteInputPoint(107, 7, Ri)
        End If
        schP3_L.Visible = Li
        schP3_R.Visible = Ri
    End Sub
    Sub Sw_PS_DJ1_P4(ByVal Choice As Byte)
        'switch P3 console CC_PS_DJ1  CYCLE 
        SwChoice(Choice, 4)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 0, Li)
            WriteInputConsole(1, 1, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(101, 6, Li)
            S7ProSim.WriteInputPoint(101, 7, Ri)
        End If
        schP4_L.Visible = Li
        schP4_R.Visible = Ri
    End Sub
    Sub Joy_P1(ByVal Choice As Byte)
        'joystick P1 console CC_PS_DJ1
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(107, 2, Ri)
            S7ProSim.WriteInputPoint(107, 3, Dw)
            S7ProSim.WriteInputPoint(107, 4, Li)
            S7ProSim.WriteInputPoint(107, 5, Up)
        End If
        JoyP1_C.Visible = Ce
        JoyP1_R.Visible = Ri
        JoyP1_D.Visible = Dw
        JoyP1_L.Visible = Li
        JoyP1_U.Visible = Up
    End Sub
    Sub Joy_P2(ByVal Choice As Byte)
        'joystick P2 console CC_PS_DJ1
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(101, 2, Ri)
            S7ProSim.WriteInputPoint(101, 3, Dw)
            S7ProSim.WriteInputPoint(101, 4, Li)
            S7ProSim.WriteInputPoint(101, 5, Up)
        End If
        JoyP2_C.Visible = Ce
        JoyP2_R.Visible = Ri
        JoyP2_D.Visible = Dw
        JoyP2_L.Visible = Li
        JoyP2_U.Visible = Up
    End Sub
    Sub Joy_P3(ByVal Choice As Byte)
        'joystick P3 console CC_PS_DJ1  NIET GEBRUIKTE JOYSTICK
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        End If
        JoyP3_C.Visible = Ce
        JoyP3_R.Visible = Ri
        JoyP3_L.Visible = Li
    End Sub
    Sub Joy_P4(ByVal Choice As Byte)
        'joystick P4 console CC_PS_DJ1
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 1, Ri)
            WriteInputConsole(0, 2, Li)
        End If
        JoyP4_C.Visible = Ce
        JoyP4_R.Visible = Ri
        JoyP4_L.Visible = Li
    End Sub
    Private Sub BschP1_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP1_L.Click
        Sw_PS_DJ1_P1(1)
    End Sub
    Private Sub BschP1_C_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP1_C.Click
        Sw_PS_DJ1_P1(2)
    End Sub
    Private Sub BschP1_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP1_R.Click
        Sw_PS_DJ1_P1(3)
    End Sub
    Private Sub BschP1_W_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP1_W.Click
        Sw_PS_DJ1_P1(4)
    End Sub
    Private Sub BschP2_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP2_L.Click
        Sw_PS_DJ1_P2(1)
    End Sub
    Private Sub BschP2_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP2_C.Click
        Sw_PS_DJ1_P2(2)
    End Sub
    Private Sub BschP2_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP2_R.Click
        Sw_PS_DJ1_P2(3)
    End Sub
    Private Sub BschP2_W_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP2_W.Click
        Sw_PS_DJ1_P2(4)
    End Sub
    Private Sub BschP3_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP3_L.Click
        Sw_PS_DJ1_P3(1)
    End Sub
    Private Sub BschP3_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP3_R.Click
        Sw_PS_DJ1_P3(3)
    End Sub
    Private Sub BschP4_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP4_L.Click
        Sw_PS_DJ1_P4(1)
    End Sub
    Private Sub BschP4_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP4_R.Click
        Sw_PS_DJ1_P4(3)
    End Sub
    Private Sub BJoyP1_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP1_R.MouseDown
        Joy_P1(1)
    End Sub
    Private Sub BJoyP1_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP1_R.MouseUp
        Joy_P1(0)
    End Sub
    Private Sub BJoyP1_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP1_D.MouseDown
        Joy_P1(2)
    End Sub
    Private Sub BJoyP1_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP1_D.MouseUp
        Joy_P1(0)
    End Sub
    Private Sub BJoyP1_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP1_L.MouseDown
        Joy_P1(3)
    End Sub
    Private Sub BJoyP1_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP1_L.MouseUp
        Joy_P1(0)
    End Sub
    Private Sub BJoyP1_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP1_U.MouseDown
        Joy_P1(4)
    End Sub
    Private Sub BJoyP1_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP1_U.MouseUp
        Joy_P1(0)
    End Sub
    Private Sub BJoyP2_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP2_R.MouseDown
        Joy_P2(1)
    End Sub
    Private Sub BJoyP2_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP2_R.MouseUp
        Joy_P2(0)
    End Sub
    Private Sub BJoyP2_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP2_D.MouseDown
        Joy_P2(2)
    End Sub
    Private Sub BJoyP2_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP2_D.MouseUp
        Joy_P2(0)
    End Sub
    Private Sub BJoyP2_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP2_L.MouseDown
        Joy_P2(3)
    End Sub
    Private Sub BJoyP2_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP2_L.MouseUp
        Joy_P2(0)
    End Sub
    Private Sub BJoyP2_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP2_U.MouseDown
        Joy_P2(4)
    End Sub
    Private Sub BJoyP2_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP2_U.MouseUp
        Joy_P2(0)
    End Sub
    'P3, P4 NIET GEBRUIKTE
    Private Sub BJoyP3_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP3_R.MouseDown
        Joy_P3(1)
    End Sub
    Private Sub BJoyP3_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP3_R.MouseUp
        Joy_P3(0)
    End Sub
    Private Sub BJoyP3_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP3_L.MouseDown
        Joy_P3(3)
    End Sub
    Private Sub BJoyP3_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP3_L.MouseUp
        Joy_P3(0)
    End Sub
    Private Sub BJoyP4_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP4_R.MouseDown
        Joy_P4(1)
    End Sub
    Private Sub BJoyP4_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP4_R.MouseUp
        Joy_P4(0)
    End Sub
    Private Sub BJoyP4_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP4_L.MouseDown
        Joy_P4(3)
    End Sub
    Private Sub BJoyP4_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP4_L.MouseUp
        Joy_P4(0)
    End Sub
    'Push buttons
    Private Sub PS_DJ1_TC12Home_MouseDown_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC12Home.MouseDown
        S7ProSim.WriteInputPoint(101, 1, True)
    End Sub
    Private Sub PS_DJ1_TC12Home_MouseUp_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC12Home.MouseUp
        S7ProSim.WriteInputPoint(101, 1, False)
    End Sub
    Private Sub PS_DJ1_TC12RotComplete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC12RotComplete.MouseDown
        S7ProSim.WriteInputPoint(100, 6, True)
    End Sub
    Private Sub PS_DJ1_TC12RotComplete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC12RotComplete.MouseUp
        S7ProSim.WriteInputPoint(100, 6, False)
    End Sub
    Private Sub PS_DJ1_TC12PrehCompl_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC12PrehCompl.MouseDown
        S7ProSim.WriteInputPoint(103, 5, True)
    End Sub
    Private Sub PS_DJ1_TC12PrehCompl_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC12PrehCompl.MouseUp
        S7ProSim.WriteInputPoint(103, 5, True)
    End Sub
    Private Sub PS_DJ1_TC34PrehCompl_MouseDown_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC34PrehCompl.MouseDown
        S7ProSim.WriteInputPoint(106, 5, True)
    End Sub
    Private Sub PS_DJ1_TC34PrehCompl_MouseUp_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC34PrehCompl.MouseUp
        S7ProSim.WriteInputPoint(106, 5, False)
    End Sub
    Private Sub PS_DJ1_TC34RotComplete_MouseDown_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC34RotComplete.MouseDown
        S7ProSim.WriteInputPoint(106, 6, True)
    End Sub
    Private Sub PS_DJ1_TC34RotComplete_MouseUp_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC34RotComplete.MouseUp
        S7ProSim.WriteInputPoint(106, 6, False)
    End Sub
    Private Sub PS_DJ1_TC34Home_MouseDown_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC34Home.MouseDown
        S7ProSim.WriteInputPoint(107, 1, True)
    End Sub
    Private Sub PS_DJ1_TC34Home_MouseUp_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TC34Home.MouseUp
        S7ProSim.WriteInputPoint(107, 1, False)
    End Sub
    Private Sub PS_DJ1_TestLamp_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TestLamp.MouseDown
        S7ProSim.WriteInputPoint(102, 3, True)
    End Sub
    Private Sub PS_DJ1_TestLamp_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ1_TestLamp.MouseUp
        S7ProSim.WriteInputPoint(102, 3, False)
    End Sub
    Private Sub PS_DJ1_EmergStop_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PS_DJ1_EmergStop.CheckedChanged
        UpdateGUI()
    End Sub

    'CC_SB_DJ1                          
    Sub Sw_SB_DJ1_P5(ByVal Choice As Byte)
        'switch P5 console CC_SB_DJ1  
        SwChoice(Choice, 1)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
            WriteInputConsole(0, 3, Wa)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(109, 0, Li)
            S7ProSim.WriteInputPoint(109, 1, Ce)
            S7ProSim.WriteInputPoint(109, 2, Ri)
            S7ProSim.WriteInputPoint(109, 3, Wa)
        End If
        schP5_L.Visible = Li
        schP5_C.Visible = Ce
        schP5_R.Visible = Ri
        schP5_W.Visible = Wa
    End Sub
    Sub Sw_SB_DJ1_P6(ByVal Choice As Byte)
        'switch P6 console CC_SB_DJ1 
        SwChoice(Choice, 2)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 3, Li)
            WriteInputConsole(0, 4, Ce)
            WriteInputConsole(0, 5, Ri)
            WriteInputConsole(0, 6, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(103, 0, Li)
            S7ProSim.WriteInputPoint(103, 1, Ce)
            S7ProSim.WriteInputPoint(103, 2, Ri)
            S7ProSim.WriteInputPoint(103, 3, Wa)
        End If
        schP6_L.Visible = Li
        schP6_C.Visible = Ce
        schP6_R.Visible = Ri
        schP6_W.Visible = Wa
    End Sub
    Sub Sw_SB_DJ1_P7(ByVal Choice As Byte)
        'switch P7 console CC_SB_DJ1  CYCLE 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(110, 6, Li)
            S7ProSim.WriteInputPoint(110, 7, Ri)
        End If
        schP7_L.Visible = Li
        schP7_R.Visible = Ri
    End Sub
    Sub Sw_SB_DJ1_P8(ByVal Choice As Byte)
        'switch P8 console CC_SB_DJ1  CYCLE
        SwChoice(Choice, 4)
        If Connection And DriveMode And No Then
            WriteInputConsole(1, 0, Li)
            WriteInputConsole(1, 1, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(104, 6, Li)
            S7ProSim.WriteInputPoint(104, 7, Ri)
        End If
        schP8_L.Visible = Li
        schP8_R.Visible = Ri
    End Sub
    Private Sub BschP5_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP5_L.Click
        Sw_SB_DJ1_P5(1)
    End Sub
    Private Sub BschP5_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP5_C.Click
        Sw_SB_DJ1_P5(2)
    End Sub
    Private Sub BschP5_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP5_R.Click
        Sw_SB_DJ1_P5(3)
    End Sub
    Private Sub BschP5_W_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP5_W.Click
        Sw_SB_DJ1_P5(4)
    End Sub
    Private Sub BschP6_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP6_L.Click
        Sw_SB_DJ1_P6(1)
    End Sub
    Private Sub BschP6_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP6_C.Click
        Sw_SB_DJ1_P6(2)
    End Sub
    Private Sub BschP6_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP6_R.Click
        Sw_SB_DJ1_P6(3)
    End Sub
    Private Sub BschP6_W_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP6_W.Click
        Sw_SB_DJ1_P6(4)
    End Sub
    Private Sub BschP7_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP7_L.Click
        Sw_SB_DJ1_P7(1)
    End Sub
    Private Sub BschP7_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP7_R.Click
        Sw_SB_DJ1_P7(3)
    End Sub
    Private Sub BschP8_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP8_L.Click
        Sw_SB_DJ1_P8(1)
    End Sub
    Private Sub BschP8_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP8_R.Click
        Sw_SB_DJ1_P8(3)
    End Sub
    Sub Joy_P5(ByVal Choice As Byte)
        'joystick P5 console CC_SB_DJ1
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(110, 2, Ri)
            S7ProSim.WriteInputPoint(110, 3, Dw)
            S7ProSim.WriteInputPoint(110, 4, Li)
            S7ProSim.WriteInputPoint(110, 5, Up)
        End If
        JoyP5_C.Visible = Ce
        JoyP5_R.Visible = Ri
        JoyP5_D.Visible = Dw
        JoyP5_L.Visible = Li
        JoyP5_U.Visible = Up
    End Sub
    Sub Joy_P6(ByVal Choice As Byte)
        'joystick P2 console CC_SB_DJ1
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(104, 2, Ri)
            S7ProSim.WriteInputPoint(104, 3, Dw)
            S7ProSim.WriteInputPoint(104, 4, Li)
            S7ProSim.WriteInputPoint(104, 5, Up)
        End If
        JoyP6_C.Visible = Ce
        JoyP6_R.Visible = Ri
        JoyP6_D.Visible = Dw
        JoyP6_L.Visible = Li
        JoyP6_U.Visible = Up
    End Sub
    Private Sub BJoyP5_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP5_R.MouseDown
        Joy_P5(1)
    End Sub
    Private Sub BJoyP5_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP5_R.MouseUp
        Joy_P5(0)
    End Sub
    Private Sub BJoyP5_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP5_D.MouseDown
        Joy_P5(2)
    End Sub
    Private Sub BJoyP5_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP5_D.MouseUp
        Joy_P5(0)
    End Sub
    Private Sub BJoyP5_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP5_L.MouseDown
        Joy_P5(3)
    End Sub
    Private Sub BJoyP5_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP5_L.MouseUp
        Joy_P5(0)
    End Sub
    Private Sub BJoyP5_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP5_U.MouseDown
        Joy_P5(4)
    End Sub
    Private Sub BJoyP5_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP5_U.MouseUp
        Joy_P5(0)
    End Sub
    Private Sub BJoyP6_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP6_R.MouseDown
        Joy_P6(1)
    End Sub
    Private Sub BJoyP6_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP6_R.MouseUp
        Joy_P6(0)
    End Sub
    Private Sub BJoyP6_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP6_D.MouseDown
        Joy_P6(2)
    End Sub
    Private Sub BJoyP6_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP6_D.MouseUp
        Joy_P6(0)
    End Sub
    Private Sub BJoyP6_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP6_L.MouseDown
        Joy_P6(3)
    End Sub
    Private Sub BJoyP6_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP6_L.MouseUp
        Joy_P6(0)
    End Sub
    Private Sub BJoyP6_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP6_U.MouseDown
        Joy_P6(4)
    End Sub
    Private Sub BJoyP6_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP6_U.MouseUp
        Joy_P6(0)
    End Sub
    'Push buttons
    Private Sub SB_DJ1_TestLamp_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TestLamp.MouseDown
        S7ProSim.WriteInputPoint(105, 3, True)
    End Sub
    Private Sub SB_DJ1_TestLamp_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TestLamp.MouseUp
        S7ProSim.WriteInputPoint(105, 3, False)
    End Sub
    Private Sub SB_DJ1_EmergStop_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SB_DJ1_EmergStop.CheckedChanged
        UpdateGUI()
    End Sub
    Private Sub SB_DJ1_TC12Home_MouseDown_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TC12Home.MouseDown
        S7ProSim.WriteInputPoint(104, 1, True)
    End Sub
    Private Sub SB_DJ1_TC12Home_MouseUp_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TC12Home.MouseUp
        S7ProSim.WriteInputPoint(104, 1, False)
    End Sub
    Private Sub SB_DJ1_TC12RotComplete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TC12RotComplete.MouseDown
        S7ProSim.WriteInputPoint(103, 6, True)
    End Sub
    Private Sub SB_DJ1_TC12RotComplete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TC12RotComplete.MouseUp
        S7ProSim.WriteInputPoint(103, 6, False)
    End Sub
    Private Sub SB_JD1_TC12PrehCompl_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_JD1_TC12PrehCompl.MouseDown
        S7ProSim.WriteInputPoint(103, 5, True)
    End Sub
    Private Sub SB_JD1_TC12PrehCompl_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_JD1_TC12PrehCompl.MouseUp
        S7ProSim.WriteInputPoint(103, 5, False)
    End Sub
    Private Sub SB_DJ1_TC34Home_MouseDown_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TC34Home.MouseDown
        S7ProSim.WriteInputPoint(110, 1, True)
    End Sub
    Private Sub SB_DJ1_TC34Home_MouseUp_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TC34Home.MouseUp
        S7ProSim.WriteInputPoint(110, 1, False)
    End Sub
    Private Sub SB_DJ1_TC34RotComplete_MouseDown_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TC34RotComplete.MouseDown
        S7ProSim.WriteInputPoint(109, 6, True)
    End Sub
    Private Sub SB_DJ1_TC34RotComplete_MouseUp_1(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ1_TC34RotComplete.MouseUp
        S7ProSim.WriteInputPoint(109, 6, False)
    End Sub
    Private Sub SB_JD1_TC34PrehCompl_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_JD1_TC34PrehCompl.MouseDown
        S7ProSim.WriteInputPoint(109, 5, True)
    End Sub
    Private Sub SB_JD1_TC34PrehCompl_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_JD1_TC34PrehCompl.MouseUp
        S7ProSim.WriteInputPoint(109, 5, False)
    End Sub

    'CC_PS_DJ2 
    Sub Sw_PS_DJ2_P9(ByVal Choice As Byte)
        'switch P9 console CC_PS_DJ2 
        SwChoice(Choice, 1)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
            WriteInputConsole(0, 3, Wa)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(112, 0, Li)
            S7ProSim.WriteInputPoint(112, 1, Ce)
            S7ProSim.WriteInputPoint(112, 2, Ri)
            S7ProSim.WriteInputPoint(112, 3, Wa)
        End If
        schP9_L.Visible = Li
        schP9_C.Visible = Ce
        schP9_R.Visible = Ri
        schP9_W.Visible = Wa
    End Sub
    Sub Sw_PS_DJ2_P10(ByVal Choice As Byte)
        'switch P10 console CC_SB_DJ2  CYCLE 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(113, 6, Li)
            S7ProSim.WriteInputPoint(113, 7, Ri)
        End If
        schP10_L.Visible = Li
        schP10_R.Visible = Ri
    End Sub
    Sub Sw_PS_DJ2_P13(ByVal Choice As Byte)
        'switch P13 console CC_SB_DJ2  Auto-Man-Jog 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 6, Ce)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(114, 1, Li)
            S7ProSim.WriteInputPoint(114, 2, Ce)
            S7ProSim.WriteInputPoint(114, 4, Ri)
        End If
        schP13_L.Visible = Li
        schP13_C.Visible = Ce
        schP13_R.Visible = Ri
    End Sub
    Sub Sw_PS_DJ2_P14(ByVal Choice As Byte)
        'switch P14 console CC_SB_DJ2  speed 1-2-3 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 6, Ce)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(114, 5, Li)
            S7ProSim.WriteInputPoint(114, 6, Ce)
            S7ProSim.WriteInputPoint(114, 7, Ri)
        End If
        schP14_L.Visible = Li
        schP14_C.Visible = Ce
        schP14_R.Visible = Ri
    End Sub
    Sub Sw_PS_W2_P17(ByVal Choice As Byte)
        'switch P17 console CC_SB_DJ2  rev-auto-fwd 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 6, Ce)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(123, 0, Li)
            S7ProSim.WriteInputPoint(123, 1, Ce)
            S7ProSim.WriteInputPoint(123, 2, Ri)
        End If
        schP17_L.Visible = Li
        schP17_C.Visible = Ce
        schP17_R.Visible = Ri
    End Sub
    Sub Sw_PS_W2_P18(ByVal Choice As Byte)
        'switch P18 console CC_SB_DJ2  up-down 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(123, 3, Li)
            S7ProSim.WriteInputPoint(123, 4, Ri)
        End If
        schP18_L.Visible = Li
        schP18_C.Visible = Ce
        schP18_R.Visible = Ri
    End Sub
    Sub Sw_PS_W2_P19(ByVal Choice As Byte)
        'switch P19 console CC_PS_DJ2 (W2) CONVEYOR  
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(123, 5, Li)
            S7ProSim.WriteInputPoint(123, 6, Ce)
            S7ProSim.WriteInputPoint(123, 7, Ri)
        End If
        schP19_L.Visible = Li
        schP19_C.Visible = Ce
        schP19_R.Visible = Ri
    End Sub
    Sub Sw_PS_W3_EN(ByVal Choice As Byte)
        'switch W3 console CC_W3_DJ2 (W3) SEQ 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(124, 0, Ri)
        End If
        schW3_L.Visible = Li
        schW3_R.Visible = Ri
    End Sub
    Sub Sw_PS_W4_EN(ByVal Choice As Byte)
        'switch W3 console CC_W3_DJ2 (W3) SEQ 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(124, 1, Ri)
        End If
        schW4_L.Visible = Li
        schW4_R.Visible = Ri
    End Sub
    Private Sub BschP9_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP9_L.Click
        Sw_PS_DJ2_P9(1)
    End Sub
    Private Sub BschP9_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP9_C.Click
        Sw_PS_DJ2_P9(2)
    End Sub
    Private Sub BschP9_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP9_R.Click
        Sw_PS_DJ2_P9(3)
    End Sub
    Private Sub BschP9_W_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP9_W.Click
        Sw_PS_DJ2_P9(4)
    End Sub
    Private Sub BschP10_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP10_L.Click
        Sw_PS_DJ2_P10(1)
    End Sub
    Private Sub BschP10_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP10_R.Click
        Sw_PS_DJ2_P10(3)
    End Sub
    Private Sub BschP13_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP13_L.Click
        Sw_PS_DJ2_P13(1)
    End Sub
    Private Sub BschP13_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP13_C.Click
        Sw_PS_DJ2_P13(2)
    End Sub
    Private Sub BschP13_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP13_R.Click
        Sw_PS_DJ2_P13(3)
    End Sub
    Private Sub BschP14_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP14_L.Click
        Sw_PS_DJ2_P14(1)
    End Sub
    Private Sub BschP14_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP14_C.Click
        Sw_PS_DJ2_P14(2)
    End Sub
    Private Sub BschP14_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP14_R.Click
        Sw_PS_DJ2_P14(3)
    End Sub
    Private Sub BschP17_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP17_R.Click
        Sw_PS_W2_P17(3)
    End Sub
    Private Sub BschP17_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP17_L.Click
        Sw_PS_W2_P17(1)
    End Sub
    Private Sub BschP17_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP17_C.Click
        Sw_PS_W2_P17(2)
    End Sub
    Private Sub BschP18_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschP18_R.MouseDown
        Sw_PS_W2_P18(3)
    End Sub
    Private Sub BschP18_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschP18_R.MouseUp
        Sw_PS_W2_P18(2)
    End Sub
    Private Sub BschP18_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschP18_L.MouseDown
        Sw_PS_W2_P18(1)
    End Sub
    Private Sub BschP18_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschP18_L.MouseUp
        Sw_PS_W2_P18(2)
    End Sub
    Private Sub BschP19_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschP19_R.MouseDown
        Sw_PS_W2_P19(3)
    End Sub
    Private Sub BschP19_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschP19_R.MouseUp
        Sw_PS_W2_P19(2)
    End Sub
    Private Sub BschP19_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschP19_L.MouseDown
        Sw_PS_W2_P19(1)
    End Sub
    Private Sub BschP19_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BschP19_L.MouseUp
        Sw_PS_W2_P19(2)
    End Sub
    Sub Joy_P9(ByVal Choice As Byte)
        'joystick P9 console CC_PS_DJ2
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(113, 2, Ri)
            S7ProSim.WriteInputPoint(113, 3, Dw)
            S7ProSim.WriteInputPoint(113, 4, Li)
            S7ProSim.WriteInputPoint(113, 5, Up)
        End If
        JoyP9_C.Visible = Ce
        JoyP9_R.Visible = Ri
        JoyP9_D.Visible = Dw
        JoyP9_L.Visible = Li
        JoyP9_U.Visible = Up
    End Sub
    Private Sub BJoyP9_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP9_R.MouseDown
        Joy_P9(1)
    End Sub
    Private Sub BJoyP9_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP9_R.MouseUp
        Joy_P9(0)
    End Sub
    Private Sub BJoyP9_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP9_D.MouseDown
        Joy_P9(2)
    End Sub
    Private Sub BJoyP9_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP9_D.MouseUp
        Joy_P9(0)
    End Sub
    Private Sub BJoyP9_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP9_L.MouseDown
        Joy_P9(3)
    End Sub
    Private Sub BJoyP9_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP9_L.MouseUp
        Joy_P9(0)
    End Sub
    Private Sub BJoyP9_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP9_U.MouseDown
        Joy_P9(4)
    End Sub
    Private Sub BJoyP9_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP9_U.MouseUp
        Joy_P9(0)
    End Sub
    'Push Buttons
    Private Sub PS_DJ2_TC58Home_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ2_TC58Home.MouseDown
        S7ProSim.WriteInputPoint(113, 1, True)
    End Sub
    Private Sub PS_DJ2_TC58Home_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ2_TC58Home.MouseUp
        S7ProSim.WriteInputPoint(113, 1, False)
    End Sub
    Private Sub PS_DJ2_TestLamp_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ2_TestLamp.MouseDown
        S7ProSim.WriteInputPoint(114, 3, True)
    End Sub
    Private Sub PS_DJ2_TestLamp_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_DJ2_TestLamp.MouseUp
        S7ProSim.WriteInputPoint(114, 3, False)
    End Sub
    Private Sub PS_W2_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W2_complete.MouseDown
        S7ProSim.WriteInputPoint(112, 4, True)
    End Sub
    Private Sub PS_W2_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W2_complete.MouseUp
        S7ProSim.WriteInputPoint(112, 4, False)
    End Sub
    Private Sub PS_W3_ReqPipe_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W3_ReqPipe.MouseDown
        S7ProSim.WriteInputPoint(112, 5, True)
    End Sub
    Private Sub PS_W3_ReqPipe_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W3_ReqPipe.MouseUp
        S7ProSim.WriteInputPoint(112, 5, False)
    End Sub
    Private Sub PS_W4_ReqPipe_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W4_ReqPipe.MouseDown
        S7ProSim.WriteInputPoint(112, 6, True)
    End Sub
    Private Sub PS_W4_ReqPipe_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W4_ReqPipe.MouseUp
        S7ProSim.WriteInputPoint(112, 6, False)
    End Sub
    Private Sub PS_W3_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W3_complete.MouseDown
        S7ProSim.WriteInputPoint(112, 7, True)
    End Sub
    Private Sub PS_W3_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W3_complete.MouseUp
        S7ProSim.WriteInputPoint(112, 7, False)
    End Sub
    Private Sub PS_W4_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W4_complete.MouseDown
        S7ProSim.WriteInputPoint(113, 0, True)
    End Sub
    Private Sub PS_W4_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PS_W4_complete.MouseUp
        S7ProSim.WriteInputPoint(113, 0, False)
    End Sub
    Private Sub BschW3_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschW3_R.Click
        Sw_PS_W3_EN(3)
    End Sub
    Private Sub BschW3_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschW3_L.Click
        Sw_PS_W3_EN(1)
    End Sub
    Private Sub BschW4_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschW4_R.Click
        Sw_PS_W4_EN(3)
    End Sub
    Private Sub BschW4_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschW4_L.Click
        Sw_PS_W4_EN(1)
    End Sub

    'CC_SB_DJ2 
    Sub Sw_SB_DJ2_P11(ByVal Choice As Byte)
        'switch P11 console CC_SB_DJ2 
        SwChoice(Choice, 1)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Li)
            WriteInputConsole(0, 1, Ce)
            WriteInputConsole(0, 2, Ri)
            WriteInputConsole(0, 3, Wa)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(115, 0, Li)
            S7ProSim.WriteInputPoint(115, 1, Ce)
            S7ProSim.WriteInputPoint(115, 2, Ri)
            S7ProSim.WriteInputPoint(115, 3, Wa)
        End If
        schP11_L.Visible = Li
        schP11_C.Visible = Ce
        schP11_R.Visible = Ri
        schP11_W.Visible = Wa
    End Sub
    Sub Sw_SB_DJ2_P12(ByVal Choice As Byte)
        'switch P12 console CC_SB_DJ2  CYCLE 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 6, Li)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(116, 6, Li)
            S7ProSim.WriteInputPoint(116, 7, Ri)
        End If
        schP12_L.Visible = Li
        schP12_R.Visible = Ri
    End Sub
    Sub Sw_SB_DJ2_P15(ByVal Choice As Byte)
        'switch P15 console CC_SB_DJ2  Auto-Man-Jog 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 6, Ce)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(117, 1, Li)
            S7ProSim.WriteInputPoint(117, 2, Ce)
            S7ProSim.WriteInputPoint(117, 4, Ri)
        End If
        schP15_L.Visible = Li
        schP15_C.Visible = Ce
        schP15_R.Visible = Ri
    End Sub
    Sub Sw_SB_DJ2_P16(ByVal Choice As Byte)
        'switch P16 console CC_SB_DJ2  speed 1-2-3 
        SwChoice(Choice, 3)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 5, Li)
            WriteInputConsole(0, 6, Ce)
            WriteInputConsole(0, 7, Ri)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(117, 5, Li)
            S7ProSim.WriteInputPoint(117, 6, Ce)
            S7ProSim.WriteInputPoint(117, 7, Ri)
        End If
        schP16_L.Visible = Li
        schP16_C.Visible = Ce
        schP16_R.Visible = Ri
    End Sub
    Private Sub BschP11_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP11_L.Click
        Sw_SB_DJ2_P11(1)
    End Sub
    Private Sub BschP11_C_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP11_C.Click
        Sw_SB_DJ2_P11(2)
    End Sub
    Private Sub BschP11_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP11_R.Click
        Sw_SB_DJ2_P11(3)
    End Sub
    Private Sub BschP11_W_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP11_W.Click
        Sw_SB_DJ2_P11(4)
    End Sub
    Private Sub BschP12_L_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP12_L.Click
        Sw_SB_DJ2_P12(1)
    End Sub
    Private Sub BschP12_R_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BschP12_R.Click
        Sw_SB_DJ2_P12(3)
    End Sub
    Sub Joy_P13(ByVal Choice As Byte)
        'joystick P13 console CC_SB_DJ2
        JoyChoice(Choice)
        If Connection And DriveMode And No Then
            WriteInputConsole(0, 0, Ri)
            WriteInputConsole(0, 1, Dw)
            WriteInputConsole(0, 2, Li)
            WriteInputConsole(0, 3, Up)
        ElseIf (ConnectionSim) Then
            S7ProSim.WriteInputPoint(116, 2, Ri)
            S7ProSim.WriteInputPoint(116, 3, Dw)
            S7ProSim.WriteInputPoint(116, 4, Li)
            S7ProSim.WriteInputPoint(116, 5, Up)
        End If
        JoyP13_C.Visible = Ce
        JoyP13_R.Visible = Ri
        JoyP13_D.Visible = Dw
        JoyP13_L.Visible = Li
        JoyP13_U.Visible = Up
    End Sub
    Private Sub BJoyP13_R_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP13_R.MouseDown
        Joy_P13(1)
    End Sub
    Private Sub BJoyP13_R_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP13_R.MouseUp
        Joy_P13(0)
    End Sub
    Private Sub BJoyP13_D_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP13_D.MouseDown
        Joy_P13(2)
    End Sub
    Private Sub BJoyP13_D_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP13_D.MouseUp
        Joy_P13(0)
    End Sub
    Private Sub BJoyP13_L_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP13_L.MouseDown
        Joy_P13(3)
    End Sub
    Private Sub BJoyP13_L_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP13_L.MouseUp
        Joy_P13(0)
    End Sub
    Private Sub BJoyP13_U_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP13_U.MouseDown
        Joy_P13(4)
    End Sub
    Private Sub BJoyP13_U_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles BJoyP13_U.MouseUp
        Joy_P13(0)
    End Sub
    'Push Buttons
    Private Sub SB_DJ2_TC58Home_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ2_TC58Home.MouseDown
        S7ProSim.WriteInputPoint(116, 1, True)
    End Sub
    Private Sub SB_DJ2_TC58Home_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ2_TC58Home.MouseUp
        S7ProSim.WriteInputPoint(116, 1, False)
    End Sub
    Private Sub SB_DJ2_EmerStop_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SB_DJ2_EmerStop.CheckedChanged
        UpdateGUI()
    End Sub
    Private Sub SB_DJ2_TestLamp_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ2_TestLamp.MouseDown
        S7ProSim.WriteInputPoint(117, 3, True)
    End Sub
    Private Sub SB_DJ2_TestLamp_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_DJ2_TestLamp.MouseUp
        S7ProSim.WriteInputPoint(117, 3, False)
    End Sub
    Private Sub SB_W2_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W2_complete.MouseDown
        S7ProSim.WriteInputPoint(115, 4, True)
    End Sub
    Private Sub SB_W2_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W2_complete.MouseUp
        S7ProSim.WriteInputPoint(115, 4, False)
    End Sub
    Private Sub SB_W3_ReqPipe_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W3_ReqPipe.MouseDown
        S7ProSim.WriteInputPoint(115, 5, True)
    End Sub
    Private Sub SB_W3_ReqPipe_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W3_ReqPipe.MouseUp
        S7ProSim.WriteInputPoint(115, 5, False)
    End Sub
    Private Sub SB_W4_ReqPipe_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W4_ReqPipe.MouseDown
        S7ProSim.WriteInputPoint(115, 6, True)
    End Sub
    Private Sub SB_W4_ReqPipe_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W4_ReqPipe.MouseUp
        S7ProSim.WriteInputPoint(115, 6, False)
    End Sub
    Private Sub SB_W3_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W3_complete.MouseDown
        S7ProSim.WriteInputPoint(115, 7, True)
    End Sub
    Private Sub SB_W3_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W3_complete.MouseUp
        S7ProSim.WriteInputPoint(115, 7, False)
    End Sub
    Private Sub SB_W4_complete_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W4_complete.MouseDown
        S7ProSim.WriteInputPoint(116, 0, True)
    End Sub
    Private Sub SB_W4_complete_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SB_W4_complete.MouseUp
        S7ProSim.WriteInputPoint(116, 0, False)
    End Sub
    '###########################################

    'Console CC_PS_DJ2   sw  P9-P10   joy 








End Class