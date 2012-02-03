Imports System.Xml

Public Class Form1
    Private WithEvents S7ProSim As New S7PROSIMLib.S7ProSim

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Init
        ToolStripComboBox1.SelectedIndex = 0
        ToolStripComboBox1.Select()
        DriveMode = False
        ToolStripStatusLabel2.Text = " PLC mode = " + ToolStripComboBox1.SelectedItem
        If System.IO.File.Exists(NameXmlFile) Then
            ReadConnSettings()
        End If

        DoConnection()
    End Sub
    Private Sub ReadConnSettings()
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList
        Dim name As String = "Default"

        doc.Load(NameXmlFile)
        m_SettList = doc.SelectNodes("/Connections/Settings")

        For Each m_node In m_SettList
            Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
            If n_Attribute = Name Then
                Protocol = m_node.ChildNodes.Item(0).InnerText
                IP = m_node.ChildNodes.Item(1).InnerText
                Port = m_node.ChildNodes.Item(2).InnerText
                Speed = m_node.ChildNodes.Item(3).InnerText
                rack = CInt(m_node.ChildNodes.Item(4).InnerText)
                slot = CInt(m_node.ChildNodes.Item(5).InnerText)
                ConnectionsName = m_node.ChildNodes.Item(6).InnerText
            End If
        Next
        name = ConnectionsName
        doc.Load(NameXmlFile)
        m_SettList = doc.SelectNodes("/Connections/Settings")

        For Each m_node In m_SettList
            Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
            If n_Attribute = name Then
                Protocol = m_node.ChildNodes.Item(0).InnerText
                IP = m_node.ChildNodes.Item(1).InnerText
                Port = m_node.ChildNodes.Item(2).InnerText
                Speed = m_node.ChildNodes.Item(3).InnerText
                rack = CInt(m_node.ChildNodes.Item(4).InnerText)
                slot = CInt(m_node.ChildNodes.Item(5).InnerText)
            End If
        Next

    End Sub
    Private Sub Form1_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        DoDisconnection()
    End Sub

    Private Sub ToolStripButton4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonUpdate.Click
        UpdateGUI()
    End Sub
    Private Sub ToolStripButton5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonDisplay.Click
        Settings.Show()
    End Sub
    Private Sub ToolStripComboBox1_DropDownClosed(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripComboBox1.DropDownClosed
        If ToolStripComboBox1.SelectedItem = "PLCSIM" Then
            If DriveMode = True Then
                If Connection Then
                    DoDisconnection()
                End If
                ConnectionSim = True
            End If
            DriveMode = False
            DoConnection()
        ElseIf ToolStripComboBox1.SelectedItem = "PlcS7" Then
            If DriveMode = False Then
                DoDisconnection()
                ConnectionSim = False
            End If
            DriveMode = True
            ToolStripStatusLabel1.Text = "PlcS7 disconnected "
        End If
        UpdateGUI()
        ToolStripStatusLabel2.Text = " PLC mode = " + ToolStripComboBox1.SelectedItem
        ChangeToolBar()

    End Sub
    Private Sub ChangeToolBar()
         If Connection Or ConnectionSim Then
            TSBConnect.Visible = False
            TSBDisconnect.Visible = True
            ToolStripButtonConn.Enabled = False
        Else
            TSBConnect.Visible = True
            TSBDisconnect.Visible = False
            ToolStripButtonConn.Enabled = True
        End If
        If SimOn Then
            ToolStripButtonSimOn.Visible = False
            ToolStripButtonSimOff.Visible = True
            ToolStripStatusLabel3.Text = "Simulation ON "
        Else
            ToolStripButtonSimOn.Visible = True
            ToolStripButtonSimOff.Visible = False
            ToolStripStatusLabel3.Text = "Simulation OFF "
        End If
    End Sub
    Private Sub TSBDisconnect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TSBDisconnect.Click
        DoDisconnection()
    End Sub
    Private Sub DoConnection()
        If DriveMode Then
            NoDaveConnect()
        Else
            S7ProSim.Connect()
            ToolStripStatusLabel1.Text = "PLCSIM connected "
            'inschakelen simulatie
            S7ProSim.WriteFlagValue(1050, 0, True)
            'inschakelen Scan Mode ContinuousScan
            S7ProSim.SetScanMode(1)
            ConnectionSim = True
        End If
        ChangeToolBar()
    End Sub

    Private Sub TSBConnect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TSBConnect.Click
        DoConnection()
    End Sub

    Private Sub UpdateGUI()
        If DriveMode Then
            'NoDave
            If SimOn Then

                ChangeBit(pDataInW(0), 0, SwitchNoodStork.Value)
                ChangeBit(pDataInW(0), 1, SwitchJoggMode.Value)
                ChangeBit(pDataInW(0), 2, SwitchRunEnabled.Value)
                ChangeBit(pDataInW(0), 3, SwitchResetNood.Value)
                ChangeBit(pDataInW(0), 4, SwitchScreeenInPos.Value)
                ChangeBit(pDataInW(0), 5, SwitchVliscoStork.Value)
                ChangeBit(pDataInW(0), 6, SwitchM02P.Value)
                ChangeBit(pDataInW(0), 7, SwitchM02N.Value)

                ChangeBit(pDataInW(1), 0, SwitchM04P.Value)
                ChangeBit(pDataInW(1), 1, SwitchM04N.Value)
                ChangeBit(pDataInW(1), 2, SwitchM06P.Value)
                ChangeBit(pDataInW(1), 3, SwitchM06N.Value)
                ChangeBit(pDataInW(1), 4, SwitchM08P.Value)
                ChangeBit(pDataInW(1), 5, SwitchM08N.Value)
                ChangeBit(pDataInW(1), 6, SwitchNoodMahlo.Value)
                ChangeBit(pDataInW(1), 7, SwitchNoodHVL.Value)

                ChangeBit(pDataInW(2), 0, SwitchSpeedDown.Value)
                ChangeBit(pDataInW(2), 1, SwitchSpeedUP.Value)
                ChangeBit(pDataInW(2), 2, SwitchStop.Value)
                ChangeBit(pDataInW(2), 3, SwitchSP.Value)
                ChangeBit(pDataInW(2), 4, SwitchSN.Value)
                ChangeBit(pDataInW(2), 5, SwitchLP.Value)
                ChangeBit(pDataInW(2), 6, SwitchFittingAutoHand.Value)
                ChangeBit(pDataInW(2), 7, SwitchSlipManP.Value)

                ChangeBit(pDataInW(3), 0, SwitchLN.Value)
                ChangeBit(pDataInW(3), 1, SwitchSlipManN.Value)
                If Connection Then
                    res = dc.writeBytes(libnodave.daveInputs, 0, 0, 4, pDataInW)
                Else
                    MsgBox("No connection with PLC!")
                End If
                ToolStripStatusLabel3.Text = "Inputs are written "
            Else
                ToolStripStatusLabel3.Text = "Simulation is OFF "
                'MsgBox("Simulation is OFF ")
            End If
        Else
            'PLCSIM
            S7ProSim.WriteInputPoint(0, 0, SwitchNoodStork.Value)
            S7ProSim.WriteInputPoint(0, 1, SwitchJoggMode.Value)
            S7ProSim.WriteInputPoint(0, 2, SwitchRunEnabled.Value)
            S7ProSim.WriteInputPoint(0, 3, SwitchResetNood.Value)
            S7ProSim.WriteInputPoint(0, 4, SwitchScreeenInPos.Value)
            S7ProSim.WriteInputPoint(0, 5, SwitchVliscoStork.Value)
            S7ProSim.WriteInputPoint(0, 6, SwitchM02P.Value)
            S7ProSim.WriteInputPoint(0, 7, SwitchM02N.Value)

            S7ProSim.WriteInputPoint(1, 0, SwitchM04P.Value)
            S7ProSim.WriteInputPoint(1, 1, SwitchM04N.Value)
            S7ProSim.WriteInputPoint(1, 2, SwitchM06P.Value)
            S7ProSim.WriteInputPoint(1, 3, SwitchM06N.Value)
            S7ProSim.WriteInputPoint(1, 4, SwitchM08P.Value)
            S7ProSim.WriteInputPoint(1, 5, SwitchM08N.Value)
            S7ProSim.WriteInputPoint(1, 6, SwitchNoodMahlo.Value)
            S7ProSim.WriteInputPoint(1, 7, SwitchNoodHVL.Value)

            S7ProSim.WriteInputPoint(2, 0, SwitchSpeedDown.Value)
            S7ProSim.WriteInputPoint(2, 1, SwitchSpeedUP.Value)
            S7ProSim.WriteInputPoint(2, 2, SwitchStop.Value)
            S7ProSim.WriteInputPoint(2, 3, SwitchSP.Value)
            S7ProSim.WriteInputPoint(2, 4, SwitchSN.Value)
            S7ProSim.WriteInputPoint(2, 5, SwitchLP.Value)
            S7ProSim.WriteInputPoint(2, 6, SwitchFittingAutoHand.Value)
            S7ProSim.WriteInputPoint(2, 7, SwitchSlipManP.Value)

            S7ProSim.WriteInputPoint(3, 0, SwitchLN.Value)
            S7ProSim.WriteInputPoint(3, 1, SwitchSlipManN.Value)
        End If
    End Sub
    Private Sub SwitchJoggMode_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchJoggMode.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchRunEnabled_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchRunEnabled.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchScreeenInPos_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchScreeenInPos.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchNoodStork_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchNoodStork.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchNoodMahlo_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchNoodMahlo.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchNoodHVL_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchNoodHVL.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchStop_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchStop.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchResetNood_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchResetNood.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchStop_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchStop.MouseUp
        SwitchStop.Value = 0
        UpdateGUI()
    End Sub

    Private Sub SwitchResetNood_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchResetNood.MouseUp
        SwitchResetNood.Value = 0
        UpdateGUI()
    End Sub

    Private Sub SwitchSP_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchSP.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchSN_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchSN.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchLP_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchLP.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchLN_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchLN.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchSP_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchSP.MouseUp
        SwitchSP.Value = 0
        UpdateGUI()
    End Sub

    Private Sub SwitchSN_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchSN.MouseUp
        SwitchSN.Value = 0
        UpdateGUI()
    End Sub

    Private Sub SwitchLP_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchLP.MouseUp
        SwitchLP.Value = 0
        UpdateGUI()
    End Sub

    Private Sub SwitchLN_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchLN.MouseUp
        SwitchLN.Value = 0
        UpdateGUI()
    End Sub

    Private Sub SwitchM02P_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchM02P.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchM02N_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchM02N.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchM04P_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchM04P.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchM04N_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchM04N.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchM06P_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchM06P.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchM06N_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchM06N.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchM08P_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchM08P.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchM08N_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchM08N.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchM02P_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchM02P.MouseUp
        SwitchM02P.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchM02N_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchM02N.MouseUp
        SwitchM02N.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchM04P_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchM04P.MouseUp
        SwitchM04P.Value = False
        UpdateGUI()
    End Sub
    Private Sub SwitchM04N_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchM04N.MouseUp
        SwitchM04N.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchM06P_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchM06P.MouseUp
        SwitchM06P.Value = False
        UpdateGUI()
    End Sub
    Private Sub SwitchM06N_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchM06N.MouseUp
        SwitchM06N.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchM08P_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchM08P.MouseUp
        SwitchM08P.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchM08N_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchM08N.MouseUp
        SwitchM08N.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchSlipManP_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchSlipManP.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchSlipManP_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchSlipManP.MouseUp
        SwitchSlipManP.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchSlipManN_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchSlipManN.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchSlipManN_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchSlipManN.MouseUp
        SwitchSlipManN.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchSpeedUP_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchSpeedUP.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchSpeedUP_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchSpeedUP.MouseUp
        SwitchSpeedUP.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchSpeedDown_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchSpeedDown.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchSpeedDown_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles SwitchSpeedDown.MouseUp
        SwitchSpeedDown.Value = False
        UpdateGUI()
    End Sub

    Private Sub SwitchVliscoStork_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchVliscoStork.StateChanged
        UpdateGUI()
    End Sub

    Private Sub SwitchFittingAutoHand_StateChanged(ByVal sender As System.Object, ByVal e As NationalInstruments.UI.ActionEventArgs) Handles SwitchFittingAutoHand.StateChanged
        UpdateGUI()
    End Sub
    Private Sub DataToGui()
        'Outputs
        Led_nood_stork.Value = IsBitSet(pDataB(0), 0)
        Led_slowdown.Value = IsBitSet(pDataB(0), 1)
        Led_speedup.Value = IsBitSet(pDataB(0), 2)
        Led_stop.Value = IsBitSet(pDataB(0), 3)
        Led_slip_act.Value = IsBitSet(pDataB(0), 4)
        Led_m02.Value = IsBitSet(pDataB(0), 5)
        Led_m04.Value = IsBitSet(pDataB(0), 6)
        Led_m06.Value = IsBitSet(pDataB(0), 7)

        Led_m08.Value = IsBitSet(pDataB(1), 0)
        Led_SCB_no_pos.Value = IsBitSet(pDataB(1), 3)
        Led_SCB_noAct.Value = IsBitSet(pDataB(1), 4)
        Led_SCB_Act.Value = IsBitSet(pDataB(1), 5)
        'Joystick
        If DriveMode Then
            If IsBitSet(pDataIn(0), 3) = True Then
                joystickW = 41
            ElseIf IsBitSet(pDataIn(0), 4) = True Then
                joystickW = 39
            ElseIf IsBitSet(pDataIn(0), 5) = True Then
                joystickW = 42
            ElseIf IsBitSet(pDataIn(1), 0) = True Then
                joystickW = 38
            Else
                joystickW = 40
            End If
        Else
            If IsBitSet(pDataIn(0), 1) = True Then
                joystickW = 41
            ElseIf IsBitSet(pDataIn(0), 2) = True Then
                joystickW = 39
            ElseIf IsBitSet(pDataIn(0), 3) = True Then
                joystickW = 42
            ElseIf IsBitSet(pDataIn(0), 4) = True Then
                joystickW = 38
            Else
                joystickW = 40
            End If
        End If
        Belt.PlotYAppend(pDataOR(0) + sm_belt)
        Screen02.PlotYAppend(pDataOR(1) + sm_scr02)
        Screen04.PlotYAppend(pDataOR(2) + sm_scr04)
        Screen06.PlotYAppend(pDataOR(3) + sm_scr06)
        Screen08.PlotYAppend(pDataOR(4) + sm_scr08)
        Joystick.PlotYAppend(joystickW)

        'encoders
        speedB.Text = CStr(pDataEnc(0))
        speed02.Text = CStr(pDataEnc(1))
        speed04.Text = CStr(pDataEnc(2))
        speed06.Text = CStr(pDataEnc(3))
        speed08.Text = CStr(pDataEnc(4))

    End Sub
    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim i As Integer

        If DriveMode Then
            'NoDave
            If Connection Then
                'Digitale Outputs 0.0-O.7, 1.0-1.7
                res = dc.readBytes(libnodave.daveOutputs, 0, 0, 2, buf)
                If res = 0 Then
                    pDataB(0) = dc.getU8
                    pDataB(1) = dc.getU8
                Else
                    ToolStripStatusLabel1.Text = "Read Outputs. " + libnodave.daveStrerror(res)
                End If
                'Analoge utgangen db 130(52, 54, 60, 64) sp=0
                res = dc.readBytes(libnodave.daveDB, 130, 52, 20, buf)
                If (res = 0) Then
                    pDataO(0) = 0
                    For i = 1 To 4
                        pDataOR(i) = dc.getFloat()
                    Next
                Else
                    ToolStripStatusLabel3.Text = "Read DB 130. " + libnodave.daveStrerror(res)
                End If
                'Text: Analoge encoders db 10,12,14,16,18 --> 34 
                res = dc.readBytes(libnodave.daveDB, 10, 34, 4, buf)
                If (res = 0) Then
                    pDataEnc(0) = dc.getU32()
                End If
                res = dc.readBytes(libnodave.daveDB, 12, 34, 4, buf)
                If (res = 0) Then
                    pDataEnc(1) = dc.getU32()
                End If
                res = dc.readBytes(libnodave.daveDB, 14, 34, 4, buf)
                If (res = 0) Then
                    pDataEnc(2) = dc.getU32()
                End If
                res = dc.readBytes(libnodave.daveDB, 16, 34, 4, buf)
                If (res = 0) Then
                    pDataEnc(3) = dc.getU32()
                End If
                res = dc.readBytes(libnodave.daveDB, 18, 34, 4, buf)
                If (res = 0) Then
                    pDataEnc(4) = dc.getU32()
                 End If

                'Inputs tbv Joystick 2.3, 2.4, 2.5, 3.0 
                res = dc.readBytes(libnodave.daveInputs, 0, 2, 2, buf)
                If res = 0 Then
                    For i = 0 To 1
                        pDataIn(i) = dc.getU8
                    Next
                Else
                    ToolStripStatusLabel3.Text = "Read Inputs. " + libnodave.daveStrerror(res)
                End If
            Else
                For i = 0 To 1
                    pDataB(i) = 0
                    pDataIn(i) = 0
                Next
                For i = 0 To 4
                    pDataO(i) = 0
                    pDataEnc(i) = 0
                Next
            End If
            DataToGui()
        Else
            'PLCSIM
            'LEDs: Uitgangen van merken(copy)
            S7ProSim.ReadFlagValue(1100, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataB(0))
            S7ProSim.ReadFlagValue(1101, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataB(1))

            'Text: Analoge encoders db 10,12,14,16,18 --> 34 
            S7ProSim.ReadDataBlockValue(10, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataEnc(0))
            S7ProSim.ReadDataBlockValue(12, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataEnc(1))
            S7ProSim.ReadDataBlockValue(14, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataEnc(2))
            S7ProSim.ReadDataBlockValue(16, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataEnc(3))
            S7ProSim.ReadDataBlockValue(18, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataEnc(4))

            'Grafiek: Analoge utgangen db 130(52, 54, 60, 64) copy to 1202-1208)
            S7ProSim.ReadFlagValue(1200, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataO(0))
            S7ProSim.ReadFlagValue(1202, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataO(1))
            S7ProSim.ReadFlagValue(1204, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataO(2))
            S7ProSim.ReadFlagValue(1206, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataO(3))
            S7ProSim.ReadFlagValue(1208, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataO(4))
            For i = 0 To 4
                pDataOR(i) = pDataO(i) / 100
            Next
            'Joystick
            S7ProSim.ReadFlagValue(1050, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataIn(0))

            DataToGui()
        End If

    End Sub
    Private Sub NoDaveConnect()
        Dim localMPI As Integer = 0, plcMPI As Integer = 2

        'NoDave
        'ISO over PCP
        If DriveMode Then
            If Protocol = 122 Then
                fds.rfd = libnodave.openSocket(102, IP)
                fds.wfd = fds.rfd
                If fds.rfd > 0 Then       ' if step 1 is ok
                    di = New libnodave.daveInterface(fds, "IF1", 0, Protocol, Speed)
                    di.setTimeout(1000000)  ' Make this longer if you have a very long response time
                    res = di.initAdapter
                    If res = 0 Then       ' init Adapter is ok
                        dc = New libnodave.daveConnection(di, 0, rack, slot)
                        res = dc.connectPLC()
                        If res = 0 Then
                            Connection = True
                            ToolStripStatusLabel1.Text = "PlcS7 connected " + IP
                        Else
                            ToolStripStatusLabel1.Text = "Not successful attempt of connection!"
                        End If
                    Else
                        ToolStripStatusLabel1.Text = "Not successful attempt to initialize  the adapter!"
                    End If
                Else
                    ToolStripStatusLabel1.Text = "Not successful attempt of creation of the interface!"
                End If
            ElseIf Protocol = 1 Or Protocol = 2 Or Protocol = 3 Or Protocol = 4 Then

                fds.rfd = libnodave.setPort(Port, useBaud, AscW("O"))
                fds.wfd = fds.rfd
                If fds.rfd > 0 Then       ' if step 1 is ok
                    di = New libnodave.daveInterface(fds, "IF1", localMPI, Protocol, Speed)
                    di.setTimeout(1000000)  ' Make this longer if you have a very long response time
                    res = di.initAdapter
                    If res = 0 Then       ' init Adapter is ok
                        dc = New libnodave.daveConnection(di, plcMPI, 0, 0)  ' rack amd slot don't matter in case of MPI
                        res = dc.connectPLC()
                        If res = 0 Then
                            Connection = True
                            ToolStripStatusLabel1.Text = "PlcS7 connected " + Port + " " + useBaud
                        Else
                            ToolStripStatusLabel1.Text = "Not successful attempt of connection!"
                        End If
                    Else
                        ToolStripStatusLabel1.Text = "Not successful attempt to initialize  the adapter!"
                    End If
                Else
                    ToolStripStatusLabel1.Text = "Couldn't open serial port " + Port
                End If
            End If
        End If

        ChangeToolBar()
    End Sub
    Private Sub DoDisconnection()
        If DriveMode Then
            If Connection Then
                dc.disconnectPLC()
                di.disconnectAdapter()
                If Protocol = 122 Then
                    ' libnodave.closeSocket(102)
                ElseIf Protocol = 1 Or Protocol = 2 Or Protocol = 3 Or Protocol = 4 Then
                    libnodave.closePort(fds.rfd)    ' Clean up
                End If
                ToolStripStatusLabel1.Text = "PlcS7 disconnected "
            End If
        Else
            S7ProSim.Disconnect()
            ConnectionSim = False
            ToolStripStatusLabel1.Text = "PLCSIM disconnected "
        End If
        Connection = False
        ChangeToolBar()
    End Sub

    Private Sub ToolStripButtonSimOn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonSimOn.Click
        SimOn = True
        ChangeToolBar()
    End Sub

    Private Sub ToolStripButtonSimOff_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonSimOff.Click
        SimOn = False
        ChangeToolBar()
    End Sub

    Private Sub ToolStripButtonConn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonConn.Click
        ConnectionSettings.Show()
    End Sub
End Class

