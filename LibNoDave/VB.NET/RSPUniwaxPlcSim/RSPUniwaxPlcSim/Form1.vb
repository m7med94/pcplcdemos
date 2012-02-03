Public Class Form1
    Private WithEvents S7ProSim As New S7PROSIMLib.S7ProSim

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        S7ProSim.Connect()
        Init()
    End Sub
    Private Sub Form1_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        S7ProSim.Disconnect()
    End Sub
    Sub Init()
        'screens
        sch_p_1.Visible = False
        sch_n_1.Visible = False
        sch_0_1.Visible = True
        sch_p_2.Visible = False
        sch_n_2.Visible = False
        sch_0_2.Visible = True
        sch_p_3.Visible = False
        sch_n_3.Visible = False
        sch_0_3.Visible = True
        sch_p_4.Visible = False
        sch_n_4.Visible = False
        sch_0_4.Visible = True
        'noostop
        nood_stork_aan.Visible = False
        nood_stork_uit.Visible = True
        nood_mahlo_aan.Visible = False
        nood_mahlo_uit.Visible = True
        nood_hvl_aan.Visible = False
        nood_hvl_uit.Visible = True
        S7ProSim.WriteInputPoint(0, 0, True)
        S7ProSim.WriteInputPoint(1, 6, True)
        S7ProSim.WriteInputPoint(1, 7, True)

        res_nood_uit.Visible = True
        res_nood_aan.Visible = False

        'Jogging mode active
        CB_JoggingMode.Checked = True
        S7ProSim.WriteInputPoint(0, 1, CB_JoggingMode.Checked)
        'Run enabled
        CB_RunEnabled.Checked = True
        S7ProSim.WriteInputPoint(0, 2, CB_RunEnabled.Checked)
        'Screens in print position
        CB_screen_in_pos.Checked = True
        S7ProSim.WriteInputPoint(0, 4, CB_screen_in_pos.Checked)
        'Vlisco mode active (1=vlisco mode)
        Vliscomode_aan.Visible = True
        Vliscomode_uit.Visible = False
        S7ProSim.WriteInputPoint(0, 5, True)

        'stop
        stop_aan.Visible = False
        stop_uit.Visible = True
        S7ProSim.WriteInputPoint(2, 2, False)
        'joistic
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteInputPoint(2, 5, False)
        S7ProSim.WriteInputPoint(3, 0, False)
        S7ProSim.WriteInputPoint(2, 3, False)
        S7ProSim.WriteInputPoint(2, 4, False)
        'speed
        speed_up.Visible = False
        speed_dw.Visible = False
        speed_0.Visible = True
        S7ProSim.WriteInputPoint(2, 0, False)
        S7ProSim.WriteInputPoint(2, 1, False)
        'slip manual
        slip_man_p.Visible = False
        slip_man_n.Visible = False
        slip_man_0.Visible = True
        S7ProSim.WriteInputPoint(2, 7, False)
        S7ProSim.WriteInputPoint(3, 1, False)
        'fitting Fitting Control (1= auto, 0= manual)
        auto_aan.Visible = False
        auto_uit.Visible = True
        S7ProSim.WriteInputPoint(2, 6, False)
        'inschakelen simulatie
        S7ProSim.WriteInputPoint(0, 0, True)

        'inschakelen simulatie
        S7ProSim.WriteFlagValue(1050, 0, True)
        'inschakelen Scan Mode ContinuousScan
        S7ProSim.SetScanMode(1)

        'S7ProSim.SetState(2)
    End Sub
    Private Sub BtnInit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnInit.Click
        Init()
    End Sub

    Private Sub stur_sch_p_1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_1.MouseDown
        sch_p_1.Visible = True
        sch_n_1.Visible = False
        sch_0_1.Visible = False
        'Repeat correction M02 forward AAN
        S7ProSim.WriteInputPoint(0, 6, True)
    End Sub
    Private Sub stur_sch_p_1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_1.MouseUp
        sch_p_1.Visible = False
        sch_n_1.Visible = False
        sch_0_1.Visible = True
        'Repeat correction M02 forward UIT
        S7ProSim.WriteInputPoint(0, 6, False)
    End Sub

    Private Sub stur_sch_n_1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_1.MouseDown
        sch_p_1.Visible = False
        sch_n_1.Visible = True
        sch_0_1.Visible = False
        'Repeat correction M02 backward AAN
        S7ProSim.WriteInputPoint(0, 7, True)
    End Sub
    Private Sub stur_sch_n_1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_1.MouseUp
        sch_p_1.Visible = False
        sch_n_1.Visible = False
        sch_0_1.Visible = True
        'Repeat correction M02 backward UIT
        S7ProSim.WriteInputPoint(0, 7, False)
    End Sub
    Private Sub stur_sch_p_2_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_2.MouseDown
        sch_p_2.Visible = True
        sch_n_2.Visible = False
        sch_0_2.Visible = False
        'Repeat correction M04 forward AAN
        S7ProSim.WriteInputPoint(1, 0, True)
    End Sub
    Private Sub stur_sch_p_2_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_2.MouseUp
        sch_p_2.Visible = False
        sch_n_2.Visible = False
        sch_0_2.Visible = True
        'Repeat correction M04 forward UIT
        S7ProSim.WriteInputPoint(1, 0, False)
    End Sub
    Private Sub stur_sch_n_2_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_2.MouseDown
        sch_p_2.Visible = False
        sch_n_2.Visible = True
        sch_0_2.Visible = False
        'Repeat correction M04 backward AAN
        S7ProSim.WriteInputPoint(1, 1, True)
    End Sub
    Private Sub stur_sch_n_2_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_2.MouseUp
        sch_p_2.Visible = False
        sch_n_2.Visible = False
        sch_0_2.Visible = True
        'Repeat correction M04 backward UIT
        S7ProSim.WriteInputPoint(1, 1, False)
    End Sub
    Private Sub stur_sch_p_3_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_3.MouseDown
        sch_p_3.Visible = True
        sch_n_3.Visible = False
        sch_0_3.Visible = False
        'Repeat correction M06 forward AAN
        S7ProSim.WriteInputPoint(1, 2, True)
    End Sub
    Private Sub stur_sch_p_3_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_3.MouseUp
        sch_p_3.Visible = False
        sch_n_3.Visible = False
        sch_0_3.Visible = True
        'Repeat correction M06 forward UIT
        S7ProSim.WriteInputPoint(1, 2, False)
    End Sub
    Private Sub stur_sch_n_3_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_3.MouseDown
        sch_p_3.Visible = False
        sch_n_3.Visible = True
        sch_0_3.Visible = False
        'Repeat correction M06 backward AAN
        S7ProSim.WriteInputPoint(1, 3, True)
    End Sub
    Private Sub stur_sch_n_3_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_3.MouseUp
        sch_p_3.Visible = False
        sch_n_3.Visible = False
        sch_0_3.Visible = True
        'Repeat correction M06 backward UIT
        S7ProSim.WriteInputPoint(1, 3, False)
    End Sub
    Private Sub stur_sch_p_4_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_4.MouseDown
        sch_p_4.Visible = True
        sch_n_4.Visible = False
        sch_0_4.Visible = False
        'Repeat correction M08 forward AAN
        S7ProSim.WriteInputPoint(1, 4, True)
    End Sub
    Private Sub stur_sch_p_4_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_4.MouseUp
        sch_p_4.Visible = False
        sch_n_4.Visible = False
        sch_0_4.Visible = True
        'Repeat correction M08 forward UIT
        S7ProSim.WriteInputPoint(1, 4, False)
    End Sub
    Private Sub stur_sch_n_4_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_4.MouseDown
        sch_p_4.Visible = False
        sch_n_4.Visible = True
        sch_0_4.Visible = False
        'Repeat correction M08 backward AAN
        S7ProSim.WriteInputPoint(1, 5, True)
    End Sub
    Private Sub stur_sch_n_4_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_4.MouseUp
        sch_p_4.Visible = False
        sch_n_4.Visible = False
        sch_0_4.Visible = True
        'Repeat correction M08 backward UIT
        S7ProSim.WriteInputPoint(1, 5, False)
    End Sub
    Private Sub nood_stork_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_stork_aan.Click
        nood_stork_uit.Visible = True
        nood_stork_aan.Visible = False
        S7ProSim.WriteInputPoint(0, 0, True)
    End Sub
    Private Sub nood_stork_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_stork_uit.Click
        nood_stork_uit.Visible = False
        nood_stork_aan.Visible = True
        S7ProSim.WriteInputPoint(0, 0, False)
    End Sub
    Private Sub nood_hvl_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_hvl_aan.Click
        nood_hvl_uit.Visible = True
        nood_hvl_aan.Visible = False
        S7ProSim.WriteInputPoint(1, 7, True)
    End Sub
    Private Sub nood_hvl_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_hvl_uit.Click
        nood_hvl_uit.Visible = False
        nood_hvl_aan.Visible = True
        S7ProSim.WriteInputPoint(1, 7, False)
    End Sub
    Private Sub nood_mahlo_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_mahlo_aan.Click
        nood_mahlo_uit.Visible = True
        nood_mahlo_aan.Visible = False
        S7ProSim.WriteInputPoint(1, 6, True)
    End Sub
    Private Sub nood_mahlo_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_mahlo_uit.Click
        nood_mahlo_uit.Visible = False
        nood_mahlo_aan.Visible = True
        S7ProSim.WriteInputPoint(1, 6, False)
    End Sub
    Private Sub res_nood_aan_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles res_nood_aan.MouseDown
        res_nood_aan.Visible = False
        res_nood_uit.Visible = True
        S7ProSim.WriteInputPoint(0, 3, False)
    End Sub
    Private Sub res_nood_uit_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles res_nood_uit.MouseUp
        res_nood_aan.Visible = True
        res_nood_uit.Visible = False
        S7ProSim.WriteInputPoint(0, 3, True)
    End Sub
    Private Sub stop_aan_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stop_aan.MouseDown
        stop_aan.Visible = False
        stop_uit.Visible = True
        S7ProSim.WriteInputPoint(2, 2, False)
    End Sub
    Private Sub stop_uit_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stop_uit.MouseUp
        stop_aan.Visible = True
        stop_uit.Visible = False
        S7ProSim.WriteInputPoint(2, 2, True)
    End Sub
    Private Sub Vliscomode_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Vliscomode_aan.Click
        Vliscomode_aan.Visible = False
        Vliscomode_uit.Visible = True
        S7ProSim.WriteInputPoint(0, 5, False)
    End Sub
    Private Sub Vliscomode_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Vliscomode_uit.Click
        Vliscomode_aan.Visible = True
        Vliscomode_uit.Visible = False
        S7ProSim.WriteInputPoint(0, 5, True)
    End Sub
    Private Sub CB_screen_in_pos_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CB_screen_in_pos.CheckedChanged
        S7ProSim.WriteInputPoint(0, 4, CB_screen_in_pos.Checked)
    End Sub

    Private Sub CB_JoggingMode_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CB_JoggingMode.CheckedChanged
        S7ProSim.WriteInputPoint(0, 1, CB_JoggingMode.Checked)
    End Sub
    Private Sub CB_RunEnabled_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CB_RunEnabled.CheckedChanged
        S7ProSim.WriteInputPoint(0, 2, CB_RunEnabled.Checked)
    End Sub
    Private Sub st_joi_LP_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_LP.MouseDown
        joi_lp.Visible = True
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = False
        S7ProSim.WriteInputPoint(2, 5, True)
    End Sub
    Private Sub st_joi_LP_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_LP.MouseUp
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteInputPoint(2, 5, False)
    End Sub
    Private Sub st_joi_LN_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_LN.MouseDown
        joi_lp.Visible = False
        joi_ln.Visible = True
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = False
        S7ProSim.WriteInputPoint(3, 0, True)
    End Sub
    Private Sub st_joi_LN_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_LN.MouseUp
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteInputPoint(3, 0, False)
    End Sub
    Private Sub st_joi_SP_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_SP.MouseDown
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = True
        joi_sn.Visible = False
        joi_neitral.Visible = False
        S7ProSim.WriteInputPoint(2, 3, True)
    End Sub
    Private Sub st_joi_SP_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_SP.MouseUp
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteInputPoint(2, 3, False)
    End Sub
    Private Sub st_joi_SN_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_SN.MouseDown
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = True
        joi_neitral.Visible = False
        S7ProSim.WriteInputPoint(2, 4, True)
    End Sub
    Private Sub st_joi_SN_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_SN.MouseUp
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteInputPoint(2, 4, False)
    End Sub
    Private Sub stur_speed_up_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_speed_up.MouseDown
        speed_up.Visible = True
        speed_dw.Visible = False
        speed_0.Visible = False
        S7ProSim.WriteInputPoint(2, 1, True)
    End Sub
    Private Sub stur_speed_up_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_speed_up.MouseUp
        speed_up.Visible = False
        speed_dw.Visible = False
        speed_0.Visible = True
        S7ProSim.WriteInputPoint(2, 1, False)
    End Sub
    Private Sub stur_speed_dw_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_speed_dw.MouseDown
        speed_up.Visible = False
        speed_dw.Visible = True
        speed_0.Visible = False
        S7ProSim.WriteInputPoint(2, 0, True)
    End Sub
    Private Sub stur_speed_dw_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_speed_dw.MouseUp
        speed_up.Visible = False
        speed_dw.Visible = False
        speed_0.Visible = True
        S7ProSim.WriteInputPoint(2, 0, False)
    End Sub
    Private Sub auto_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles auto_aan.Click
        auto_aan.Visible = False
        auto_uit.Visible = True
        S7ProSim.WriteInputPoint(2, 6, False)
    End Sub
    Private Sub auto_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles auto_uit.Click
        auto_aan.Visible = True
        auto_uit.Visible = False
        S7ProSim.WriteInputPoint(2, 6, True)
    End Sub
    Private Sub stur_slip_man_p_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_slip_man_p.MouseDown
        slip_man_p.Visible = True
        slip_man_n.Visible = False
        slip_man_0.Visible = False
        S7ProSim.WriteInputPoint(2, 7, True)
    End Sub
    Private Sub stur_slip_man_p_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_slip_man_p.MouseUp
        slip_man_p.Visible = False
        slip_man_n.Visible = False
        slip_man_0.Visible = True
        S7ProSim.WriteInputPoint(2, 7, False)
    End Sub
    Private Sub stur_slip_man_n_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_slip_man_n.MouseDown
        slip_man_p.Visible = False
        slip_man_n.Visible = True
        slip_man_0.Visible = False
        S7ProSim.WriteInputPoint(3, 1, True)
    End Sub
    Private Sub stur_slip_man_n_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_slip_man_n.MouseUp
        slip_man_p.Visible = False
        slip_man_n.Visible = False
        slip_man_0.Visible = True
        S7ProSim.WriteInputPoint(3, 1, False)
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim pData As Boolean
        Dim pDataJ1 As Boolean
        Dim pDataJ2 As Boolean
        Dim pDataJ3 As Boolean
        Dim pDataJ4 As Boolean
        Dim pDataW1 As Integer
        Dim pDataW2 As Integer
        Dim pDataW3 As Integer
        Dim pDataW4 As Integer
        Dim pDataW5 As Integer
        Dim pDataW11 As Integer
        Dim pDataW12 As Integer
        Dim pDataW13 As Integer
        Dim pDataW14 As Integer
        Dim pDataW15 As Integer

        S7ProSim.ReadFlagValue(1100, 0, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_nood_stork.Value = pData
        S7ProSim.ReadFlagValue(1100, 1, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_slowdown.Value = pData
        S7ProSim.ReadFlagValue(1100, 2, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_speedup.Value = pData
        S7ProSim.ReadFlagValue(1100, 3, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_stop.Value = pData
        S7ProSim.ReadFlagValue(1100, 4, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_slip_act.Value = pData
        S7ProSim.ReadFlagValue(1100, 5, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_m02.Value = pData
        S7ProSim.ReadFlagValue(1100, 6, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_m04.Value = pData
        S7ProSim.ReadFlagValue(1100, 7, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_m06.Value = pData
        S7ProSim.ReadFlagValue(1101, 0, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_m08.Value = pData
        S7ProSim.ReadFlagValue(1101, 3, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_SCB_no_pos.Value = pData
        S7ProSim.ReadOutputPoint(1101, 4, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_SCB_noAct.Value = pData
        S7ProSim.ReadFlagValue(1101, 5, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_SCB_Act.Value = pData

        'Analoge uitgangen
        S7ProSim.ReadDataBlockValue(10, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataW11)
        S7ProSim.ReadDataBlockValue(12, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataW12)
        S7ProSim.ReadDataBlockValue(14, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataW13)
        S7ProSim.ReadDataBlockValue(16, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataW14)
        S7ProSim.ReadDataBlockValue(18, 34, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataW15)

        S7ProSim.ReadFlagValue(1200, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW1)
        S7ProSim.ReadFlagValue(1202, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW2)
        S7ProSim.ReadFlagValue(1204, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW3)
        S7ProSim.ReadFlagValue(1206, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW4)
        S7ProSim.ReadFlagValue(1208, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW5)

        Belt.PlotYAppend(pDataW1 / 100 + sm_belt)
        Screen02.PlotYAppend(pDataW2 / 100 + sm_scr02)
        Screen04.PlotYAppend(pDataW3 / 100 + sm_scr04)
        Screen06.PlotYAppend(pDataW4 / 100 + sm_scr06)
        Screen08.PlotYAppend(pDataW5 / 100 + sm_scr08)
        speedB.Text = CStr(pDataW1) + "    " + CStr(pDataW11)
        speed02.Text = CStr(pDataW2) + " -> " + CStr(pDataW12)
        speed04.Text = CStr(pDataW3) + " -> " + CStr(pDataW13)
        speed06.Text = CStr(pDataW4) + " -> " + CStr(pDataW14)
        speed08.Text = CStr(pDataW5) + " -> " + CStr(pDataW15)

        'Joystick
        S7ProSim.ReadFlagValue(1050, 1, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pDataJ1)
        If pDataJ1 = True Then
            joystickW = 41
        End If
        S7ProSim.ReadFlagValue(1050, 2, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pDataJ2)
        If pDataJ2 = True Then
            joystickW = 39
        End If
        S7ProSim.ReadFlagValue(1050, 3, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pDataJ3)
        If pDataJ3 = True Then
            joystickW = 42
        End If
        S7ProSim.ReadFlagValue(1050, 4, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pDataJ4)
        If pDataJ4 = True Then
            joystickW = 38
        End If
        If pDataJ1 = False And pDataJ2 = False And pDataJ3 = False And pDataJ4 = False Then
            joystickW = 40
        End If
        Joystick.PlotYAppend(joystickW)

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        instellingen.Show()
    End Sub

 End Class
