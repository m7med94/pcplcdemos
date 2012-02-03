<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.Label13 = New System.Windows.Forms.Label
        Me.Label14 = New System.Windows.Forms.Label
        Me.Label10 = New System.Windows.Forms.Label
        Me.CB_JoggingMode = New System.Windows.Forms.CheckBox
        Me.CB_RunEnabled = New System.Windows.Forms.CheckBox
        Me.CB_screen_in_pos = New System.Windows.Forms.CheckBox
        Me.Label12 = New System.Windows.Forms.Label
        Me.Label11 = New System.Windows.Forms.Label
        Me.Label9 = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.Label7 = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.Panel1 = New System.Windows.Forms.Panel
        Me.Panel2 = New System.Windows.Forms.Panel
        Me.Label15 = New System.Windows.Forms.Label
        Me.Label27 = New System.Windows.Forms.Label
        Me.Led_SCB_Act = New NationalInstruments.UI.WindowsForms.Led
        Me.Label28 = New System.Windows.Forms.Label
        Me.Led_SCB_noAct = New NationalInstruments.UI.WindowsForms.Led
        Me.Label29 = New System.Windows.Forms.Label
        Me.Led_SCB_no_pos = New NationalInstruments.UI.WindowsForms.Led
        Me.Label22 = New System.Windows.Forms.Label
        Me.Label19 = New System.Windows.Forms.Label
        Me.Led_nood_stork = New NationalInstruments.UI.WindowsForms.Led
        Me.Led_m06 = New NationalInstruments.UI.WindowsForms.Led
        Me.Label17 = New System.Windows.Forms.Label
        Me.Label30 = New System.Windows.Forms.Label
        Me.Led_stop = New NationalInstruments.UI.WindowsForms.Led
        Me.Label18 = New System.Windows.Forms.Label
        Me.Led_m08 = New NationalInstruments.UI.WindowsForms.Led
        Me.Led_speedup = New NationalInstruments.UI.WindowsForms.Led
        Me.Label16 = New System.Windows.Forms.Label
        Me.Led_slowdown = New NationalInstruments.UI.WindowsForms.Led
        Me.Led_slip_act = New NationalInstruments.UI.WindowsForms.Led
        Me.Label20 = New System.Windows.Forms.Label
        Me.Led_m04 = New NationalInstruments.UI.WindowsForms.Led
        Me.Label21 = New System.Windows.Forms.Label
        Me.Led_m02 = New NationalInstruments.UI.WindowsForms.Led
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.WaveformGraph1 = New NationalInstruments.UI.WindowsForms.WaveformGraph
        Me.Belt = New NationalInstruments.UI.WaveformPlot
        Me.historyXAxis = New NationalInstruments.UI.XAxis
        Me.historyYAxis = New NationalInstruments.UI.YAxis
        Me.Screen02 = New NationalInstruments.UI.WaveformPlot
        Me.Screen04 = New NationalInstruments.UI.WaveformPlot
        Me.Screen06 = New NationalInstruments.UI.WaveformPlot
        Me.Screen08 = New NationalInstruments.UI.WaveformPlot
        Me.sch_p_1 = New System.Windows.Forms.PictureBox
        Me.stur_sch_n_1 = New System.Windows.Forms.PictureBox
        Me.stur_sch_p_1 = New System.Windows.Forms.PictureBox
        Me.sch_0_1 = New System.Windows.Forms.PictureBox
        Me.sch_n_1 = New System.Windows.Forms.PictureBox
        Me.sch_n_4 = New System.Windows.Forms.PictureBox
        Me.sch_p_2 = New System.Windows.Forms.PictureBox
        Me.sch_0_4 = New System.Windows.Forms.PictureBox
        Me.stur_sch_n_2 = New System.Windows.Forms.PictureBox
        Me.stur_sch_p_4 = New System.Windows.Forms.PictureBox
        Me.stur_sch_p_2 = New System.Windows.Forms.PictureBox
        Me.stur_sch_n_4 = New System.Windows.Forms.PictureBox
        Me.sch_0_2 = New System.Windows.Forms.PictureBox
        Me.sch_p_4 = New System.Windows.Forms.PictureBox
        Me.sch_n_2 = New System.Windows.Forms.PictureBox
        Me.sch_n_3 = New System.Windows.Forms.PictureBox
        Me.sch_p_3 = New System.Windows.Forms.PictureBox
        Me.sch_0_3 = New System.Windows.Forms.PictureBox
        Me.stur_sch_n_3 = New System.Windows.Forms.PictureBox
        Me.stur_sch_p_3 = New System.Windows.Forms.PictureBox
        Me.res_nood_uit = New System.Windows.Forms.PictureBox
        Me.res_nood_aan = New System.Windows.Forms.PictureBox
        Me.nood_stork_uit = New System.Windows.Forms.PictureBox
        Me.nood_stork_aan = New System.Windows.Forms.PictureBox
        Me.st_joi_LN = New System.Windows.Forms.PictureBox
        Me.nood_mahlo_uit = New System.Windows.Forms.PictureBox
        Me.st_joi_LP = New System.Windows.Forms.PictureBox
        Me.nood_mahlo_aan = New System.Windows.Forms.PictureBox
        Me.st_joi_SN = New System.Windows.Forms.PictureBox
        Me.st_joi_SP = New System.Windows.Forms.PictureBox
        Me.nood_hvl_uit = New System.Windows.Forms.PictureBox
        Me.nood_hvl_aan = New System.Windows.Forms.PictureBox
        Me.joi_sn = New System.Windows.Forms.PictureBox
        Me.joi_sp = New System.Windows.Forms.PictureBox
        Me.Vliscomode_uit = New System.Windows.Forms.PictureBox
        Me.joi_lp = New System.Windows.Forms.PictureBox
        Me.Vliscomode_aan = New System.Windows.Forms.PictureBox
        Me.joi_ln = New System.Windows.Forms.PictureBox
        Me.joi_neitral = New System.Windows.Forms.PictureBox
        Me.speed_up = New System.Windows.Forms.PictureBox
        Me.stur_speed_dw = New System.Windows.Forms.PictureBox
        Me.slip_man_n = New System.Windows.Forms.PictureBox
        Me.stur_speed_up = New System.Windows.Forms.PictureBox
        Me.slip_man_0 = New System.Windows.Forms.PictureBox
        Me.speed_0 = New System.Windows.Forms.PictureBox
        Me.stur_slip_man_p = New System.Windows.Forms.PictureBox
        Me.speed_dw = New System.Windows.Forms.PictureBox
        Me.stur_slip_man_n = New System.Windows.Forms.PictureBox
        Me.slip_man_p = New System.Windows.Forms.PictureBox
        Me.stop_uit = New System.Windows.Forms.PictureBox
        Me.stop_aan = New System.Windows.Forms.PictureBox
        Me.auto_aan = New System.Windows.Forms.PictureBox
        Me.auto_uit = New System.Windows.Forms.PictureBox
        Me.Button1 = New System.Windows.Forms.Button
        Me.Panel1.SuspendLayout()
        Me.Panel2.SuspendLayout()
        CType(Me.Led_SCB_Act, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_SCB_noAct, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_SCB_no_pos, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_nood_stork, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_m06, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_stop, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_m08, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_speedup, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_slowdown, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_slip_act, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_m04, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Led_m02, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.WaveformGraph1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_p_1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_sch_n_1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_sch_p_1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_0_1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_n_1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_n_4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_p_2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_0_4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_sch_n_2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_sch_p_4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_sch_p_2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_sch_n_4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_0_2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_p_4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_n_2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_n_3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_p_3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.sch_0_3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_sch_n_3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_sch_p_3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.res_nood_uit, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.res_nood_aan, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nood_stork_uit, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nood_stork_aan, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.st_joi_LN, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nood_mahlo_uit, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.st_joi_LP, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nood_mahlo_aan, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.st_joi_SN, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.st_joi_SP, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nood_hvl_uit, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nood_hvl_aan, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.joi_sn, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.joi_sp, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Vliscomode_uit, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.joi_lp, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Vliscomode_aan, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.joi_ln, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.joi_neitral, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.speed_up, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_speed_dw, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.slip_man_n, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_speed_up, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.slip_man_0, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.speed_0, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_slip_man_p, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.speed_dw, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stur_slip_man_n, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.slip_man_p, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stop_uit, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.stop_aan, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.auto_aan, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.auto_uit, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(119, 37)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(65, 13)
        Me.Label1.TabIndex = 21
        Me.Label1.Text = "Screen M08"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(484, 37)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(65, 13)
        Me.Label2.TabIndex = 22
        Me.Label2.Text = "Screen M02"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(360, 37)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(65, 13)
        Me.Label3.TabIndex = 23
        Me.Label3.Text = "Screen M04"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(237, 37)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(65, 13)
        Me.Label4.TabIndex = 24
        Me.Label4.Text = "Screen M06"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(15, 398)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(75, 13)
        Me.Label13.TabIndex = 161
        Me.Label13.Text = "Slip Correction"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Location = New System.Drawing.Point(11, 336)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(86, 13)
        Me.Label14.TabIndex = 155
        Me.Label14.Text = "P - maual slip - N"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(39, 122)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(95, 13)
        Me.Label10.TabIndex = 149
        Me.Label10.Text = "Fitting: auto - hand"
        '
        'CB_JoggingMode
        '
        Me.CB_JoggingMode.AutoSize = True
        Me.CB_JoggingMode.Location = New System.Drawing.Point(15, 10)
        Me.CB_JoggingMode.Name = "CB_JoggingMode"
        Me.CB_JoggingMode.Size = New System.Drawing.Size(124, 17)
        Me.CB_JoggingMode.TabIndex = 146
        Me.CB_JoggingMode.Text = "Jogging mode active"
        Me.CB_JoggingMode.UseVisualStyleBackColor = True
        '
        'CB_RunEnabled
        '
        Me.CB_RunEnabled.AutoSize = True
        Me.CB_RunEnabled.Location = New System.Drawing.Point(15, 33)
        Me.CB_RunEnabled.Name = "CB_RunEnabled"
        Me.CB_RunEnabled.Size = New System.Drawing.Size(87, 17)
        Me.CB_RunEnabled.TabIndex = 145
        Me.CB_RunEnabled.Text = "Run enabled"
        Me.CB_RunEnabled.UseVisualStyleBackColor = True
        '
        'CB_screen_in_pos
        '
        Me.CB_screen_in_pos.AutoSize = True
        Me.CB_screen_in_pos.Location = New System.Drawing.Point(15, 56)
        Me.CB_screen_in_pos.Name = "CB_screen_in_pos"
        Me.CB_screen_in_pos.Size = New System.Drawing.Size(122, 17)
        Me.CB_screen_in_pos.TabIndex = 144
        Me.CB_screen_in_pos.Text = "Screens in print pos."
        Me.CB_screen_in_pos.UseVisualStyleBackColor = True
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(38, 153)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(29, 13)
        Me.Label12.TabIndex = 143
        Me.Label12.Text = "Stop"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(6, 287)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(112, 13)
        Me.Label11.TabIndex = 140
        Me.Label11.Text = "Speed up - slow down"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(39, 89)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(65, 13)
        Me.Label9.TabIndex = 134
        Me.Label9.Text = "Visco - stork"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(39, 252)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(82, 13)
        Me.Label8.TabIndex = 131
        Me.Label8.Text = "Reset noodstop"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(38, 229)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(77, 13)
        Me.Label7.TabIndex = 128
        Me.Label7.Text = "Noodstop HVL"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(38, 203)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(85, 13)
        Me.Label6.TabIndex = 125
        Me.Label6.Text = "Noodstop Mahlo"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(38, 176)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(81, 13)
        Me.Label5.TabIndex = 122
        Me.Label5.Text = "Noodstop Stork"
        '
        'Panel1
        '
        Me.Panel1.AutoScroll = True
        Me.Panel1.Controls.Add(Me.res_nood_uit)
        Me.Panel1.Controls.Add(Me.CB_JoggingMode)
        Me.Panel1.Controls.Add(Me.res_nood_aan)
        Me.Panel1.Controls.Add(Me.nood_stork_uit)
        Me.Panel1.Controls.Add(Me.nood_stork_aan)
        Me.Panel1.Controls.Add(Me.Label8)
        Me.Panel1.Controls.Add(Me.Label5)
        Me.Panel1.Controls.Add(Me.st_joi_LN)
        Me.Panel1.Controls.Add(Me.nood_mahlo_uit)
        Me.Panel1.Controls.Add(Me.st_joi_LP)
        Me.Panel1.Controls.Add(Me.nood_mahlo_aan)
        Me.Panel1.Controls.Add(Me.st_joi_SN)
        Me.Panel1.Controls.Add(Me.Label6)
        Me.Panel1.Controls.Add(Me.st_joi_SP)
        Me.Panel1.Controls.Add(Me.nood_hvl_uit)
        Me.Panel1.Controls.Add(Me.Label13)
        Me.Panel1.Controls.Add(Me.nood_hvl_aan)
        Me.Panel1.Controls.Add(Me.joi_sn)
        Me.Panel1.Controls.Add(Me.Label7)
        Me.Panel1.Controls.Add(Me.joi_sp)
        Me.Panel1.Controls.Add(Me.Vliscomode_uit)
        Me.Panel1.Controls.Add(Me.joi_lp)
        Me.Panel1.Controls.Add(Me.Vliscomode_aan)
        Me.Panel1.Controls.Add(Me.joi_ln)
        Me.Panel1.Controls.Add(Me.Label9)
        Me.Panel1.Controls.Add(Me.joi_neitral)
        Me.Panel1.Controls.Add(Me.speed_up)
        Me.Panel1.Controls.Add(Me.Label14)
        Me.Panel1.Controls.Add(Me.stur_speed_dw)
        Me.Panel1.Controls.Add(Me.slip_man_n)
        Me.Panel1.Controls.Add(Me.stur_speed_up)
        Me.Panel1.Controls.Add(Me.slip_man_0)
        Me.Panel1.Controls.Add(Me.speed_0)
        Me.Panel1.Controls.Add(Me.stur_slip_man_p)
        Me.Panel1.Controls.Add(Me.speed_dw)
        Me.Panel1.Controls.Add(Me.stur_slip_man_n)
        Me.Panel1.Controls.Add(Me.Label11)
        Me.Panel1.Controls.Add(Me.slip_man_p)
        Me.Panel1.Controls.Add(Me.stop_uit)
        Me.Panel1.Controls.Add(Me.Label10)
        Me.Panel1.Controls.Add(Me.stop_aan)
        Me.Panel1.Controls.Add(Me.auto_aan)
        Me.Panel1.Controls.Add(Me.Label12)
        Me.Panel1.Controls.Add(Me.auto_uit)
        Me.Panel1.Controls.Add(Me.CB_screen_in_pos)
        Me.Panel1.Controls.Add(Me.CB_RunEnabled)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Left
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(156, 493)
        Me.Panel1.TabIndex = 166
        '
        'Panel2
        '
        Me.Panel2.Controls.Add(Me.Button1)
        Me.Panel2.Controls.Add(Me.Label15)
        Me.Panel2.Controls.Add(Me.Label1)
        Me.Panel2.Controls.Add(Me.Label27)
        Me.Panel2.Controls.Add(Me.sch_p_1)
        Me.Panel2.Controls.Add(Me.Led_SCB_Act)
        Me.Panel2.Controls.Add(Me.Label4)
        Me.Panel2.Controls.Add(Me.Label28)
        Me.Panel2.Controls.Add(Me.stur_sch_n_1)
        Me.Panel2.Controls.Add(Me.Led_SCB_noAct)
        Me.Panel2.Controls.Add(Me.Label3)
        Me.Panel2.Controls.Add(Me.Label29)
        Me.Panel2.Controls.Add(Me.stur_sch_p_1)
        Me.Panel2.Controls.Add(Me.Led_SCB_no_pos)
        Me.Panel2.Controls.Add(Me.Label2)
        Me.Panel2.Controls.Add(Me.Label22)
        Me.Panel2.Controls.Add(Me.Label19)
        Me.Panel2.Controls.Add(Me.Led_nood_stork)
        Me.Panel2.Controls.Add(Me.Led_m06)
        Me.Panel2.Controls.Add(Me.Label17)
        Me.Panel2.Controls.Add(Me.Label30)
        Me.Panel2.Controls.Add(Me.Led_stop)
        Me.Panel2.Controls.Add(Me.sch_0_1)
        Me.Panel2.Controls.Add(Me.Label18)
        Me.Panel2.Controls.Add(Me.Led_m08)
        Me.Panel2.Controls.Add(Me.Led_speedup)
        Me.Panel2.Controls.Add(Me.sch_n_1)
        Me.Panel2.Controls.Add(Me.Label16)
        Me.Panel2.Controls.Add(Me.sch_n_4)
        Me.Panel2.Controls.Add(Me.Led_slowdown)
        Me.Panel2.Controls.Add(Me.Led_slip_act)
        Me.Panel2.Controls.Add(Me.sch_p_2)
        Me.Panel2.Controls.Add(Me.Label20)
        Me.Panel2.Controls.Add(Me.Led_m04)
        Me.Panel2.Controls.Add(Me.sch_0_4)
        Me.Panel2.Controls.Add(Me.stur_sch_n_2)
        Me.Panel2.Controls.Add(Me.Label21)
        Me.Panel2.Controls.Add(Me.Led_m02)
        Me.Panel2.Controls.Add(Me.stur_sch_p_4)
        Me.Panel2.Controls.Add(Me.stur_sch_p_2)
        Me.Panel2.Controls.Add(Me.stur_sch_n_4)
        Me.Panel2.Controls.Add(Me.sch_0_2)
        Me.Panel2.Controls.Add(Me.sch_p_4)
        Me.Panel2.Controls.Add(Me.sch_n_2)
        Me.Panel2.Controls.Add(Me.sch_n_3)
        Me.Panel2.Controls.Add(Me.sch_p_3)
        Me.Panel2.Controls.Add(Me.sch_0_3)
        Me.Panel2.Controls.Add(Me.stur_sch_n_3)
        Me.Panel2.Controls.Add(Me.stur_sch_p_3)
        Me.Panel2.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel2.Location = New System.Drawing.Point(156, 0)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(651, 151)
        Me.Panel2.TabIndex = 167
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(57, 97)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(59, 13)
        Me.Label15.TabIndex = 171
        Me.Label15.Text = "Nood stork"
        '
        'Label27
        '
        Me.Label27.AutoSize = True
        Me.Label27.Location = New System.Drawing.Point(471, 122)
        Me.Label27.Name = "Label27"
        Me.Label27.Size = New System.Drawing.Size(60, 13)
        Me.Label27.TabIndex = 193
        Me.Label27.Text = "SCB active"
        '
        'Led_SCB_Act
        '
        Me.Led_SCB_Act.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_SCB_Act.Location = New System.Drawing.Point(446, 114)
        Me.Led_SCB_Act.Name = "Led_SCB_Act"
        Me.Led_SCB_Act.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_SCB_Act.Size = New System.Drawing.Size(30, 30)
        Me.Led_SCB_Act.TabIndex = 192
        '
        'Label28
        '
        Me.Label28.AutoSize = True
        Me.Label28.Location = New System.Drawing.Point(471, 97)
        Me.Label28.Name = "Label28"
        Me.Label28.Size = New System.Drawing.Size(78, 13)
        Me.Label28.TabIndex = 191
        Me.Label28.Text = "SCB not active"
        '
        'Led_SCB_noAct
        '
        Me.Led_SCB_noAct.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_SCB_noAct.Location = New System.Drawing.Point(446, 89)
        Me.Led_SCB_noAct.Name = "Led_SCB_noAct"
        Me.Led_SCB_noAct.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_SCB_noAct.Size = New System.Drawing.Size(30, 30)
        Me.Led_SCB_noAct.TabIndex = 190
        '
        'Label29
        '
        Me.Label29.AutoSize = True
        Me.Label29.Location = New System.Drawing.Point(332, 122)
        Me.Label29.Name = "Label29"
        Me.Label29.Size = New System.Drawing.Size(89, 13)
        Me.Label29.TabIndex = 189
        Me.Label29.Text = "SCB no ac. poss."
        '
        'Led_SCB_no_pos
        '
        Me.Led_SCB_no_pos.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_SCB_no_pos.Location = New System.Drawing.Point(307, 114)
        Me.Led_SCB_no_pos.Name = "Led_SCB_no_pos"
        Me.Led_SCB_no_pos.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_SCB_no_pos.Size = New System.Drawing.Size(30, 30)
        Me.Led_SCB_no_pos.TabIndex = 188
        '
        'Label22
        '
        Me.Label22.AutoSize = True
        Me.Label22.Location = New System.Drawing.Point(332, 97)
        Me.Label22.Name = "Label22"
        Me.Label22.Size = New System.Drawing.Size(80, 13)
        Me.Label22.TabIndex = 179
        Me.Label22.Text = "Slip corr. active"
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.Location = New System.Drawing.Point(276, 13)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(60, 13)
        Me.Label19.TabIndex = 185
        Me.Label19.Text = "M06 active"
        '
        'Led_nood_stork
        '
        Me.Led_nood_stork.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_nood_stork.Location = New System.Drawing.Point(32, 89)
        Me.Led_nood_stork.Name = "Led_nood_stork"
        Me.Led_nood_stork.OffColor = System.Drawing.Color.DarkRed
        Me.Led_nood_stork.OnColor = System.Drawing.Color.Red
        Me.Led_nood_stork.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_nood_stork.Size = New System.Drawing.Size(30, 30)
        Me.Led_nood_stork.TabIndex = 178
        '
        'Led_m06
        '
        Me.Led_m06.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_m06.Location = New System.Drawing.Point(251, 5)
        Me.Led_m06.Name = "Led_m06"
        Me.Led_m06.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_m06.Size = New System.Drawing.Size(30, 30)
        Me.Led_m06.TabIndex = 184
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.Location = New System.Drawing.Point(57, 122)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(29, 13)
        Me.Label17.TabIndex = 177
        Me.Label17.Text = "Stop"
        '
        'Label30
        '
        Me.Label30.AutoSize = True
        Me.Label30.Location = New System.Drawing.Point(153, 14)
        Me.Label30.Name = "Label30"
        Me.Label30.Size = New System.Drawing.Size(60, 13)
        Me.Label30.TabIndex = 187
        Me.Label30.Text = "M08 active"
        '
        'Led_stop
        '
        Me.Led_stop.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_stop.Location = New System.Drawing.Point(32, 114)
        Me.Led_stop.Name = "Led_stop"
        Me.Led_stop.OffColor = System.Drawing.Color.DarkRed
        Me.Led_stop.OnColor = System.Drawing.Color.Red
        Me.Led_stop.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_stop.Size = New System.Drawing.Size(30, 30)
        Me.Led_stop.TabIndex = 176
        '
        'Label18
        '
        Me.Label18.AutoSize = True
        Me.Label18.Location = New System.Drawing.Point(197, 122)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(55, 13)
        Me.Label18.TabIndex = 175
        Me.Label18.Text = "Speed Up"
        '
        'Led_m08
        '
        Me.Led_m08.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_m08.Location = New System.Drawing.Point(128, 6)
        Me.Led_m08.Name = "Led_m08"
        Me.Led_m08.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_m08.Size = New System.Drawing.Size(30, 30)
        Me.Led_m08.TabIndex = 186
        '
        'Led_speedup
        '
        Me.Led_speedup.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_speedup.Location = New System.Drawing.Point(172, 114)
        Me.Led_speedup.Name = "Led_speedup"
        Me.Led_speedup.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_speedup.Size = New System.Drawing.Size(30, 30)
        Me.Led_speedup.TabIndex = 174
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.Location = New System.Drawing.Point(197, 97)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(59, 13)
        Me.Label16.TabIndex = 173
        Me.Label16.Text = "Slow down"
        '
        'Led_slowdown
        '
        Me.Led_slowdown.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_slowdown.Location = New System.Drawing.Point(172, 89)
        Me.Led_slowdown.Name = "Led_slowdown"
        Me.Led_slowdown.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_slowdown.Size = New System.Drawing.Size(30, 30)
        Me.Led_slowdown.TabIndex = 172
        '
        'Led_slip_act
        '
        Me.Led_slip_act.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_slip_act.Location = New System.Drawing.Point(307, 89)
        Me.Led_slip_act.Name = "Led_slip_act"
        Me.Led_slip_act.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_slip_act.Size = New System.Drawing.Size(30, 30)
        Me.Led_slip_act.TabIndex = 170
        '
        'Label20
        '
        Me.Label20.AutoSize = True
        Me.Label20.Location = New System.Drawing.Point(400, 13)
        Me.Label20.Name = "Label20"
        Me.Label20.Size = New System.Drawing.Size(60, 13)
        Me.Label20.TabIndex = 183
        Me.Label20.Text = "M04 active"
        '
        'Led_m04
        '
        Me.Led_m04.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_m04.Location = New System.Drawing.Point(375, 5)
        Me.Led_m04.Name = "Led_m04"
        Me.Led_m04.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_m04.Size = New System.Drawing.Size(30, 30)
        Me.Led_m04.TabIndex = 182
        '
        'Label21
        '
        Me.Label21.AutoSize = True
        Me.Label21.Location = New System.Drawing.Point(524, 12)
        Me.Label21.Name = "Label21"
        Me.Label21.Size = New System.Drawing.Size(60, 13)
        Me.Label21.TabIndex = 181
        Me.Label21.Text = "M02 active"
        '
        'Led_m02
        '
        Me.Led_m02.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_m02.Location = New System.Drawing.Point(499, 4)
        Me.Led_m02.Name = "Led_m02"
        Me.Led_m02.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_m02.Size = New System.Drawing.Size(30, 30)
        Me.Led_m02.TabIndex = 180
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        '
        'WaveformGraph1
        '
        Me.WaveformGraph1.Border = NationalInstruments.UI.Border.ThickFrame3D
        Me.WaveformGraph1.Caption = "Speed Belt and Screens"
        Me.WaveformGraph1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.WaveformGraph1.Location = New System.Drawing.Point(156, 151)
        Me.WaveformGraph1.Name = "WaveformGraph1"
        Me.WaveformGraph1.Plots.AddRange(New NationalInstruments.UI.WaveformPlot() {Me.Belt, Me.Screen02, Me.Screen04, Me.Screen06, Me.Screen08})
        Me.WaveformGraph1.Size = New System.Drawing.Size(651, 342)
        Me.WaveformGraph1.TabIndex = 168
        Me.WaveformGraph1.XAxes.AddRange(New NationalInstruments.UI.XAxis() {Me.historyXAxis})
        Me.WaveformGraph1.YAxes.AddRange(New NationalInstruments.UI.YAxis() {Me.historyYAxis})
        Me.WaveformGraph1.ZoomFactor = 1.0!
        '
        'Belt
        '
        Me.Belt.LineColor = System.Drawing.Color.White
        Me.Belt.ToolTipsEnabled = True
        Me.Belt.XAxis = Me.historyXAxis
        Me.Belt.YAxis = Me.historyYAxis
        '
        'historyXAxis
        '
        Me.historyXAxis.AutoMinorDivisionFrequency = 4
        Me.historyXAxis.MajorDivisions.GridVisible = True
        Me.historyXAxis.MinorDivisions.GridVisible = True
        Me.historyXAxis.MinorDivisions.TickVisible = True
        Me.historyXAxis.Mode = NationalInstruments.UI.AxisMode.StripChart
        Me.historyXAxis.Range = New NationalInstruments.UI.Range(0, 1000)
        '
        'historyYAxis
        '
        Me.historyYAxis.AutoMinorDivisionFrequency = 4
        Me.historyYAxis.Caption = "Speed"
        Me.historyYAxis.MajorDivisions.GridVisible = True
        Me.historyYAxis.MinorDivisions.GridVisible = True
        Me.historyYAxis.MinorDivisions.TickVisible = True
        Me.historyYAxis.Mode = NationalInstruments.UI.AxisMode.Fixed
        Me.historyYAxis.Range = New NationalInstruments.UI.Range(0, 100)
        '
        'Screen02
        '
        Me.Screen02.ToolTipsEnabled = True
        Me.Screen02.XAxis = Me.historyXAxis
        Me.Screen02.YAxis = Me.historyYAxis
        '
        'Screen04
        '
        Me.Screen04.XAxis = Me.historyXAxis
        Me.Screen04.YAxis = Me.historyYAxis
        '
        'Screen06
        '
        Me.Screen06.XAxis = Me.historyXAxis
        Me.Screen06.YAxis = Me.historyYAxis
        '
        'Screen08
        '
        Me.Screen08.XAxis = Me.historyXAxis
        Me.Screen08.YAxis = Me.historyYAxis
        '
        'sch_p_1
        '
        Me.sch_p_1.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_p
        Me.sch_p_1.InitialImage = CType(resources.GetObject("sch_p_1.InitialImage"), System.Drawing.Image)
        Me.sch_p_1.Location = New System.Drawing.Point(508, 65)
        Me.sch_p_1.Name = "sch_p_1"
        Me.sch_p_1.Size = New System.Drawing.Size(18, 18)
        Me.sch_p_1.TabIndex = 0
        Me.sch_p_1.TabStop = False
        '
        'stur_sch_n_1
        '
        Me.stur_sch_n_1.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_n
        Me.stur_sch_n_1.Location = New System.Drawing.Point(527, 53)
        Me.stur_sch_n_1.Name = "stur_sch_n_1"
        Me.stur_sch_n_1.Size = New System.Drawing.Size(18, 18)
        Me.stur_sch_n_1.TabIndex = 2
        Me.stur_sch_n_1.TabStop = False
        '
        'stur_sch_p_1
        '
        Me.stur_sch_p_1.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_p
        Me.stur_sch_p_1.Location = New System.Drawing.Point(490, 53)
        Me.stur_sch_p_1.Name = "stur_sch_p_1"
        Me.stur_sch_p_1.Size = New System.Drawing.Size(18, 18)
        Me.stur_sch_p_1.TabIndex = 3
        Me.stur_sch_p_1.TabStop = False
        '
        'sch_0_1
        '
        Me.sch_0_1.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_0
        Me.sch_0_1.InitialImage = CType(resources.GetObject("sch_0_1.InitialImage"), System.Drawing.Image)
        Me.sch_0_1.Location = New System.Drawing.Point(508, 65)
        Me.sch_0_1.Name = "sch_0_1"
        Me.sch_0_1.Size = New System.Drawing.Size(18, 18)
        Me.sch_0_1.TabIndex = 4
        Me.sch_0_1.TabStop = False
        '
        'sch_n_1
        '
        Me.sch_n_1.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_n
        Me.sch_n_1.InitialImage = CType(resources.GetObject("sch_n_1.InitialImage"), System.Drawing.Image)
        Me.sch_n_1.Location = New System.Drawing.Point(508, 65)
        Me.sch_n_1.Name = "sch_n_1"
        Me.sch_n_1.Size = New System.Drawing.Size(18, 18)
        Me.sch_n_1.TabIndex = 5
        Me.sch_n_1.TabStop = False
        '
        'sch_n_4
        '
        Me.sch_n_4.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_n
        Me.sch_n_4.InitialImage = CType(resources.GetObject("sch_n_4.InitialImage"), System.Drawing.Image)
        Me.sch_n_4.Location = New System.Drawing.Point(140, 65)
        Me.sch_n_4.Name = "sch_n_4"
        Me.sch_n_4.Size = New System.Drawing.Size(18, 18)
        Me.sch_n_4.TabIndex = 20
        Me.sch_n_4.TabStop = False
        '
        'sch_p_2
        '
        Me.sch_p_2.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_p
        Me.sch_p_2.InitialImage = CType(resources.GetObject("sch_p_2.InitialImage"), System.Drawing.Image)
        Me.sch_p_2.Location = New System.Drawing.Point(384, 65)
        Me.sch_p_2.Name = "sch_p_2"
        Me.sch_p_2.Size = New System.Drawing.Size(18, 18)
        Me.sch_p_2.TabIndex = 6
        Me.sch_p_2.TabStop = False
        '
        'sch_0_4
        '
        Me.sch_0_4.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_0
        Me.sch_0_4.InitialImage = CType(resources.GetObject("sch_0_4.InitialImage"), System.Drawing.Image)
        Me.sch_0_4.Location = New System.Drawing.Point(140, 65)
        Me.sch_0_4.Name = "sch_0_4"
        Me.sch_0_4.Size = New System.Drawing.Size(18, 18)
        Me.sch_0_4.TabIndex = 19
        Me.sch_0_4.TabStop = False
        '
        'stur_sch_n_2
        '
        Me.stur_sch_n_2.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_n
        Me.stur_sch_n_2.Location = New System.Drawing.Point(403, 53)
        Me.stur_sch_n_2.Name = "stur_sch_n_2"
        Me.stur_sch_n_2.Size = New System.Drawing.Size(18, 18)
        Me.stur_sch_n_2.TabIndex = 7
        Me.stur_sch_n_2.TabStop = False
        '
        'stur_sch_p_4
        '
        Me.stur_sch_p_4.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_p
        Me.stur_sch_p_4.Location = New System.Drawing.Point(122, 53)
        Me.stur_sch_p_4.Name = "stur_sch_p_4"
        Me.stur_sch_p_4.Size = New System.Drawing.Size(18, 18)
        Me.stur_sch_p_4.TabIndex = 18
        Me.stur_sch_p_4.TabStop = False
        '
        'stur_sch_p_2
        '
        Me.stur_sch_p_2.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_p
        Me.stur_sch_p_2.Location = New System.Drawing.Point(366, 53)
        Me.stur_sch_p_2.Name = "stur_sch_p_2"
        Me.stur_sch_p_2.Size = New System.Drawing.Size(18, 18)
        Me.stur_sch_p_2.TabIndex = 8
        Me.stur_sch_p_2.TabStop = False
        '
        'stur_sch_n_4
        '
        Me.stur_sch_n_4.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_n
        Me.stur_sch_n_4.Location = New System.Drawing.Point(159, 53)
        Me.stur_sch_n_4.Name = "stur_sch_n_4"
        Me.stur_sch_n_4.Size = New System.Drawing.Size(18, 18)
        Me.stur_sch_n_4.TabIndex = 17
        Me.stur_sch_n_4.TabStop = False
        '
        'sch_0_2
        '
        Me.sch_0_2.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_0
        Me.sch_0_2.InitialImage = CType(resources.GetObject("sch_0_2.InitialImage"), System.Drawing.Image)
        Me.sch_0_2.Location = New System.Drawing.Point(385, 65)
        Me.sch_0_2.Name = "sch_0_2"
        Me.sch_0_2.Size = New System.Drawing.Size(18, 18)
        Me.sch_0_2.TabIndex = 9
        Me.sch_0_2.TabStop = False
        '
        'sch_p_4
        '
        Me.sch_p_4.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_p
        Me.sch_p_4.InitialImage = CType(resources.GetObject("sch_p_4.InitialImage"), System.Drawing.Image)
        Me.sch_p_4.Location = New System.Drawing.Point(140, 65)
        Me.sch_p_4.Name = "sch_p_4"
        Me.sch_p_4.Size = New System.Drawing.Size(18, 18)
        Me.sch_p_4.TabIndex = 16
        Me.sch_p_4.TabStop = False
        '
        'sch_n_2
        '
        Me.sch_n_2.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_n
        Me.sch_n_2.InitialImage = CType(resources.GetObject("sch_n_2.InitialImage"), System.Drawing.Image)
        Me.sch_n_2.Location = New System.Drawing.Point(385, 65)
        Me.sch_n_2.Name = "sch_n_2"
        Me.sch_n_2.Size = New System.Drawing.Size(18, 18)
        Me.sch_n_2.TabIndex = 10
        Me.sch_n_2.TabStop = False
        '
        'sch_n_3
        '
        Me.sch_n_3.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_n
        Me.sch_n_3.InitialImage = CType(resources.GetObject("sch_n_3.InitialImage"), System.Drawing.Image)
        Me.sch_n_3.Location = New System.Drawing.Point(260, 65)
        Me.sch_n_3.Name = "sch_n_3"
        Me.sch_n_3.Size = New System.Drawing.Size(18, 18)
        Me.sch_n_3.TabIndex = 15
        Me.sch_n_3.TabStop = False
        '
        'sch_p_3
        '
        Me.sch_p_3.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_p
        Me.sch_p_3.InitialImage = CType(resources.GetObject("sch_p_3.InitialImage"), System.Drawing.Image)
        Me.sch_p_3.Location = New System.Drawing.Point(260, 65)
        Me.sch_p_3.Name = "sch_p_3"
        Me.sch_p_3.Size = New System.Drawing.Size(18, 18)
        Me.sch_p_3.TabIndex = 11
        Me.sch_p_3.TabStop = False
        '
        'sch_0_3
        '
        Me.sch_0_3.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_0
        Me.sch_0_3.InitialImage = CType(resources.GetObject("sch_0_3.InitialImage"), System.Drawing.Image)
        Me.sch_0_3.Location = New System.Drawing.Point(260, 65)
        Me.sch_0_3.Name = "sch_0_3"
        Me.sch_0_3.Size = New System.Drawing.Size(18, 18)
        Me.sch_0_3.TabIndex = 14
        Me.sch_0_3.TabStop = False
        '
        'stur_sch_n_3
        '
        Me.stur_sch_n_3.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_n
        Me.stur_sch_n_3.Location = New System.Drawing.Point(279, 53)
        Me.stur_sch_n_3.Name = "stur_sch_n_3"
        Me.stur_sch_n_3.Size = New System.Drawing.Size(18, 18)
        Me.stur_sch_n_3.TabIndex = 12
        Me.stur_sch_n_3.TabStop = False
        '
        'stur_sch_p_3
        '
        Me.stur_sch_p_3.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_p
        Me.stur_sch_p_3.Location = New System.Drawing.Point(242, 53)
        Me.stur_sch_p_3.Name = "stur_sch_p_3"
        Me.stur_sch_p_3.Size = New System.Drawing.Size(18, 18)
        Me.stur_sch_p_3.TabIndex = 13
        Me.stur_sch_p_3.TabStop = False
        '
        'res_nood_uit
        '
        Me.res_nood_uit.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.res_uit1
        Me.res_nood_uit.Location = New System.Drawing.Point(15, 250)
        Me.res_nood_uit.Name = "res_nood_uit"
        Me.res_nood_uit.Size = New System.Drawing.Size(18, 17)
        Me.res_nood_uit.TabIndex = 130
        Me.res_nood_uit.TabStop = False
        '
        'res_nood_aan
        '
        Me.res_nood_aan.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.res_aan1
        Me.res_nood_aan.Location = New System.Drawing.Point(16, 250)
        Me.res_nood_aan.Name = "res_nood_aan"
        Me.res_nood_aan.Size = New System.Drawing.Size(18, 17)
        Me.res_nood_aan.TabIndex = 129
        Me.res_nood_aan.TabStop = False
        '
        'nood_stork_uit
        '
        Me.nood_stork_uit.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.ns_uit1
        Me.nood_stork_uit.Location = New System.Drawing.Point(15, 175)
        Me.nood_stork_uit.Name = "nood_stork_uit"
        Me.nood_stork_uit.Size = New System.Drawing.Size(18, 17)
        Me.nood_stork_uit.TabIndex = 120
        Me.nood_stork_uit.TabStop = False
        '
        'nood_stork_aan
        '
        Me.nood_stork_aan.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.ns_aan
        Me.nood_stork_aan.Location = New System.Drawing.Point(15, 175)
        Me.nood_stork_aan.Name = "nood_stork_aan"
        Me.nood_stork_aan.Size = New System.Drawing.Size(18, 17)
        Me.nood_stork_aan.TabIndex = 121
        Me.nood_stork_aan.TabStop = False
        '
        'st_joi_LN
        '
        Me.st_joi_LN.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_ln
        Me.st_joi_LN.Location = New System.Drawing.Point(66, 437)
        Me.st_joi_LN.Name = "st_joi_LN"
        Me.st_joi_LN.Size = New System.Drawing.Size(18, 18)
        Me.st_joi_LN.TabIndex = 165
        Me.st_joi_LN.TabStop = False
        '
        'nood_mahlo_uit
        '
        Me.nood_mahlo_uit.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.ns_uit1
        Me.nood_mahlo_uit.Location = New System.Drawing.Point(15, 201)
        Me.nood_mahlo_uit.Name = "nood_mahlo_uit"
        Me.nood_mahlo_uit.Size = New System.Drawing.Size(18, 17)
        Me.nood_mahlo_uit.TabIndex = 123
        Me.nood_mahlo_uit.TabStop = False
        '
        'st_joi_LP
        '
        Me.st_joi_LP.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_lp
        Me.st_joi_LP.Location = New System.Drawing.Point(18, 437)
        Me.st_joi_LP.Name = "st_joi_LP"
        Me.st_joi_LP.Size = New System.Drawing.Size(18, 18)
        Me.st_joi_LP.TabIndex = 164
        Me.st_joi_LP.TabStop = False
        '
        'nood_mahlo_aan
        '
        Me.nood_mahlo_aan.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.ns_aan
        Me.nood_mahlo_aan.Location = New System.Drawing.Point(15, 201)
        Me.nood_mahlo_aan.Name = "nood_mahlo_aan"
        Me.nood_mahlo_aan.Size = New System.Drawing.Size(18, 17)
        Me.nood_mahlo_aan.TabIndex = 124
        Me.nood_mahlo_aan.TabStop = False
        '
        'st_joi_SN
        '
        Me.st_joi_SN.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_sn
        Me.st_joi_SN.Location = New System.Drawing.Point(42, 461)
        Me.st_joi_SN.Name = "st_joi_SN"
        Me.st_joi_SN.Size = New System.Drawing.Size(18, 18)
        Me.st_joi_SN.TabIndex = 163
        Me.st_joi_SN.TabStop = False
        '
        'st_joi_SP
        '
        Me.st_joi_SP.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_sp
        Me.st_joi_SP.Location = New System.Drawing.Point(42, 414)
        Me.st_joi_SP.Name = "st_joi_SP"
        Me.st_joi_SP.Size = New System.Drawing.Size(18, 18)
        Me.st_joi_SP.TabIndex = 162
        Me.st_joi_SP.TabStop = False
        '
        'nood_hvl_uit
        '
        Me.nood_hvl_uit.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.ns_uit1
        Me.nood_hvl_uit.Location = New System.Drawing.Point(15, 227)
        Me.nood_hvl_uit.Name = "nood_hvl_uit"
        Me.nood_hvl_uit.Size = New System.Drawing.Size(18, 17)
        Me.nood_hvl_uit.TabIndex = 126
        Me.nood_hvl_uit.TabStop = False
        '
        'nood_hvl_aan
        '
        Me.nood_hvl_aan.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.ns_aan
        Me.nood_hvl_aan.Location = New System.Drawing.Point(15, 227)
        Me.nood_hvl_aan.Name = "nood_hvl_aan"
        Me.nood_hvl_aan.Size = New System.Drawing.Size(18, 17)
        Me.nood_hvl_aan.TabIndex = 127
        Me.nood_hvl_aan.TabStop = False
        '
        'joi_sn
        '
        Me.joi_sn.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.joi_sn
        Me.joi_sn.InitialImage = CType(resources.GetObject("joi_sn.InitialImage"), System.Drawing.Image)
        Me.joi_sn.Location = New System.Drawing.Point(42, 437)
        Me.joi_sn.Name = "joi_sn"
        Me.joi_sn.Size = New System.Drawing.Size(18, 18)
        Me.joi_sn.TabIndex = 160
        Me.joi_sn.TabStop = False
        '
        'joi_sp
        '
        Me.joi_sp.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.joi_sp
        Me.joi_sp.InitialImage = CType(resources.GetObject("joi_sp.InitialImage"), System.Drawing.Image)
        Me.joi_sp.Location = New System.Drawing.Point(42, 437)
        Me.joi_sp.Name = "joi_sp"
        Me.joi_sp.Size = New System.Drawing.Size(18, 18)
        Me.joi_sp.TabIndex = 159
        Me.joi_sp.TabStop = False
        '
        'Vliscomode_uit
        '
        Me.Vliscomode_uit.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_uit
        Me.Vliscomode_uit.InitialImage = CType(resources.GetObject("Vliscomode_uit.InitialImage"), System.Drawing.Image)
        Me.Vliscomode_uit.Location = New System.Drawing.Point(15, 79)
        Me.Vliscomode_uit.Name = "Vliscomode_uit"
        Me.Vliscomode_uit.Size = New System.Drawing.Size(18, 27)
        Me.Vliscomode_uit.TabIndex = 132
        Me.Vliscomode_uit.TabStop = False
        '
        'joi_lp
        '
        Me.joi_lp.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.joi_lp
        Me.joi_lp.Location = New System.Drawing.Point(42, 437)
        Me.joi_lp.Name = "joi_lp"
        Me.joi_lp.Size = New System.Drawing.Size(18, 18)
        Me.joi_lp.TabIndex = 158
        Me.joi_lp.TabStop = False
        '
        'Vliscomode_aan
        '
        Me.Vliscomode_aan.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_aan
        Me.Vliscomode_aan.InitialImage = CType(resources.GetObject("Vliscomode_aan.InitialImage"), System.Drawing.Image)
        Me.Vliscomode_aan.Location = New System.Drawing.Point(15, 79)
        Me.Vliscomode_aan.Name = "Vliscomode_aan"
        Me.Vliscomode_aan.Size = New System.Drawing.Size(18, 27)
        Me.Vliscomode_aan.TabIndex = 133
        Me.Vliscomode_aan.TabStop = False
        '
        'joi_ln
        '
        Me.joi_ln.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.joi_ln
        Me.joi_ln.Location = New System.Drawing.Point(42, 437)
        Me.joi_ln.Name = "joi_ln"
        Me.joi_ln.Size = New System.Drawing.Size(18, 18)
        Me.joi_ln.TabIndex = 157
        Me.joi_ln.TabStop = False
        '
        'joi_neitral
        '
        Me.joi_neitral.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.joi_0
        Me.joi_neitral.InitialImage = CType(resources.GetObject("joi_neitral.InitialImage"), System.Drawing.Image)
        Me.joi_neitral.Location = New System.Drawing.Point(42, 437)
        Me.joi_neitral.Name = "joi_neitral"
        Me.joi_neitral.Size = New System.Drawing.Size(18, 18)
        Me.joi_neitral.TabIndex = 156
        Me.joi_neitral.TabStop = False
        '
        'speed_up
        '
        Me.speed_up.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_p
        Me.speed_up.InitialImage = CType(resources.GetObject("speed_up.InitialImage"), System.Drawing.Image)
        Me.speed_up.Location = New System.Drawing.Point(43, 315)
        Me.speed_up.Name = "speed_up"
        Me.speed_up.Size = New System.Drawing.Size(18, 18)
        Me.speed_up.TabIndex = 135
        Me.speed_up.TabStop = False
        '
        'stur_speed_dw
        '
        Me.stur_speed_dw.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_n
        Me.stur_speed_dw.Location = New System.Drawing.Point(62, 303)
        Me.stur_speed_dw.Name = "stur_speed_dw"
        Me.stur_speed_dw.Size = New System.Drawing.Size(18, 18)
        Me.stur_speed_dw.TabIndex = 136
        Me.stur_speed_dw.TabStop = False
        '
        'slip_man_n
        '
        Me.slip_man_n.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_n
        Me.slip_man_n.InitialImage = CType(resources.GetObject("slip_man_n.InitialImage"), System.Drawing.Image)
        Me.slip_man_n.Location = New System.Drawing.Point(43, 364)
        Me.slip_man_n.Name = "slip_man_n"
        Me.slip_man_n.Size = New System.Drawing.Size(18, 18)
        Me.slip_man_n.TabIndex = 154
        Me.slip_man_n.TabStop = False
        '
        'stur_speed_up
        '
        Me.stur_speed_up.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_p
        Me.stur_speed_up.Location = New System.Drawing.Point(25, 303)
        Me.stur_speed_up.Name = "stur_speed_up"
        Me.stur_speed_up.Size = New System.Drawing.Size(18, 18)
        Me.stur_speed_up.TabIndex = 137
        Me.stur_speed_up.TabStop = False
        '
        'slip_man_0
        '
        Me.slip_man_0.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_0
        Me.slip_man_0.InitialImage = CType(resources.GetObject("slip_man_0.InitialImage"), System.Drawing.Image)
        Me.slip_man_0.Location = New System.Drawing.Point(43, 364)
        Me.slip_man_0.Name = "slip_man_0"
        Me.slip_man_0.Size = New System.Drawing.Size(18, 18)
        Me.slip_man_0.TabIndex = 153
        Me.slip_man_0.TabStop = False
        '
        'speed_0
        '
        Me.speed_0.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_0
        Me.speed_0.InitialImage = CType(resources.GetObject("speed_0.InitialImage"), System.Drawing.Image)
        Me.speed_0.Location = New System.Drawing.Point(43, 315)
        Me.speed_0.Name = "speed_0"
        Me.speed_0.Size = New System.Drawing.Size(18, 18)
        Me.speed_0.TabIndex = 138
        Me.speed_0.TabStop = False
        '
        'stur_slip_man_p
        '
        Me.stur_slip_man_p.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_p
        Me.stur_slip_man_p.Location = New System.Drawing.Point(25, 352)
        Me.stur_slip_man_p.Name = "stur_slip_man_p"
        Me.stur_slip_man_p.Size = New System.Drawing.Size(18, 18)
        Me.stur_slip_man_p.TabIndex = 152
        Me.stur_slip_man_p.TabStop = False
        '
        'speed_dw
        '
        Me.speed_dw.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_n
        Me.speed_dw.InitialImage = CType(resources.GetObject("speed_dw.InitialImage"), System.Drawing.Image)
        Me.speed_dw.Location = New System.Drawing.Point(43, 315)
        Me.speed_dw.Name = "speed_dw"
        Me.speed_dw.Size = New System.Drawing.Size(18, 18)
        Me.speed_dw.TabIndex = 139
        Me.speed_dw.TabStop = False
        '
        'stur_slip_man_n
        '
        Me.stur_slip_man_n.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.st_n
        Me.stur_slip_man_n.Location = New System.Drawing.Point(62, 352)
        Me.stur_slip_man_n.Name = "stur_slip_man_n"
        Me.stur_slip_man_n.Size = New System.Drawing.Size(18, 18)
        Me.stur_slip_man_n.TabIndex = 151
        Me.stur_slip_man_n.TabStop = False
        '
        'slip_man_p
        '
        Me.slip_man_p.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_p
        Me.slip_man_p.InitialImage = CType(resources.GetObject("slip_man_p.InitialImage"), System.Drawing.Image)
        Me.slip_man_p.Location = New System.Drawing.Point(43, 364)
        Me.slip_man_p.Name = "slip_man_p"
        Me.slip_man_p.Size = New System.Drawing.Size(18, 18)
        Me.slip_man_p.TabIndex = 150
        Me.slip_man_p.TabStop = False
        '
        'stop_uit
        '
        Me.stop_uit.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.druk_uit
        Me.stop_uit.InitialImage = CType(resources.GetObject("stop_uit.InitialImage"), System.Drawing.Image)
        Me.stop_uit.Location = New System.Drawing.Point(15, 150)
        Me.stop_uit.Name = "stop_uit"
        Me.stop_uit.Size = New System.Drawing.Size(18, 18)
        Me.stop_uit.TabIndex = 141
        Me.stop_uit.TabStop = False
        '
        'stop_aan
        '
        Me.stop_aan.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.druk_aan
        Me.stop_aan.InitialImage = CType(resources.GetObject("stop_aan.InitialImage"), System.Drawing.Image)
        Me.stop_aan.Location = New System.Drawing.Point(15, 150)
        Me.stop_aan.Name = "stop_aan"
        Me.stop_aan.Size = New System.Drawing.Size(18, 18)
        Me.stop_aan.TabIndex = 142
        Me.stop_aan.TabStop = False
        '
        'auto_aan
        '
        Me.auto_aan.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_aan
        Me.auto_aan.InitialImage = CType(resources.GetObject("auto_aan.InitialImage"), System.Drawing.Image)
        Me.auto_aan.Location = New System.Drawing.Point(15, 112)
        Me.auto_aan.Name = "auto_aan"
        Me.auto_aan.Size = New System.Drawing.Size(18, 27)
        Me.auto_aan.TabIndex = 148
        Me.auto_aan.TabStop = False
        '
        'auto_uit
        '
        Me.auto_uit.Image = Global.RSPUniwaxPlcSim.My.Resources.Resources.sch_uit
        Me.auto_uit.InitialImage = CType(resources.GetObject("auto_uit.InitialImage"), System.Drawing.Image)
        Me.auto_uit.Location = New System.Drawing.Point(15, 112)
        Me.auto_uit.Name = "auto_uit"
        Me.auto_uit.Size = New System.Drawing.Size(18, 27)
        Me.auto_uit.TabIndex = 147
        Me.auto_uit.TabStop = False
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(594, 122)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(48, 23)
        Me.Button1.TabIndex = 194
        Me.Button1.Text = "grafiek"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.Control
        Me.ClientSize = New System.Drawing.Size(807, 493)
        Me.Controls.Add(Me.WaveformGraph1)
        Me.Controls.Add(Me.Panel2)
        Me.Controls.Add(Me.Panel1)
        Me.Name = "Form1"
        Me.Text = "RSP Uniwax PLC SIM"
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        CType(Me.Led_SCB_Act, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_SCB_noAct, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_SCB_no_pos, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_nood_stork, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_m06, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_stop, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_m08, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_speedup, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_slowdown, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_slip_act, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_m04, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Led_m02, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.WaveformGraph1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_p_1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_sch_n_1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_sch_p_1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_0_1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_n_1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_n_4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_p_2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_0_4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_sch_n_2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_sch_p_4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_sch_p_2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_sch_n_4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_0_2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_p_4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_n_2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_n_3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_p_3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.sch_0_3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_sch_n_3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_sch_p_3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.res_nood_uit, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.res_nood_aan, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nood_stork_uit, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nood_stork_aan, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.st_joi_LN, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nood_mahlo_uit, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.st_joi_LP, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nood_mahlo_aan, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.st_joi_SN, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.st_joi_SP, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nood_hvl_uit, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nood_hvl_aan, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.joi_sn, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.joi_sp, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Vliscomode_uit, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.joi_lp, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Vliscomode_aan, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.joi_ln, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.joi_neitral, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.speed_up, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_speed_dw, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.slip_man_n, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_speed_up, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.slip_man_0, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.speed_0, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_slip_man_p, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.speed_dw, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stur_slip_man_n, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.slip_man_p, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stop_uit, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.stop_aan, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.auto_aan, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.auto_uit, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents sch_p_1 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_sch_n_1 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_sch_p_1 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_0_1 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_n_1 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_n_2 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_0_2 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_sch_p_2 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_sch_n_2 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_p_2 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_n_3 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_0_3 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_sch_p_3 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_sch_n_3 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_p_3 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_n_4 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_0_4 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_sch_p_4 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_sch_n_4 As System.Windows.Forms.PictureBox
    Friend WithEvents sch_p_4 As System.Windows.Forms.PictureBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents st_joi_LN As System.Windows.Forms.PictureBox
    Friend WithEvents st_joi_LP As System.Windows.Forms.PictureBox
    Friend WithEvents st_joi_SN As System.Windows.Forms.PictureBox
    Friend WithEvents st_joi_SP As System.Windows.Forms.PictureBox
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents joi_sn As System.Windows.Forms.PictureBox
    Friend WithEvents joi_sp As System.Windows.Forms.PictureBox
    Friend WithEvents joi_lp As System.Windows.Forms.PictureBox
    Friend WithEvents joi_ln As System.Windows.Forms.PictureBox
    Friend WithEvents joi_neitral As System.Windows.Forms.PictureBox
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents slip_man_n As System.Windows.Forms.PictureBox
    Friend WithEvents slip_man_0 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_slip_man_p As System.Windows.Forms.PictureBox
    Friend WithEvents stur_slip_man_n As System.Windows.Forms.PictureBox
    Friend WithEvents slip_man_p As System.Windows.Forms.PictureBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents auto_aan As System.Windows.Forms.PictureBox
    Friend WithEvents auto_uit As System.Windows.Forms.PictureBox
    Friend WithEvents CB_JoggingMode As System.Windows.Forms.CheckBox
    Friend WithEvents CB_RunEnabled As System.Windows.Forms.CheckBox
    Friend WithEvents CB_screen_in_pos As System.Windows.Forms.CheckBox
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents stop_aan As System.Windows.Forms.PictureBox
    Friend WithEvents stop_uit As System.Windows.Forms.PictureBox
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents speed_dw As System.Windows.Forms.PictureBox
    Friend WithEvents speed_0 As System.Windows.Forms.PictureBox
    Friend WithEvents stur_speed_up As System.Windows.Forms.PictureBox
    Friend WithEvents stur_speed_dw As System.Windows.Forms.PictureBox
    Friend WithEvents speed_up As System.Windows.Forms.PictureBox
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Vliscomode_aan As System.Windows.Forms.PictureBox
    Friend WithEvents Vliscomode_uit As System.Windows.Forms.PictureBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents res_nood_uit As System.Windows.Forms.PictureBox
    Friend WithEvents res_nood_aan As System.Windows.Forms.PictureBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents nood_hvl_aan As System.Windows.Forms.PictureBox
    Friend WithEvents nood_hvl_uit As System.Windows.Forms.PictureBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents nood_mahlo_aan As System.Windows.Forms.PictureBox
    Friend WithEvents nood_mahlo_uit As System.Windows.Forms.PictureBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents nood_stork_aan As System.Windows.Forms.PictureBox
    Friend WithEvents nood_stork_uit As System.Windows.Forms.PictureBox
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents Led_slip_act As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents Label16 As System.Windows.Forms.Label
    Friend WithEvents Led_slowdown As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents Led_stop As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents Led_speedup As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label19 As System.Windows.Forms.Label
    Friend WithEvents Led_m06 As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label20 As System.Windows.Forms.Label
    Friend WithEvents Led_m04 As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label21 As System.Windows.Forms.Label
    Friend WithEvents Led_m02 As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label22 As System.Windows.Forms.Label
    Friend WithEvents Led_nood_stork As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label27 As System.Windows.Forms.Label
    Friend WithEvents Led_SCB_Act As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label28 As System.Windows.Forms.Label
    Friend WithEvents Led_SCB_noAct As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label29 As System.Windows.Forms.Label
    Friend WithEvents Led_SCB_no_pos As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label30 As System.Windows.Forms.Label
    Friend WithEvents Led_m08 As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents WaveformGraph1 As NationalInstruments.UI.WindowsForms.WaveformGraph
    Friend WithEvents Belt As NationalInstruments.UI.WaveformPlot
    Friend WithEvents historyXAxis As NationalInstruments.UI.XAxis
    Friend WithEvents historyYAxis As NationalInstruments.UI.YAxis
    Friend WithEvents Screen02 As NationalInstruments.UI.WaveformPlot
    Friend WithEvents Screen04 As NationalInstruments.UI.WaveformPlot
    Friend WithEvents Screen06 As NationalInstruments.UI.WaveformPlot
    Friend WithEvents Screen08 As NationalInstruments.UI.WaveformPlot
    Friend WithEvents Button1 As System.Windows.Forms.Button

End Class
