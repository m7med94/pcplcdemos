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
        Me.Label14 = New System.Windows.Forms.Label
        Me.Label10 = New System.Windows.Forms.Label
        Me.Label11 = New System.Windows.Forms.Label
        Me.Label9 = New System.Windows.Forms.Label
        Me.Panel1 = New System.Windows.Forms.Panel
        Me.SwitchRunEnabled = New NationalInstruments.UI.WindowsForms.Switch
        Me.Label13 = New System.Windows.Forms.Label
        Me.SwitchScreeenInPos = New NationalInstruments.UI.WindowsForms.Switch
        Me.Label12 = New System.Windows.Forms.Label
        Me.SwitchJoggMode = New NationalInstruments.UI.WindowsForms.Switch
        Me.Label8 = New System.Windows.Forms.Label
        Me.Label7 = New System.Windows.Forms.Label
        Me.SwitchFittingAutoHand = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchVliscoStork = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchSlipManN = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchSlipManP = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchSpeedDown = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchSpeedUP = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchResetNood = New NationalInstruments.UI.WindowsForms.Switch
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.SwitchSN = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchSP = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchLN = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchLP = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchStop = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchNoodHVL = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchNoodMahlo = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchNoodStork = New NationalInstruments.UI.WindowsForms.Switch
        Me.Panel2 = New System.Windows.Forms.Panel
        Me.Label19 = New System.Windows.Forms.Label
        Me.MainLayoutPanel = New System.Windows.Forms.TableLayoutPanel
        Me.DetailsLayoutPanel = New System.Windows.Forms.TableLayoutPanel
        Me.Version = New System.Windows.Forms.Label
        Me.Copyright = New System.Windows.Forms.Label
        Me.ApplicationTitle = New System.Windows.Forms.Label
        Me.SwitchM04N = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchM04P = New NationalInstruments.UI.WindowsForms.Switch
        Me.speedB = New System.Windows.Forms.Label
        Me.SwitchM06N = New NationalInstruments.UI.WindowsForms.Switch
        Me.speed02 = New System.Windows.Forms.Label
        Me.speed04 = New System.Windows.Forms.Label
        Me.SwitchM06P = New NationalInstruments.UI.WindowsForms.Switch
        Me.speed06 = New System.Windows.Forms.Label
        Me.speed08 = New System.Windows.Forms.Label
        Me.SwitchM08N = New NationalInstruments.UI.WindowsForms.Switch
        Me.Label15 = New System.Windows.Forms.Label
        Me.SwitchM08P = New NationalInstruments.UI.WindowsForms.Switch
        Me.SwitchM02N = New NationalInstruments.UI.WindowsForms.Switch
        Me.Label27 = New System.Windows.Forms.Label
        Me.SwitchM02P = New NationalInstruments.UI.WindowsForms.Switch
        Me.Led_SCB_Act = New NationalInstruments.UI.WindowsForms.Led
        Me.Label28 = New System.Windows.Forms.Label
        Me.Led_SCB_noAct = New NationalInstruments.UI.WindowsForms.Led
        Me.Label29 = New System.Windows.Forms.Label
        Me.Led_SCB_no_pos = New NationalInstruments.UI.WindowsForms.Led
        Me.Label22 = New System.Windows.Forms.Label
        Me.Led_nood_stork = New NationalInstruments.UI.WindowsForms.Led
        Me.Led_m06 = New NationalInstruments.UI.WindowsForms.Led
        Me.Label17 = New System.Windows.Forms.Label
        Me.Led_stop = New NationalInstruments.UI.WindowsForms.Led
        Me.Label18 = New System.Windows.Forms.Label
        Me.Led_m08 = New NationalInstruments.UI.WindowsForms.Led
        Me.Led_speedup = New NationalInstruments.UI.WindowsForms.Led
        Me.Label16 = New System.Windows.Forms.Label
        Me.Led_slowdown = New NationalInstruments.UI.WindowsForms.Led
        Me.Led_slip_act = New NationalInstruments.UI.WindowsForms.Led
        Me.Led_m04 = New NationalInstruments.UI.WindowsForms.Led
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
        Me.Joystick = New NationalInstruments.UI.WaveformPlot
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel
        Me.ToolStripStatusLabel2 = New System.Windows.Forms.ToolStripStatusLabel
        Me.ToolStripStatusLabel3 = New System.Windows.Forms.ToolStripStatusLabel
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip
        Me.TSBConnect = New System.Windows.Forms.ToolStripButton
        Me.TSBDisconnect = New System.Windows.Forms.ToolStripButton
        Me.ToolStripSeparator3 = New System.Windows.Forms.ToolStripSeparator
        Me.ToolStripButtonConn = New System.Windows.Forms.ToolStripButton
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator
        Me.ToolStripComboBox1 = New System.Windows.Forms.ToolStripComboBox
        Me.ToolStripSeparator4 = New System.Windows.Forms.ToolStripSeparator
        Me.ToolStripButtonDisplay = New System.Windows.Forms.ToolStripButton
        Me.ToolStripSeparator2 = New System.Windows.Forms.ToolStripSeparator
        Me.ToolStripButtonSimOff = New System.Windows.Forms.ToolStripButton
        Me.ToolStripButtonSimOn = New System.Windows.Forms.ToolStripButton
        Me.ToolStripButtonUpdate = New System.Windows.Forms.ToolStripButton
        Me.Panel3 = New System.Windows.Forms.Panel
        Me.Panel4 = New System.Windows.Forms.Panel
        Me.Panel1.SuspendLayout()
        CType(Me.SwitchRunEnabled, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchScreeenInPos, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchJoggMode, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchFittingAutoHand, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchVliscoStork, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchSlipManN, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchSlipManP, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchSpeedDown, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchSpeedUP, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchResetNood, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchSN, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchSP, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchLN, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchLP, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchStop, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchNoodHVL, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchNoodMahlo, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchNoodStork, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel2.SuspendLayout()
        Me.MainLayoutPanel.SuspendLayout()
        Me.DetailsLayoutPanel.SuspendLayout()
        CType(Me.SwitchM04N, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchM04P, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchM06N, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchM06P, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchM08N, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchM08P, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchM02N, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SwitchM02P, System.ComponentModel.ISupportInitialize).BeginInit()
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
        Me.StatusStrip1.SuspendLayout()
        Me.ToolStrip1.SuspendLayout()
        Me.Panel3.SuspendLayout()
        Me.Panel4.SuspendLayout()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(142, 15)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(28, 13)
        Me.Label1.TabIndex = 21
        Me.Label1.Text = "M08"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(509, 15)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(28, 13)
        Me.Label2.TabIndex = 22
        Me.Label2.Text = "M02"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(387, 15)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(28, 13)
        Me.Label3.TabIndex = 23
        Me.Label3.Text = "M04"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(265, 15)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(28, 13)
        Me.Label4.TabIndex = 24
        Me.Label4.Text = "M06"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Location = New System.Drawing.Point(24, 128)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(78, 13)
        Me.Label14.TabIndex = 155
        Me.Label14.Text = "MANUAL SLIP"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(85, 76)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(61, 13)
        Me.Label10.TabIndex = 149
        Me.Label10.Text = "auto - hand"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(19, 177)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(99, 13)
        Me.Label11.TabIndex = 140
        Me.Label11.Text = "SPEED UP-DOWN"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(9, 76)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(65, 13)
        Me.Label9.TabIndex = 134
        Me.Label9.Text = "Visco - stork"
        '
        'Panel1
        '
        Me.Panel1.AutoScroll = True
        Me.Panel1.Controls.Add(Me.SwitchRunEnabled)
        Me.Panel1.Controls.Add(Me.Label13)
        Me.Panel1.Controls.Add(Me.SwitchScreeenInPos)
        Me.Panel1.Controls.Add(Me.Label12)
        Me.Panel1.Controls.Add(Me.SwitchJoggMode)
        Me.Panel1.Controls.Add(Me.Label8)
        Me.Panel1.Controls.Add(Me.Label7)
        Me.Panel1.Controls.Add(Me.SwitchFittingAutoHand)
        Me.Panel1.Controls.Add(Me.SwitchVliscoStork)
        Me.Panel1.Controls.Add(Me.SwitchSlipManN)
        Me.Panel1.Controls.Add(Me.SwitchSlipManP)
        Me.Panel1.Controls.Add(Me.SwitchSpeedDown)
        Me.Panel1.Controls.Add(Me.SwitchSpeedUP)
        Me.Panel1.Controls.Add(Me.SwitchResetNood)
        Me.Panel1.Controls.Add(Me.Label6)
        Me.Panel1.Controls.Add(Me.Label5)
        Me.Panel1.Controls.Add(Me.SwitchSN)
        Me.Panel1.Controls.Add(Me.SwitchSP)
        Me.Panel1.Controls.Add(Me.SwitchLN)
        Me.Panel1.Controls.Add(Me.SwitchLP)
        Me.Panel1.Controls.Add(Me.SwitchStop)
        Me.Panel1.Controls.Add(Me.SwitchNoodHVL)
        Me.Panel1.Controls.Add(Me.SwitchNoodMahlo)
        Me.Panel1.Controls.Add(Me.SwitchNoodStork)
        Me.Panel1.Controls.Add(Me.Label9)
        Me.Panel1.Controls.Add(Me.Label14)
        Me.Panel1.Controls.Add(Me.Label11)
        Me.Panel1.Controls.Add(Me.Label10)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Right
        Me.Panel1.Location = New System.Drawing.Point(605, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(172, 510)
        Me.Panel1.TabIndex = 166
        '
        'SwitchRunEnabled
        '
        Me.SwitchRunEnabled.Location = New System.Drawing.Point(84, 21)
        Me.SwitchRunEnabled.Name = "SwitchRunEnabled"
        Me.SwitchRunEnabled.Size = New System.Drawing.Size(57, 24)
        Me.SwitchRunEnabled.SwitchStyle = NationalInstruments.UI.SwitchStyle.HorizontalSlide
        Me.SwitchRunEnabled.TabIndex = 217
        Me.SwitchRunEnabled.Value = True
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(81, 9)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(68, 13)
        Me.Label13.TabIndex = 216
        Me.Label13.Text = "Run enabled"
        '
        'SwitchScreeenInPos
        '
        Me.SwitchScreeenInPos.Location = New System.Drawing.Point(12, 55)
        Me.SwitchScreeenInPos.Name = "SwitchScreeenInPos"
        Me.SwitchScreeenInPos.Size = New System.Drawing.Size(57, 24)
        Me.SwitchScreeenInPos.SwitchStyle = NationalInstruments.UI.SwitchStyle.HorizontalSlide
        Me.SwitchScreeenInPos.TabIndex = 215
        Me.SwitchScreeenInPos.Value = True
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(9, 43)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(103, 13)
        Me.Label12.TabIndex = 214
        Me.Label12.Text = "Screens in print pos."
        '
        'SwitchJoggMode
        '
        Me.SwitchJoggMode.Location = New System.Drawing.Point(12, 21)
        Me.SwitchJoggMode.Name = "SwitchJoggMode"
        Me.SwitchJoggMode.Size = New System.Drawing.Size(57, 24)
        Me.SwitchJoggMode.SwitchStyle = NationalInstruments.UI.SwitchStyle.HorizontalSlide
        Me.SwitchJoggMode.TabIndex = 213
        Me.SwitchJoggMode.Value = True
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(9, 9)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(73, 13)
        Me.Label8.TabIndex = 212
        Me.Label8.Text = "Jogging mode"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(96, 64)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(41, 13)
        Me.Label7.TabIndex = 211
        Me.Label7.Text = "Fitting: "
        '
        'SwitchFittingAutoHand
        '
        Me.SwitchFittingAutoHand.Location = New System.Drawing.Point(85, 88)
        Me.SwitchFittingAutoHand.Name = "SwitchFittingAutoHand"
        Me.SwitchFittingAutoHand.Size = New System.Drawing.Size(57, 24)
        Me.SwitchFittingAutoHand.SwitchStyle = NationalInstruments.UI.SwitchStyle.HorizontalSlide
        Me.SwitchFittingAutoHand.TabIndex = 210
        '
        'SwitchVliscoStork
        '
        Me.SwitchVliscoStork.Location = New System.Drawing.Point(12, 88)
        Me.SwitchVliscoStork.Name = "SwitchVliscoStork"
        Me.SwitchVliscoStork.Size = New System.Drawing.Size(57, 24)
        Me.SwitchVliscoStork.SwitchStyle = NationalInstruments.UI.SwitchStyle.HorizontalSlide
        Me.SwitchVliscoStork.TabIndex = 209
        Me.SwitchVliscoStork.Value = True
        '
        'SwitchSlipManN
        '
        Me.SwitchSlipManN.Caption = "|"
        Me.SwitchSlipManN.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchSlipManN.CaptionPosition = NationalInstruments.UI.CaptionPosition.Right
        Me.SwitchSlipManN.Location = New System.Drawing.Point(73, 144)
        Me.SwitchSlipManN.Name = "SwitchSlipManN"
        Me.SwitchSlipManN.OffColor = System.Drawing.Color.Silver
        Me.SwitchSlipManN.OnColor = System.Drawing.Color.Lime
        Me.SwitchSlipManN.Size = New System.Drawing.Size(51, 32)
        Me.SwitchSlipManN.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchSlipManN.TabIndex = 208
        '
        'SwitchSlipManP
        '
        Me.SwitchSlipManP.Caption = "+"
        Me.SwitchSlipManP.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchSlipManP.CaptionPosition = NationalInstruments.UI.CaptionPosition.Left
        Me.SwitchSlipManP.Location = New System.Drawing.Point(12, 144)
        Me.SwitchSlipManP.Name = "SwitchSlipManP"
        Me.SwitchSlipManP.OffColor = System.Drawing.Color.Silver
        Me.SwitchSlipManP.OnColor = System.Drawing.Color.Lime
        Me.SwitchSlipManP.Size = New System.Drawing.Size(51, 32)
        Me.SwitchSlipManP.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchSlipManP.TabIndex = 207
        '
        'SwitchSpeedDown
        '
        Me.SwitchSpeedDown.Caption = "|"
        Me.SwitchSpeedDown.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchSpeedDown.CaptionPosition = NationalInstruments.UI.CaptionPosition.Right
        Me.SwitchSpeedDown.Location = New System.Drawing.Point(73, 193)
        Me.SwitchSpeedDown.Name = "SwitchSpeedDown"
        Me.SwitchSpeedDown.OffColor = System.Drawing.Color.Silver
        Me.SwitchSpeedDown.OnColor = System.Drawing.Color.Lime
        Me.SwitchSpeedDown.Size = New System.Drawing.Size(51, 32)
        Me.SwitchSpeedDown.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchSpeedDown.TabIndex = 206
        '
        'SwitchSpeedUP
        '
        Me.SwitchSpeedUP.Caption = "+"
        Me.SwitchSpeedUP.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchSpeedUP.CaptionPosition = NationalInstruments.UI.CaptionPosition.Left
        Me.SwitchSpeedUP.Location = New System.Drawing.Point(12, 193)
        Me.SwitchSpeedUP.Name = "SwitchSpeedUP"
        Me.SwitchSpeedUP.OffColor = System.Drawing.Color.Silver
        Me.SwitchSpeedUP.OnColor = System.Drawing.Color.Lime
        Me.SwitchSpeedUP.Size = New System.Drawing.Size(51, 32)
        Me.SwitchSpeedUP.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchSpeedUP.TabIndex = 205
        '
        'SwitchResetNood
        '
        Me.SwitchResetNood.Caption = "Reset"
        Me.SwitchResetNood.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchResetNood.Location = New System.Drawing.Point(60, 356)
        Me.SwitchResetNood.Name = "SwitchResetNood"
        Me.SwitchResetNood.OffColor = System.Drawing.Color.FromArgb(CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.SwitchResetNood.OnColor = System.Drawing.Color.Blue
        Me.SwitchResetNood.Size = New System.Drawing.Size(42, 64)
        Me.SwitchResetNood.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchResetNood.TabIndex = 170
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(9, 228)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(115, 13)
        Me.Label6.TabIndex = 176
        Me.Label6.Text = "SLEEP CORRECTION"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(45, 428)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(68, 13)
        Me.Label5.TabIndex = 175
        Me.Label5.Text = "NOODSTOP"
        '
        'SwitchSN
        '
        Me.SwitchSN.Caption = "SN"
        Me.SwitchSN.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchSN.CaptionPosition = NationalInstruments.UI.CaptionPosition.Bottom
        Me.SwitchSN.Location = New System.Drawing.Point(51, 297)
        Me.SwitchSN.Name = "SwitchSN"
        Me.SwitchSN.OffColor = System.Drawing.Color.Silver
        Me.SwitchSN.OnColor = System.Drawing.Color.Lime
        Me.SwitchSN.Size = New System.Drawing.Size(33, 54)
        Me.SwitchSN.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchSN.TabIndex = 172
        '
        'SwitchSP
        '
        Me.SwitchSP.Caption = "SP"
        Me.SwitchSP.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchSP.Location = New System.Drawing.Point(51, 240)
        Me.SwitchSP.Name = "SwitchSP"
        Me.SwitchSP.OffColor = System.Drawing.Color.Silver
        Me.SwitchSP.OnColor = System.Drawing.Color.Lime
        Me.SwitchSP.Size = New System.Drawing.Size(33, 54)
        Me.SwitchSP.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchSP.TabIndex = 171
        '
        'SwitchLN
        '
        Me.SwitchLN.Caption = "LN"
        Me.SwitchLN.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchLN.Location = New System.Drawing.Point(81, 259)
        Me.SwitchLN.Name = "SwitchLN"
        Me.SwitchLN.OffColor = System.Drawing.Color.Silver
        Me.SwitchLN.OnColor = System.Drawing.Color.Lime
        Me.SwitchLN.Size = New System.Drawing.Size(33, 54)
        Me.SwitchLN.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchLN.TabIndex = 174
        '
        'SwitchLP
        '
        Me.SwitchLP.Caption = "LP"
        Me.SwitchLP.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchLP.Location = New System.Drawing.Point(21, 259)
        Me.SwitchLP.Name = "SwitchLP"
        Me.SwitchLP.OffColor = System.Drawing.Color.Silver
        Me.SwitchLP.OnColor = System.Drawing.Color.Lime
        Me.SwitchLP.Size = New System.Drawing.Size(33, 54)
        Me.SwitchLP.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchLP.TabIndex = 173
        '
        'SwitchStop
        '
        Me.SwitchStop.Caption = "Stop"
        Me.SwitchStop.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchStop.Location = New System.Drawing.Point(11, 356)
        Me.SwitchStop.Name = "SwitchStop"
        Me.SwitchStop.OffColor = System.Drawing.Color.Silver
        Me.SwitchStop.OnColor = System.Drawing.Color.Red
        Me.SwitchStop.Size = New System.Drawing.Size(42, 64)
        Me.SwitchStop.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchStop.TabIndex = 169
        '
        'SwitchNoodHVL
        '
        Me.SwitchNoodHVL.Caption = "HVL"
        Me.SwitchNoodHVL.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchNoodHVL.Location = New System.Drawing.Point(109, 439)
        Me.SwitchNoodHVL.Name = "SwitchNoodHVL"
        Me.SwitchNoodHVL.OffColor = System.Drawing.Color.Red
        Me.SwitchNoodHVL.OnColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer))
        Me.SwitchNoodHVL.Size = New System.Drawing.Size(42, 64)
        Me.SwitchNoodHVL.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchNoodHVL.TabIndex = 168
        Me.SwitchNoodHVL.Value = True
        '
        'SwitchNoodMahlo
        '
        Me.SwitchNoodMahlo.Caption = "Mahlo"
        Me.SwitchNoodMahlo.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchNoodMahlo.Location = New System.Drawing.Point(11, 439)
        Me.SwitchNoodMahlo.Name = "SwitchNoodMahlo"
        Me.SwitchNoodMahlo.OffColor = System.Drawing.Color.Red
        Me.SwitchNoodMahlo.OnColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer))
        Me.SwitchNoodMahlo.Size = New System.Drawing.Size(42, 64)
        Me.SwitchNoodMahlo.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchNoodMahlo.TabIndex = 167
        Me.SwitchNoodMahlo.Value = True
        '
        'SwitchNoodStork
        '
        Me.SwitchNoodStork.Caption = "Stork"
        Me.SwitchNoodStork.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchNoodStork.Location = New System.Drawing.Point(60, 439)
        Me.SwitchNoodStork.Name = "SwitchNoodStork"
        Me.SwitchNoodStork.OffColor = System.Drawing.Color.Red
        Me.SwitchNoodStork.OnColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer))
        Me.SwitchNoodStork.Size = New System.Drawing.Size(42, 64)
        Me.SwitchNoodStork.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchNoodStork.TabIndex = 166
        Me.SwitchNoodStork.Value = True
        '
        'Panel2
        '
        Me.Panel2.Controls.Add(Me.Label19)
        Me.Panel2.Controls.Add(Me.MainLayoutPanel)
        Me.Panel2.Controls.Add(Me.SwitchM04N)
        Me.Panel2.Controls.Add(Me.SwitchM04P)
        Me.Panel2.Controls.Add(Me.speedB)
        Me.Panel2.Controls.Add(Me.SwitchM06N)
        Me.Panel2.Controls.Add(Me.speed02)
        Me.Panel2.Controls.Add(Me.speed04)
        Me.Panel2.Controls.Add(Me.SwitchM06P)
        Me.Panel2.Controls.Add(Me.speed06)
        Me.Panel2.Controls.Add(Me.speed08)
        Me.Panel2.Controls.Add(Me.SwitchM08N)
        Me.Panel2.Controls.Add(Me.Label15)
        Me.Panel2.Controls.Add(Me.SwitchM08P)
        Me.Panel2.Controls.Add(Me.SwitchM02N)
        Me.Panel2.Controls.Add(Me.Label1)
        Me.Panel2.Controls.Add(Me.Label27)
        Me.Panel2.Controls.Add(Me.SwitchM02P)
        Me.Panel2.Controls.Add(Me.Led_SCB_Act)
        Me.Panel2.Controls.Add(Me.Label4)
        Me.Panel2.Controls.Add(Me.Label28)
        Me.Panel2.Controls.Add(Me.Led_SCB_noAct)
        Me.Panel2.Controls.Add(Me.Label3)
        Me.Panel2.Controls.Add(Me.Label29)
        Me.Panel2.Controls.Add(Me.Led_SCB_no_pos)
        Me.Panel2.Controls.Add(Me.Label2)
        Me.Panel2.Controls.Add(Me.Label22)
        Me.Panel2.Controls.Add(Me.Led_nood_stork)
        Me.Panel2.Controls.Add(Me.Led_m06)
        Me.Panel2.Controls.Add(Me.Label17)
        Me.Panel2.Controls.Add(Me.Led_stop)
        Me.Panel2.Controls.Add(Me.Label18)
        Me.Panel2.Controls.Add(Me.Led_m08)
        Me.Panel2.Controls.Add(Me.Led_speedup)
        Me.Panel2.Controls.Add(Me.Label16)
        Me.Panel2.Controls.Add(Me.Led_slowdown)
        Me.Panel2.Controls.Add(Me.Led_slip_act)
        Me.Panel2.Controls.Add(Me.Led_m04)
        Me.Panel2.Controls.Add(Me.Led_m02)
        Me.Panel2.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel2.Location = New System.Drawing.Point(0, 0)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(605, 121)
        Me.Panel2.TabIndex = 167
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.Location = New System.Drawing.Point(4, 15)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(34, 13)
        Me.Label19.TabIndex = 212
        Me.Label19.Text = "BELT"
        '
        'MainLayoutPanel
        '
        Me.MainLayoutPanel.BackgroundImage = CType(resources.GetObject("MainLayoutPanel.BackgroundImage"), System.Drawing.Image)
        Me.MainLayoutPanel.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.MainLayoutPanel.CausesValidation = False
        Me.MainLayoutPanel.ColumnCount = 2
        Me.MainLayoutPanel.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 242.0!))
        Me.MainLayoutPanel.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 101.0!))
        Me.MainLayoutPanel.Controls.Add(Me.DetailsLayoutPanel, 1, 1)
        Me.MainLayoutPanel.Controls.Add(Me.ApplicationTitle, 1, 0)
        Me.MainLayoutPanel.Location = New System.Drawing.Point(7, 49)
        Me.MainLayoutPanel.Name = "MainLayoutPanel"
        Me.MainLayoutPanel.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 218.0!))
        Me.MainLayoutPanel.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 38.0!))
        Me.MainLayoutPanel.Size = New System.Drawing.Size(89, 66)
        Me.MainLayoutPanel.TabIndex = 211
        '
        'DetailsLayoutPanel
        '
        Me.DetailsLayoutPanel.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.DetailsLayoutPanel.BackColor = System.Drawing.Color.Transparent
        Me.DetailsLayoutPanel.ColumnCount = 1
        Me.DetailsLayoutPanel.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 247.0!))
        Me.DetailsLayoutPanel.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 142.0!))
        Me.DetailsLayoutPanel.Controls.Add(Me.Version, 0, 0)
        Me.DetailsLayoutPanel.Controls.Add(Me.Copyright, 0, 1)
        Me.DetailsLayoutPanel.Location = New System.Drawing.Point(245, 221)
        Me.DetailsLayoutPanel.Name = "DetailsLayoutPanel"
        Me.DetailsLayoutPanel.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 33.0!))
        Me.DetailsLayoutPanel.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 33.0!))
        Me.DetailsLayoutPanel.Size = New System.Drawing.Size(95, 32)
        Me.DetailsLayoutPanel.TabIndex = 1
        '
        'Version
        '
        Me.Version.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Version.BackColor = System.Drawing.Color.Transparent
        Me.Version.Cursor = System.Windows.Forms.Cursors.SizeAll
        Me.Version.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Version.ForeColor = System.Drawing.Color.Yellow
        Me.Version.Location = New System.Drawing.Point(3, 0)
        Me.Version.Name = "Version"
        Me.Version.Size = New System.Drawing.Size(241, 16)
        Me.Version.TabIndex = 1
        Me.Version.Text = "Version 2.0"
        '
        'Copyright
        '
        Me.Copyright.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Copyright.AutoEllipsis = True
        Me.Copyright.BackColor = System.Drawing.Color.Transparent
        Me.Copyright.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Copyright.ForeColor = System.Drawing.Color.Yellow
        Me.Copyright.Location = New System.Drawing.Point(3, 16)
        Me.Copyright.Name = "Copyright"
        Me.Copyright.Size = New System.Drawing.Size(241, 16)
        Me.Copyright.TabIndex = 2
        Me.Copyright.Text = "Copyright Vlisco"
        '
        'ApplicationTitle
        '
        Me.ApplicationTitle.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.ApplicationTitle.BackColor = System.Drawing.Color.Transparent
        Me.ApplicationTitle.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ApplicationTitle.ForeColor = System.Drawing.Color.Yellow
        Me.ApplicationTitle.Location = New System.Drawing.Point(245, 6)
        Me.ApplicationTitle.Name = "ApplicationTitle"
        Me.ApplicationTitle.Size = New System.Drawing.Size(95, 205)
        Me.ApplicationTitle.TabIndex = 0
        Me.ApplicationTitle.Text = "Vlisco"
        Me.ApplicationTitle.TextAlign = System.Drawing.ContentAlignment.BottomLeft
        '
        'SwitchM04N
        '
        Me.SwitchM04N.Caption = "|"
        Me.SwitchM04N.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchM04N.CaptionPosition = NationalInstruments.UI.CaptionPosition.Right
        Me.SwitchM04N.Location = New System.Drawing.Point(400, 31)
        Me.SwitchM04N.Name = "SwitchM04N"
        Me.SwitchM04N.OffColor = System.Drawing.Color.Silver
        Me.SwitchM04N.OnColor = System.Drawing.Color.Lime
        Me.SwitchM04N.Size = New System.Drawing.Size(51, 32)
        Me.SwitchM04N.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchM04N.TabIndex = 210
        '
        'SwitchM04P
        '
        Me.SwitchM04P.Caption = "+"
        Me.SwitchM04P.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchM04P.CaptionPosition = NationalInstruments.UI.CaptionPosition.Left
        Me.SwitchM04P.Location = New System.Drawing.Point(339, 31)
        Me.SwitchM04P.Name = "SwitchM04P"
        Me.SwitchM04P.OffColor = System.Drawing.Color.Silver
        Me.SwitchM04P.OnColor = System.Drawing.Color.Lime
        Me.SwitchM04P.Size = New System.Drawing.Size(51, 32)
        Me.SwitchM04P.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchM04P.TabIndex = 209
        '
        'speedB
        '
        Me.speedB.AutoSize = True
        Me.speedB.Location = New System.Drawing.Point(40, 15)
        Me.speedB.Name = "speedB"
        Me.speedB.Size = New System.Drawing.Size(10, 13)
        Me.speedB.TabIndex = 199
        Me.speedB.Text = "-"
        '
        'SwitchM06N
        '
        Me.SwitchM06N.Caption = "|"
        Me.SwitchM06N.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchM06N.CaptionPosition = NationalInstruments.UI.CaptionPosition.Right
        Me.SwitchM06N.Location = New System.Drawing.Point(278, 31)
        Me.SwitchM06N.Name = "SwitchM06N"
        Me.SwitchM06N.OffColor = System.Drawing.Color.Silver
        Me.SwitchM06N.OnColor = System.Drawing.Color.Lime
        Me.SwitchM06N.Size = New System.Drawing.Size(51, 32)
        Me.SwitchM06N.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchM06N.TabIndex = 208
        '
        'speed02
        '
        Me.speed02.AutoSize = True
        Me.speed02.Location = New System.Drawing.Point(542, 15)
        Me.speed02.Name = "speed02"
        Me.speed02.Size = New System.Drawing.Size(10, 13)
        Me.speed02.TabIndex = 198
        Me.speed02.Text = "-"
        '
        'speed04
        '
        Me.speed04.AutoSize = True
        Me.speed04.Location = New System.Drawing.Point(420, 15)
        Me.speed04.Name = "speed04"
        Me.speed04.Size = New System.Drawing.Size(10, 13)
        Me.speed04.TabIndex = 197
        Me.speed04.Text = "-"
        '
        'SwitchM06P
        '
        Me.SwitchM06P.Caption = "+"
        Me.SwitchM06P.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchM06P.CaptionPosition = NationalInstruments.UI.CaptionPosition.Left
        Me.SwitchM06P.Location = New System.Drawing.Point(217, 31)
        Me.SwitchM06P.Name = "SwitchM06P"
        Me.SwitchM06P.OffColor = System.Drawing.Color.Silver
        Me.SwitchM06P.OnColor = System.Drawing.Color.Lime
        Me.SwitchM06P.Size = New System.Drawing.Size(51, 32)
        Me.SwitchM06P.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchM06P.TabIndex = 207
        '
        'speed06
        '
        Me.speed06.AutoSize = True
        Me.speed06.Location = New System.Drawing.Point(298, 15)
        Me.speed06.Name = "speed06"
        Me.speed06.Size = New System.Drawing.Size(10, 13)
        Me.speed06.TabIndex = 196
        Me.speed06.Text = "-"
        '
        'speed08
        '
        Me.speed08.AutoSize = True
        Me.speed08.Location = New System.Drawing.Point(176, 15)
        Me.speed08.Name = "speed08"
        Me.speed08.Size = New System.Drawing.Size(10, 13)
        Me.speed08.TabIndex = 195
        Me.speed08.Text = "-"
        '
        'SwitchM08N
        '
        Me.SwitchM08N.Caption = "|"
        Me.SwitchM08N.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchM08N.CaptionPosition = NationalInstruments.UI.CaptionPosition.Right
        Me.SwitchM08N.Location = New System.Drawing.Point(156, 31)
        Me.SwitchM08N.Name = "SwitchM08N"
        Me.SwitchM08N.OffColor = System.Drawing.Color.Silver
        Me.SwitchM08N.OnColor = System.Drawing.Color.Lime
        Me.SwitchM08N.Size = New System.Drawing.Size(51, 32)
        Me.SwitchM08N.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchM08N.TabIndex = 206
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(142, 73)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(73, 13)
        Me.Label15.TabIndex = 171
        Me.Label15.Text = "Em.stop Stork"
        '
        'SwitchM08P
        '
        Me.SwitchM08P.Caption = "+"
        Me.SwitchM08P.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchM08P.CaptionPosition = NationalInstruments.UI.CaptionPosition.Left
        Me.SwitchM08P.Location = New System.Drawing.Point(95, 31)
        Me.SwitchM08P.Name = "SwitchM08P"
        Me.SwitchM08P.OffColor = System.Drawing.Color.Silver
        Me.SwitchM08P.OnColor = System.Drawing.Color.Lime
        Me.SwitchM08P.Size = New System.Drawing.Size(51, 32)
        Me.SwitchM08P.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchM08P.TabIndex = 205
        '
        'SwitchM02N
        '
        Me.SwitchM02N.Caption = "|"
        Me.SwitchM02N.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchM02N.CaptionPosition = NationalInstruments.UI.CaptionPosition.Right
        Me.SwitchM02N.Location = New System.Drawing.Point(522, 31)
        Me.SwitchM02N.Name = "SwitchM02N"
        Me.SwitchM02N.OffColor = System.Drawing.Color.Silver
        Me.SwitchM02N.OnColor = System.Drawing.Color.Lime
        Me.SwitchM02N.Size = New System.Drawing.Size(51, 32)
        Me.SwitchM02N.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchM02N.TabIndex = 204
        '
        'Label27
        '
        Me.Label27.AutoSize = True
        Me.Label27.Location = New System.Drawing.Point(509, 97)
        Me.Label27.Name = "Label27"
        Me.Label27.Size = New System.Drawing.Size(60, 13)
        Me.Label27.TabIndex = 193
        Me.Label27.Text = "SCB active"
        '
        'SwitchM02P
        '
        Me.SwitchM02P.Caption = "+"
        Me.SwitchM02P.CaptionBackColor = System.Drawing.SystemColors.Control
        Me.SwitchM02P.CaptionPosition = NationalInstruments.UI.CaptionPosition.Left
        Me.SwitchM02P.Location = New System.Drawing.Point(461, 31)
        Me.SwitchM02P.Name = "SwitchM02P"
        Me.SwitchM02P.OffColor = System.Drawing.Color.Silver
        Me.SwitchM02P.OnColor = System.Drawing.Color.Lime
        Me.SwitchM02P.Size = New System.Drawing.Size(51, 32)
        Me.SwitchM02P.SwitchStyle = NationalInstruments.UI.SwitchStyle.PushButton
        Me.SwitchM02P.TabIndex = 203
        '
        'Led_SCB_Act
        '
        Me.Led_SCB_Act.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_SCB_Act.Location = New System.Drawing.Point(482, 89)
        Me.Led_SCB_Act.Name = "Led_SCB_Act"
        Me.Led_SCB_Act.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_SCB_Act.Size = New System.Drawing.Size(30, 30)
        Me.Led_SCB_Act.TabIndex = 192
        '
        'Label28
        '
        Me.Label28.AutoSize = True
        Me.Label28.Location = New System.Drawing.Point(509, 72)
        Me.Label28.Name = "Label28"
        Me.Label28.Size = New System.Drawing.Size(78, 13)
        Me.Label28.TabIndex = 191
        Me.Label28.Text = "SCB not active"
        '
        'Led_SCB_noAct
        '
        Me.Led_SCB_noAct.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_SCB_noAct.Location = New System.Drawing.Point(482, 64)
        Me.Led_SCB_noAct.Name = "Led_SCB_noAct"
        Me.Led_SCB_noAct.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_SCB_noAct.Size = New System.Drawing.Size(30, 30)
        Me.Led_SCB_noAct.TabIndex = 190
        '
        'Label29
        '
        Me.Label29.AutoSize = True
        Me.Label29.Location = New System.Drawing.Point(387, 97)
        Me.Label29.Name = "Label29"
        Me.Label29.Size = New System.Drawing.Size(89, 13)
        Me.Label29.TabIndex = 189
        Me.Label29.Text = "SCB no ac. poss."
        '
        'Led_SCB_no_pos
        '
        Me.Led_SCB_no_pos.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_SCB_no_pos.Location = New System.Drawing.Point(360, 89)
        Me.Led_SCB_no_pos.Name = "Led_SCB_no_pos"
        Me.Led_SCB_no_pos.OffColor = System.Drawing.Color.DarkRed
        Me.Led_SCB_no_pos.OnColor = System.Drawing.Color.Red
        Me.Led_SCB_no_pos.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_SCB_no_pos.Size = New System.Drawing.Size(30, 30)
        Me.Led_SCB_no_pos.TabIndex = 188
        '
        'Label22
        '
        Me.Label22.AutoSize = True
        Me.Label22.Location = New System.Drawing.Point(387, 72)
        Me.Label22.Name = "Label22"
        Me.Label22.Size = New System.Drawing.Size(80, 13)
        Me.Label22.TabIndex = 179
        Me.Label22.Text = "Slip corr. active"
        '
        'Led_nood_stork
        '
        Me.Led_nood_stork.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_nood_stork.Location = New System.Drawing.Point(116, 64)
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
        Me.Led_m06.Location = New System.Drawing.Point(238, 8)
        Me.Led_m06.Name = "Led_m06"
        Me.Led_m06.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_m06.Size = New System.Drawing.Size(30, 30)
        Me.Led_m06.TabIndex = 184
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.Location = New System.Drawing.Point(142, 97)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(29, 13)
        Me.Label17.TabIndex = 177
        Me.Label17.Text = "Stop"
        '
        'Led_stop
        '
        Me.Led_stop.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_stop.Location = New System.Drawing.Point(116, 89)
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
        Me.Label18.Location = New System.Drawing.Point(265, 97)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(55, 13)
        Me.Label18.TabIndex = 175
        Me.Label18.Text = "Speed Up"
        '
        'Led_m08
        '
        Me.Led_m08.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_m08.Location = New System.Drawing.Point(116, 8)
        Me.Led_m08.Name = "Led_m08"
        Me.Led_m08.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_m08.Size = New System.Drawing.Size(30, 30)
        Me.Led_m08.TabIndex = 186
        '
        'Led_speedup
        '
        Me.Led_speedup.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_speedup.Location = New System.Drawing.Point(238, 89)
        Me.Led_speedup.Name = "Led_speedup"
        Me.Led_speedup.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_speedup.Size = New System.Drawing.Size(30, 30)
        Me.Led_speedup.TabIndex = 174
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.Location = New System.Drawing.Point(265, 72)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(59, 13)
        Me.Label16.TabIndex = 173
        Me.Label16.Text = "Slow down"
        '
        'Led_slowdown
        '
        Me.Led_slowdown.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_slowdown.Location = New System.Drawing.Point(238, 64)
        Me.Led_slowdown.Name = "Led_slowdown"
        Me.Led_slowdown.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_slowdown.Size = New System.Drawing.Size(30, 30)
        Me.Led_slowdown.TabIndex = 172
        '
        'Led_slip_act
        '
        Me.Led_slip_act.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_slip_act.Location = New System.Drawing.Point(360, 64)
        Me.Led_slip_act.Name = "Led_slip_act"
        Me.Led_slip_act.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_slip_act.Size = New System.Drawing.Size(30, 30)
        Me.Led_slip_act.TabIndex = 170
        '
        'Led_m04
        '
        Me.Led_m04.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_m04.Location = New System.Drawing.Point(360, 8)
        Me.Led_m04.Name = "Led_m04"
        Me.Led_m04.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_m04.Size = New System.Drawing.Size(30, 30)
        Me.Led_m04.TabIndex = 182
        '
        'Led_m02
        '
        Me.Led_m02.LedStyle = NationalInstruments.UI.LedStyle.Round3D
        Me.Led_m02.Location = New System.Drawing.Point(482, 8)
        Me.Led_m02.Name = "Led_m02"
        Me.Led_m02.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.Led_m02.Size = New System.Drawing.Size(30, 30)
        Me.Led_m02.TabIndex = 180
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 250
        '
        'WaveformGraph1
        '
        Me.WaveformGraph1.Border = NationalInstruments.UI.Border.ThickFrame3D
        Me.WaveformGraph1.Caption = "Control signals to Lenze (SP Belt-white, M02-Green, M04=red, M06-Blue, M08- Yello" & _
            "w) Joystick - paars"
        Me.WaveformGraph1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.WaveformGraph1.Location = New System.Drawing.Point(0, 121)
        Me.WaveformGraph1.Name = "WaveformGraph1"
        Me.WaveformGraph1.Plots.AddRange(New NationalInstruments.UI.WaveformPlot() {Me.Belt, Me.Screen02, Me.Screen04, Me.Screen06, Me.Screen08, Me.Joystick})
        Me.WaveformGraph1.Size = New System.Drawing.Size(605, 389)
        Me.WaveformGraph1.TabIndex = 170
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
        Me.historyXAxis.Range = New NationalInstruments.UI.Range(0, 500)
        '
        'historyYAxis
        '
        Me.historyYAxis.AutoMinorDivisionFrequency = 4
        Me.historyYAxis.Caption = "Speed"
        Me.historyYAxis.MajorDivisions.GridVisible = True
        Me.historyYAxis.MinorDivisions.GridVisible = True
        Me.historyYAxis.MinorDivisions.TickVisible = True
        Me.historyYAxis.Mode = NationalInstruments.UI.AxisMode.Fixed
        Me.historyYAxis.Range = New NationalInstruments.UI.Range(0, 50)
        '
        'Screen02
        '
        Me.Screen02.ToolTipsEnabled = True
        Me.Screen02.XAxis = Me.historyXAxis
        Me.Screen02.YAxis = Me.historyYAxis
        '
        'Screen04
        '
        Me.Screen04.LineColor = System.Drawing.Color.Red
        Me.Screen04.XAxis = Me.historyXAxis
        Me.Screen04.YAxis = Me.historyYAxis
        '
        'Screen06
        '
        Me.Screen06.LineColor = System.Drawing.Color.DeepSkyBlue
        Me.Screen06.XAxis = Me.historyXAxis
        Me.Screen06.YAxis = Me.historyYAxis
        '
        'Screen08
        '
        Me.Screen08.LineColor = System.Drawing.Color.Yellow
        Me.Screen08.XAxis = Me.historyXAxis
        Me.Screen08.YAxis = Me.historyYAxis
        '
        'Joystick
        '
        Me.Joystick.LineColor = System.Drawing.Color.Fuchsia
        Me.Joystick.XAxis = Me.historyXAxis
        Me.Joystick.YAxis = Me.historyYAxis
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripStatusLabel1, Me.ToolStripStatusLabel2, Me.ToolStripStatusLabel3})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 535)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(777, 22)
        Me.StatusStrip1.TabIndex = 173
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(121, 17)
        Me.ToolStripStatusLabel1.Text = "ToolStripStatusLabel1"
        '
        'ToolStripStatusLabel2
        '
        Me.ToolStripStatusLabel2.Name = "ToolStripStatusLabel2"
        Me.ToolStripStatusLabel2.Size = New System.Drawing.Size(121, 17)
        Me.ToolStripStatusLabel2.Text = "ToolStripStatusLabel2"
        '
        'ToolStripStatusLabel3
        '
        Me.ToolStripStatusLabel3.Name = "ToolStripStatusLabel3"
        Me.ToolStripStatusLabel3.Size = New System.Drawing.Size(121, 17)
        Me.ToolStripStatusLabel3.Text = "ToolStripStatusLabel3"
        '
        'ToolStrip1
        '
        Me.ToolStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.TSBConnect, Me.TSBDisconnect, Me.ToolStripSeparator3, Me.ToolStripButtonConn, Me.ToolStripSeparator1, Me.ToolStripComboBox1, Me.ToolStripSeparator4, Me.ToolStripButtonDisplay, Me.ToolStripSeparator2, Me.ToolStripButtonSimOff, Me.ToolStripButtonSimOn, Me.ToolStripButtonUpdate})
        Me.ToolStrip1.Location = New System.Drawing.Point(0, 0)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.Size = New System.Drawing.Size(777, 25)
        Me.ToolStrip1.TabIndex = 175
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'TSBConnect
        '
        Me.TSBConnect.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.TSBConnect.Image = Global.RSPUniwaxCombi.My.Resources.Resources.Image2
        Me.TSBConnect.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.TSBConnect.Name = "TSBConnect"
        Me.TSBConnect.Size = New System.Drawing.Size(23, 22)
        Me.TSBConnect.Text = "Connect PLC"
        '
        'TSBDisconnect
        '
        Me.TSBDisconnect.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.TSBDisconnect.Image = Global.RSPUniwaxCombi.My.Resources.Resources.Image1
        Me.TSBDisconnect.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.TSBDisconnect.Name = "TSBDisconnect"
        Me.TSBDisconnect.Size = New System.Drawing.Size(23, 22)
        Me.TSBDisconnect.Text = "Disconnect PLC"
        '
        'ToolStripSeparator3
        '
        Me.ToolStripSeparator3.Name = "ToolStripSeparator3"
        Me.ToolStripSeparator3.Size = New System.Drawing.Size(6, 25)
        '
        'ToolStripButtonConn
        '
        Me.ToolStripButtonConn.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.ToolStripButtonConn.Image = Global.RSPUniwaxCombi.My.Resources.Resources.Settings
        Me.ToolStripButtonConn.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButtonConn.Name = "ToolStripButtonConn"
        Me.ToolStripButtonConn.Size = New System.Drawing.Size(23, 22)
        Me.ToolStripButtonConn.Text = "Connection settings"
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(6, 25)
        '
        'ToolStripComboBox1
        '
        Me.ToolStripComboBox1.AccessibleRole = System.Windows.Forms.AccessibleRole.None
        Me.ToolStripComboBox1.AutoSize = False
        Me.ToolStripComboBox1.BackColor = System.Drawing.SystemColors.Control
        Me.ToolStripComboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ToolStripComboBox1.Items.AddRange(New Object() {"PLCSIM", "PlcS7"})
        Me.ToolStripComboBox1.Name = "ToolStripComboBox1"
        Me.ToolStripComboBox1.Size = New System.Drawing.Size(100, 23)
        Me.ToolStripComboBox1.Tag = ""
        Me.ToolStripComboBox1.ToolTipText = "Change Drive Mode"
        '
        'ToolStripSeparator4
        '
        Me.ToolStripSeparator4.Name = "ToolStripSeparator4"
        Me.ToolStripSeparator4.Size = New System.Drawing.Size(6, 25)
        '
        'ToolStripButtonDisplay
        '
        Me.ToolStripButtonDisplay.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.ToolStripButtonDisplay.Image = Global.RSPUniwaxCombi.My.Resources.Resources.display
        Me.ToolStripButtonDisplay.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButtonDisplay.Name = "ToolStripButtonDisplay"
        Me.ToolStripButtonDisplay.Size = New System.Drawing.Size(23, 22)
        Me.ToolStripButtonDisplay.ToolTipText = "Display"
        '
        'ToolStripSeparator2
        '
        Me.ToolStripSeparator2.Name = "ToolStripSeparator2"
        Me.ToolStripSeparator2.Size = New System.Drawing.Size(6, 25)
        '
        'ToolStripButtonSimOff
        '
        Me.ToolStripButtonSimOff.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.ToolStripButtonSimOff.Image = Global.RSPUniwaxCombi.My.Resources.Resources.SimON
        Me.ToolStripButtonSimOff.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButtonSimOff.Name = "ToolStripButtonSimOff"
        Me.ToolStripButtonSimOff.Size = New System.Drawing.Size(23, 22)
        Me.ToolStripButtonSimOff.Text = "Simulation On-Off"
        Me.ToolStripButtonSimOff.ToolTipText = "Simulation set Off"
        '
        'ToolStripButtonSimOn
        '
        Me.ToolStripButtonSimOn.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.ToolStripButtonSimOn.Image = Global.RSPUniwaxCombi.My.Resources.Resources.SimOff
        Me.ToolStripButtonSimOn.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButtonSimOn.Name = "ToolStripButtonSimOn"
        Me.ToolStripButtonSimOn.Size = New System.Drawing.Size(23, 22)
        Me.ToolStripButtonSimOn.Text = "Simulation set ON"
        '
        'ToolStripButtonUpdate
        '
        Me.ToolStripButtonUpdate.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.ToolStripButtonUpdate.Image = Global.RSPUniwaxCombi.My.Resources.Resources.Update
        Me.ToolStripButtonUpdate.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.ToolStripButtonUpdate.Name = "ToolStripButtonUpdate"
        Me.ToolStripButtonUpdate.Size = New System.Drawing.Size(23, 22)
        Me.ToolStripButtonUpdate.Text = "Update Inputs"
        '
        'Panel3
        '
        Me.Panel3.Controls.Add(Me.Panel4)
        Me.Panel3.Controls.Add(Me.Panel1)
        Me.Panel3.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Panel3.Location = New System.Drawing.Point(0, 25)
        Me.Panel3.Name = "Panel3"
        Me.Panel3.Size = New System.Drawing.Size(777, 510)
        Me.Panel3.TabIndex = 176
        '
        'Panel4
        '
        Me.Panel4.Controls.Add(Me.WaveformGraph1)
        Me.Panel4.Controls.Add(Me.Panel2)
        Me.Panel4.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Panel4.Location = New System.Drawing.Point(0, 0)
        Me.Panel4.Name = "Panel4"
        Me.Panel4.Size = New System.Drawing.Size(605, 510)
        Me.Panel4.TabIndex = 167
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.Control
        Me.ClientSize = New System.Drawing.Size(777, 557)
        Me.Controls.Add(Me.Panel3)
        Me.Controls.Add(Me.ToolStrip1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form1"
        Me.Text = "RSP Uniwax (PLCSIM and S7PLC) version 2.0"
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        CType(Me.SwitchRunEnabled, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchScreeenInPos, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchJoggMode, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchFittingAutoHand, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchVliscoStork, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchSlipManN, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchSlipManP, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchSpeedDown, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchSpeedUP, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchResetNood, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchSN, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchSP, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchLN, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchLP, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchStop, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchNoodHVL, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchNoodMahlo, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchNoodStork, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        Me.MainLayoutPanel.ResumeLayout(False)
        Me.DetailsLayoutPanel.ResumeLayout(False)
        CType(Me.SwitchM04N, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchM04P, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchM06N, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchM06P, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchM08N, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchM08P, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchM02N, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SwitchM02P, System.ComponentModel.ISupportInitialize).EndInit()
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
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.ToolStrip1.ResumeLayout(False)
        Me.ToolStrip1.PerformLayout()
        Me.Panel3.ResumeLayout(False)
        Me.Panel4.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
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
    Friend WithEvents Led_m06 As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Led_m04 As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Led_m02 As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label22 As System.Windows.Forms.Label
    Friend WithEvents Led_nood_stork As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label27 As System.Windows.Forms.Label
    Friend WithEvents Led_SCB_Act As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label28 As System.Windows.Forms.Label
    Friend WithEvents Led_SCB_noAct As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Label29 As System.Windows.Forms.Label
    Friend WithEvents Led_SCB_no_pos As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents Led_m08 As NationalInstruments.UI.WindowsForms.Led
    Friend WithEvents speedB As System.Windows.Forms.Label
    Friend WithEvents speed02 As System.Windows.Forms.Label
    Friend WithEvents speed04 As System.Windows.Forms.Label
    Friend WithEvents speed06 As System.Windows.Forms.Label
    Friend WithEvents speed08 As System.Windows.Forms.Label
    Friend WithEvents WaveformGraph1 As NationalInstruments.UI.WindowsForms.WaveformGraph
    Friend WithEvents Belt As NationalInstruments.UI.WaveformPlot
    Friend WithEvents historyXAxis As NationalInstruments.UI.XAxis
    Friend WithEvents historyYAxis As NationalInstruments.UI.YAxis
    Friend WithEvents Screen02 As NationalInstruments.UI.WaveformPlot
    Friend WithEvents Screen04 As NationalInstruments.UI.WaveformPlot
    Friend WithEvents Screen06 As NationalInstruments.UI.WaveformPlot
    Friend WithEvents Screen08 As NationalInstruments.UI.WaveformPlot
    Friend WithEvents Joystick As NationalInstruments.UI.WaveformPlot
    Friend WithEvents SwitchNoodStork As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchNoodHVL As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchNoodMahlo As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchStop As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchResetNood As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchSN As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchSP As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchLN As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchLP As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents SwitchM04N As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchM04P As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchM06N As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchM06P As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchM08N As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchM08P As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchM02N As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchM02P As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchSpeedDown As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchSpeedUP As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchSlipManN As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchSlipManP As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchFittingAutoHand As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents SwitchVliscoStork As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents SwitchRunEnabled As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents SwitchScreeenInPos As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents SwitchJoggMode As NationalInstruments.UI.WindowsForms.Switch
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents ToolStrip1 As System.Windows.Forms.ToolStrip
    Friend WithEvents Panel3 As System.Windows.Forms.Panel
    Friend WithEvents Panel4 As System.Windows.Forms.Panel
    Friend WithEvents TSBConnect As System.Windows.Forms.ToolStripButton
    Friend WithEvents TSBDisconnect As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents ToolStripComboBox1 As System.Windows.Forms.ToolStripComboBox
    Friend WithEvents ToolStripSeparator2 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents ToolStripButtonSimOff As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripButtonUpdate As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripButtonDisplay As System.Windows.Forms.ToolStripButton
    Friend WithEvents ToolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents MainLayoutPanel As System.Windows.Forms.TableLayoutPanel
    Friend WithEvents DetailsLayoutPanel As System.Windows.Forms.TableLayoutPanel
    Friend WithEvents Version As System.Windows.Forms.Label
    Friend WithEvents Copyright As System.Windows.Forms.Label
    Friend WithEvents ApplicationTitle As System.Windows.Forms.Label
    Friend WithEvents ToolStripStatusLabel2 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripStatusLabel3 As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents ToolStripButtonSimOn As System.Windows.Forms.ToolStripButton
    Friend WithEvents Label19 As System.Windows.Forms.Label
    Friend WithEvents ToolStripSeparator4 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents ToolStripSeparator3 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents ToolStripButtonConn As System.Windows.Forms.ToolStripButton

End Class
