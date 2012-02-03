Public Class Form1
    Private WithEvents S7ProSim As New S7PROSIMLib.S7ProSim

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
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
        res_nood_uit.Visible = True
        res_nood_aan.Visible = False

        CB_JoggingMode.Checked = True
        CB_RunEnabled.Checked = True
        CB_screen_in_pos.Checked = True
        Vliscomode_aan.Visible = True
        Vliscomode_uit.Visible = False
        stop_aan.Visible = False
        stop_uit.Visible = True
        'joistic
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        'speed
        speed_up.Visible = False
        speed_dw.Visible = False
        speed_0.Visible = True
        'slip manual
        slip_man_p.Visible = False
        slip_man_n.Visible = False
        slip_man_0.Visible = True
        'fitting Fitting Control (1= auto, 0= manual)
        auto_aan.Visible = True
        auto_uit.Visible = False


        S7ProSim.Connect()

        'Jogging mode active
        S7ProSim.WriteFlagValue(1000, 1, CB_JoggingMode.Checked)
        'Run enabled
        S7ProSim.WriteFlagValue(1000, 2, CB_RunEnabled.Checked)
        'Screens in print position
        S7ProSim.WriteFlagValue(1000, 4, CB_screen_in_pos.Checked)
        'Vlisco mode active (1=vlisco mode)
        S7ProSim.WriteFlagValue(1000, 5, True)
        'Fitting Control (1= auto, 0= manual)
        S7ProSim.WriteFlagValue(1002, 6, True)
        'joistic
        S7ProSim.WriteFlagValue(1002, 5, False)
        S7ProSim.WriteFlagValue(1003, 0, False)
        S7ProSim.WriteFlagValue(1002, 3, False)
        S7ProSim.WriteFlagValue(1002, 4, False)
        'stop
        S7ProSim.WriteFlagValue(1002, 2, False)
        'speed
        S7ProSim.WriteFlagValue(1002, 0, False)
        S7ProSim.WriteFlagValue(1002, 1, False)
        'slip manual
        S7ProSim.WriteFlagValue(1002, 7, False)
        S7ProSim.WriteFlagValue(1003, 1, False)

    End Sub
    Private Sub Form1_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        S7ProSim.Disconnect()
    End Sub
    Private Sub stur_sch_p_1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_1.MouseDown
        sch_p_1.Visible = True
        sch_n_1.Visible = False
        sch_0_1.Visible = False
        'Repeat correction M02 forward AAN
        S7ProSim.WriteFlagValue(1000, 6, True)
    End Sub
    Private Sub stur_sch_p_1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_1.MouseUp
        sch_p_1.Visible = False
        sch_n_1.Visible = False
        sch_0_1.Visible = True
        'Repeat correction M02 forward UIT
        S7ProSim.WriteFlagValue(1000, 6, False)
    End Sub

    Private Sub stur_sch_n_1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_1.MouseDown
        sch_p_1.Visible = False
        sch_n_1.Visible = True
        sch_0_1.Visible = False
        'Repeat correction M02 backward AAN
        S7ProSim.WriteFlagValue(1000, 7, True)
    End Sub
    Private Sub stur_sch_n_1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_1.MouseUp
        sch_p_1.Visible = False
        sch_n_1.Visible = False
        sch_0_1.Visible = True
        'Repeat correction M02 backward UIT
        S7ProSim.WriteFlagValue(1000, 7, False)
    End Sub
    Private Sub stur_sch_p_2_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_2.MouseDown
        sch_p_2.Visible = True
        sch_n_2.Visible = False
        sch_0_2.Visible = False
        'Repeat correction M04 forward AAN
        S7ProSim.WriteFlagValue(1001, 0, True)
    End Sub
    Private Sub stur_sch_p_2_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_2.MouseUp
        sch_p_2.Visible = False
        sch_n_2.Visible = False
        sch_0_2.Visible = True
        'Repeat correction M04 forward UIT
        S7ProSim.WriteFlagValue(1001, 0, False)
    End Sub
    Private Sub stur_sch_n_2_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_2.MouseDown
        sch_p_2.Visible = False
        sch_n_2.Visible = True
        sch_0_2.Visible = False
        'Repeat correction M04 backward AAN
        S7ProSim.WriteFlagValue(1001, 1, True)
    End Sub
    Private Sub stur_sch_n_2_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_2.MouseUp
        sch_p_2.Visible = False
        sch_n_2.Visible = False
        sch_0_2.Visible = True
        'Repeat correction M04 backward UIT
        S7ProSim.WriteFlagValue(1001, 1, False)
    End Sub
    Private Sub stur_sch_p_3_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_3.MouseDown
        sch_p_3.Visible = True
        sch_n_3.Visible = False
        sch_0_3.Visible = False
        'Repeat correction M06 forward AAN
        S7ProSim.WriteFlagValue(1001, 2, True)
    End Sub
    Private Sub stur_sch_p_3_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_3.MouseUp
        sch_p_3.Visible = False
        sch_n_3.Visible = False
        sch_0_3.Visible = True
        'Repeat correction M06 forward UIT
        S7ProSim.WriteFlagValue(1001, 2, False)
    End Sub
    Private Sub stur_sch_n_3_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_3.MouseDown
        sch_p_3.Visible = False
        sch_n_3.Visible = True
        sch_0_3.Visible = False
        'Repeat correction M06 backward AAN
        S7ProSim.WriteFlagValue(1001, 3, True)
    End Sub
    Private Sub stur_sch_n_3_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_3.MouseUp
        sch_p_3.Visible = False
        sch_n_3.Visible = False
        sch_0_3.Visible = True
        'Repeat correction M06 backward UIT
        S7ProSim.WriteFlagValue(1001, 3, False)
    End Sub
    Private Sub stur_sch_p_4_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_4.MouseDown
        sch_p_4.Visible = True
        sch_n_4.Visible = False
        sch_0_4.Visible = False
        'Repeat correction M08 forward AAN
        S7ProSim.WriteFlagValue(1001, 4, True)
    End Sub
    Private Sub stur_sch_p_4_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_p_4.MouseUp
        sch_p_4.Visible = False
        sch_n_4.Visible = False
        sch_0_4.Visible = True
        'Repeat correction M08 forward UIT
        S7ProSim.WriteFlagValue(1001, 4, False)
    End Sub
    Private Sub stur_sch_n_4_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_4.MouseDown
        sch_p_4.Visible = False
        sch_n_4.Visible = True
        sch_0_4.Visible = False
        'Repeat correction M08 backward AAN
        S7ProSim.WriteFlagValue(1001, 5, True)
    End Sub
    Private Sub stur_sch_n_4_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_sch_n_4.MouseUp
        sch_p_4.Visible = False
        sch_n_4.Visible = False
        sch_0_4.Visible = True
        'Repeat correction M08 backward UIT
        S7ProSim.WriteFlagValue(1001, 5, False)
    End Sub
    Private Sub nood_stork_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_stork_aan.Click
        nood_stork_uit.Visible = True
        nood_stork_aan.Visible = False
        S7ProSim.WriteFlagValue(1000, 0, False)
    End Sub
    Private Sub nood_stork_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_stork_uit.Click
        nood_stork_uit.Visible = False
        nood_stork_aan.Visible = True
        S7ProSim.WriteFlagValue(1000, 0, True)
    End Sub
    Private Sub nood_hvl_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_hvl_aan.Click
        nood_hvl_uit.Visible = True
        nood_hvl_aan.Visible = False
        S7ProSim.WriteFlagValue(1001, 7, False)
    End Sub
    Private Sub nood_hvl_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_hvl_uit.Click
        nood_hvl_uit.Visible = False
        nood_hvl_aan.Visible = True
        S7ProSim.WriteFlagValue(1001, 7, True)
    End Sub
    Private Sub nood_mahlo_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_mahlo_aan.Click
        nood_mahlo_uit.Visible = True
        nood_mahlo_aan.Visible = False
        S7ProSim.WriteFlagValue(1001, 6, False)
    End Sub
    Private Sub nood_mahlo_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles nood_mahlo_uit.Click
        nood_mahlo_uit.Visible = False
        nood_mahlo_aan.Visible = True
        S7ProSim.WriteFlagValue(1001, 6, True)
    End Sub
    Private Sub res_nood_aan_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles res_nood_aan.MouseDown
        res_nood_aan.Visible = False
        res_nood_uit.Visible = True
        S7ProSim.WriteFlagValue(1000, 3, False)
    End Sub
    Private Sub res_nood_uit_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles res_nood_uit.MouseUp
        res_nood_aan.Visible = True
        res_nood_uit.Visible = False
        S7ProSim.WriteFlagValue(1000, 3, True)
    End Sub
    Private Sub stop_aan_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stop_aan.MouseDown
        stop_aan.Visible = False
        stop_uit.Visible = True
        S7ProSim.WriteFlagValue(1002, 2, False)
    End Sub
    Private Sub stop_uit_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stop_uit.MouseUp
        stop_aan.Visible = True
        stop_uit.Visible = False
        S7ProSim.WriteFlagValue(1002, 2, True)
    End Sub
    Private Sub Vliscomode_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Vliscomode_aan.Click
        Vliscomode_aan.Visible = False
        Vliscomode_uit.Visible = True
        S7ProSim.WriteFlagValue(1000, 5, False)
    End Sub
    Private Sub Vliscomode_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Vliscomode_uit.Click
        Vliscomode_aan.Visible = True
        Vliscomode_uit.Visible = False
        S7ProSim.WriteFlagValue(1000, 5, True)
    End Sub
    Private Sub CB_screen_in_pos_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CB_screen_in_pos.CheckedChanged
        S7ProSim.WriteFlagValue(1000, 4, CB_screen_in_pos.Checked)
    End Sub

    Private Sub CB_JoggingMode_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CB_JoggingMode.CheckedChanged
        S7ProSim.WriteFlagValue(1000, 1, CB_JoggingMode.Checked)
    End Sub
    Private Sub CB_RunEnabled_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CB_RunEnabled.CheckedChanged
        S7ProSim.WriteFlagValue(1000, 2, CB_RunEnabled.Checked)
    End Sub
    Private Sub st_joi_LP_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_LP.MouseDown
        joi_lp.Visible = True
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = False
        S7ProSim.WriteFlagValue(1002, 5, True)
    End Sub
    Private Sub st_joi_LP_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_LP.MouseUp
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteFlagValue(1002, 5, False)
    End Sub
    Private Sub st_joi_LN_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_LN.MouseDown
        joi_lp.Visible = False
        joi_ln.Visible = True
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = False
        S7ProSim.WriteFlagValue(1003, 0, True)
    End Sub
    Private Sub st_joi_LN_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_LN.MouseUp
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteFlagValue(1003, 0, False)
    End Sub
    Private Sub st_joi_SP_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_SP.MouseDown
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = True
        joi_sn.Visible = False
        joi_neitral.Visible = False
        S7ProSim.WriteFlagValue(1002, 3, True)
    End Sub
    Private Sub st_joi_SP_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_SP.MouseUp
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteFlagValue(1002, 3, False)
    End Sub
    Private Sub st_joi_SN_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_SN.MouseDown
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = True
        joi_neitral.Visible = False
        S7ProSim.WriteFlagValue(1002, 4, True)
    End Sub
    Private Sub st_joi_SN_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles st_joi_SN.MouseUp
        joi_lp.Visible = False
        joi_ln.Visible = False
        joi_sp.Visible = False
        joi_sn.Visible = False
        joi_neitral.Visible = True
        S7ProSim.WriteFlagValue(1002, 4, False)
    End Sub
    Private Sub stur_speed_up_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_speed_up.MouseDown
        speed_up.Visible = True
        speed_dw.Visible = False
        speed_0.Visible = False
        S7ProSim.WriteFlagValue(1002, 1, True)
    End Sub
    Private Sub stur_speed_up_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_speed_up.MouseUp
        speed_up.Visible = False
        speed_dw.Visible = False
        speed_0.Visible = True
        S7ProSim.WriteFlagValue(1002, 1, False)
    End Sub
    Private Sub stur_speed_dw_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_speed_dw.MouseDown
        speed_up.Visible = False
        speed_dw.Visible = True
        speed_0.Visible = False
        S7ProSim.WriteFlagValue(1002, 0, True)
    End Sub
    Private Sub stur_speed_dw_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_speed_dw.MouseUp
        speed_up.Visible = False
        speed_dw.Visible = False
        speed_0.Visible = True
        S7ProSim.WriteFlagValue(1002, 0, False)
    End Sub
    Private Sub auto_aan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles auto_aan.Click
        auto_aan.Visible = False
        auto_uit.Visible = True
        S7ProSim.WriteFlagValue(1002, 6, False)
    End Sub
    Private Sub auto_uit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles auto_uit.Click
        auto_aan.Visible = True
        auto_uit.Visible = False
        S7ProSim.WriteFlagValue(1002, 6, True)
    End Sub
    Private Sub stur_slip_man_p_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_slip_man_p.MouseDown
        slip_man_p.Visible = True
        slip_man_n.Visible = False
        slip_man_0.Visible = False
        S7ProSim.WriteFlagValue(1002, 7, True)
    End Sub
    Private Sub stur_slip_man_p_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_slip_man_p.MouseUp
        slip_man_p.Visible = False
        slip_man_n.Visible = False
        slip_man_0.Visible = True
        S7ProSim.WriteFlagValue(1002, 7, False)
    End Sub
    Private Sub stur_slip_man_n_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_slip_man_n.MouseDown
        slip_man_p.Visible = False
        slip_man_n.Visible = True
        slip_man_0.Visible = False
        S7ProSim.WriteFlagValue(1003, 1, True)
    End Sub
    Private Sub stur_slip_man_n_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles stur_slip_man_n.MouseUp
        slip_man_p.Visible = False
        slip_man_n.Visible = False
        slip_man_0.Visible = True
        S7ProSim.WriteFlagValue(1003, 1, False)
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim pData As Boolean
        Dim pDataW As Integer

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
        S7ProSim.ReadFlagValue(1101, 4, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_SCB_noAct.Value = pData
        S7ProSim.ReadFlagValue(1101, 5, S7PROSIMLib.PointDataTypeConstants.S7_Bit, pData)
        Led_SCB_Act.Value = pData

        'Analoge uitgangen
        S7ProSim.ReadFlagValue(1200, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW)
        Belt.PlotYAppend(pDataW + sm_belt)
        S7ProSim.ReadFlagValue(1202, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW)
        Screen02.PlotYAppend(pDataW + sm_scr02)
        S7ProSim.ReadFlagValue(1204, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW)
        Screen04.PlotYAppend(pDataW + sm_scr04)
        S7ProSim.ReadFlagValue(1206, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW)
        Screen06.PlotYAppend(pDataW + sm_scr06)
        S7ProSim.ReadFlagValue(1208, 0, S7PROSIMLib.PointDataTypeConstants.S7_Word, pDataW)
        Screen08.PlotYAppend(pDataW + sm_scr08)



    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        instellingen.Show()
    End Sub
End Class
