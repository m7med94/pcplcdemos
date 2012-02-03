<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ConnectionSettings
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
        Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel
        Me.OK_Button = New System.Windows.Forms.Button
        Me.Cancel_Button = New System.Windows.Forms.Button
        Me.Label14 = New System.Windows.Forms.Label
        Me.ButtonNew = New System.Windows.Forms.Button
        Me.TextBoxNew = New System.Windows.Forms.TextBox
        Me.Label13 = New System.Windows.Forms.Label
        Me.CBSelectSettings = New System.Windows.Forms.ComboBox
        Me.Button1 = New System.Windows.Forms.Button
        Me.NESlot = New NationalInstruments.UI.WindowsForms.NumericEdit
        Me.NERack = New NationalInstruments.UI.WindowsForms.NumericEdit
        Me.Label12 = New System.Windows.Forms.Label
        Me.Label11 = New System.Windows.Forms.Label
        Me.CBSpeed = New System.Windows.Forms.ComboBox
        Me.CBPort = New System.Windows.Forms.ComboBox
        Me.Label10 = New System.Windows.Forms.Label
        Me.Label9 = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.CBProtocol = New System.Windows.Forms.ComboBox
        Me.Label7 = New System.Windows.Forms.Label
        Me.TextBoxIP = New System.Windows.Forms.TextBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.Button2 = New System.Windows.Forms.Button
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.ComboBox1 = New System.Windows.Forms.ComboBox
        Me.Button3 = New System.Windows.Forms.Button
        Me.NumericEdit1 = New NationalInstruments.UI.WindowsForms.NumericEdit
        Me.NumericEdit2 = New NationalInstruments.UI.WindowsForms.NumericEdit
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.ComboBox2 = New System.Windows.Forms.ComboBox
        Me.ComboBox3 = New System.Windows.Forms.ComboBox
        Me.Label5 = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label15 = New System.Windows.Forms.Label
        Me.ComboBox4 = New System.Windows.Forms.ComboBox
        Me.Label16 = New System.Windows.Forms.Label
        Me.TextBox2 = New System.Windows.Forms.TextBox
        Me.Label17 = New System.Windows.Forms.Label
        Me.ButtonNewSettings = New System.Windows.Forms.Button
        Me.TextBoxNewSettings = New System.Windows.Forms.TextBox
        Me.Label18 = New System.Windows.Forms.Label
        Me.ComboBoxSelectSettings = New System.Windows.Forms.ComboBox
        Me.ButtonShowFile = New System.Windows.Forms.Button
        Me.NumericEditSlot = New NationalInstruments.UI.WindowsForms.NumericEdit
        Me.NumericEditRack = New NationalInstruments.UI.WindowsForms.NumericEdit
        Me.Label19 = New System.Windows.Forms.Label
        Me.Label20 = New System.Windows.Forms.Label
        Me.ComboBoxSpeed = New System.Windows.Forms.ComboBox
        Me.ComboBoxPort = New System.Windows.Forms.ComboBox
        Me.Label21 = New System.Windows.Forms.Label
        Me.Label22 = New System.Windows.Forms.Label
        Me.Label23 = New System.Windows.Forms.Label
        Me.ComboBoxProtocol = New System.Windows.Forms.ComboBox
        Me.Label24 = New System.Windows.Forms.Label
        Me.TextBoxIPaddress = New System.Windows.Forms.TextBox
        Me.LabelProtocol = New System.Windows.Forms.Label
        Me.Label25 = New System.Windows.Forms.Label
        Me.Label26 = New System.Windows.Forms.Label
        Me.TableLayoutPanel1.SuspendLayout()
        CType(Me.NESlot, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.NERack, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.NumericEdit1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.NumericEdit2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.NumericEditSlot, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.NumericEditRack, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TableLayoutPanel1
        '
        Me.TableLayoutPanel1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TableLayoutPanel1.ColumnCount = 2
        Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.Controls.Add(Me.OK_Button, 0, 0)
        Me.TableLayoutPanel1.Controls.Add(Me.Cancel_Button, 1, 0)
        Me.TableLayoutPanel1.Location = New System.Drawing.Point(449, 189)
        Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
        Me.TableLayoutPanel1.RowCount = 1
        Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.Size = New System.Drawing.Size(146, 29)
        Me.TableLayoutPanel1.TabIndex = 0
        '
        'OK_Button
        '
        Me.OK_Button.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.OK_Button.Location = New System.Drawing.Point(3, 3)
        Me.OK_Button.Name = "OK_Button"
        Me.OK_Button.Size = New System.Drawing.Size(67, 23)
        Me.OK_Button.TabIndex = 0
        Me.OK_Button.Text = "OK"
        '
        'Cancel_Button
        '
        Me.Cancel_Button.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.Cancel_Button.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Cancel_Button.Location = New System.Drawing.Point(76, 3)
        Me.Cancel_Button.Name = "Cancel_Button"
        Me.Cancel_Button.Size = New System.Drawing.Size(67, 23)
        Me.Cancel_Button.TabIndex = 1
        Me.Cancel_Button.Text = "Cancel"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Location = New System.Drawing.Point(346, 68)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(100, 13)
        Me.Label14.TabIndex = 21
        Me.Label14.Text = "Create new settings"
        '
        'ButtonNew
        '
        Me.ButtonNew.Location = New System.Drawing.Point(349, 114)
        Me.ButtonNew.Name = "ButtonNew"
        Me.ButtonNew.Size = New System.Drawing.Size(75, 23)
        Me.ButtonNew.TabIndex = 20
        Me.ButtonNew.Text = "New"
        Me.ButtonNew.UseVisualStyleBackColor = True
        '
        'TextBoxNew
        '
        Me.TextBoxNew.Location = New System.Drawing.Point(347, 84)
        Me.TextBoxNew.Name = "TextBoxNew"
        Me.TextBoxNew.Size = New System.Drawing.Size(100, 20)
        Me.TextBoxNew.TabIndex = 19
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(19, 124)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(76, 13)
        Me.Label13.TabIndex = 18
        Me.Label13.Text = "Select settings"
        '
        'CBSelectSettings
        '
        Me.CBSelectSettings.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CBSelectSettings.FormattingEnabled = True
        Me.CBSelectSettings.Location = New System.Drawing.Point(22, 141)
        Me.CBSelectSettings.Name = "CBSelectSettings"
        Me.CBSelectSettings.Size = New System.Drawing.Size(121, 21)
        Me.CBSelectSettings.TabIndex = 17
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(347, 36)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 16
        Me.Button1.Text = "Show file"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'NESlot
        '
        Me.NESlot.FormatMode = NationalInstruments.UI.NumericFormatMode.CreateSimpleDoubleMode(0)
        Me.NESlot.Location = New System.Drawing.Point(78, 86)
        Me.NESlot.Name = "NESlot"
        Me.NESlot.Size = New System.Drawing.Size(39, 20)
        Me.NESlot.TabIndex = 15
        Me.NESlot.Value = 2
        '
        'NERack
        '
        Me.NERack.FormatMode = NationalInstruments.UI.NumericFormatMode.CreateSimpleDoubleMode(0)
        Me.NERack.Location = New System.Drawing.Point(22, 86)
        Me.NERack.Name = "NERack"
        Me.NERack.Size = New System.Drawing.Size(38, 20)
        Me.NERack.TabIndex = 14
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(75, 70)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(25, 13)
        Me.Label12.TabIndex = 13
        Me.Label12.Text = "Slot"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(19, 70)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(33, 13)
        Me.Label11.TabIndex = 11
        Me.Label11.Text = "Rack"
        '
        'CBSpeed
        '
        Me.CBSpeed.BackColor = System.Drawing.SystemColors.Control
        Me.CBSpeed.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CBSpeed.FormattingEnabled = True
        Me.CBSpeed.Items.AddRange(New Object() {"1500k", "500k", "187k", "93k", "45k", "19k", "9k"})
        Me.CBSpeed.Location = New System.Drawing.Point(175, 83)
        Me.CBSpeed.Name = "CBSpeed"
        Me.CBSpeed.Size = New System.Drawing.Size(95, 21)
        Me.CBSpeed.TabIndex = 9
        '
        'CBPort
        '
        Me.CBPort.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CBPort.FormattingEnabled = True
        Me.CBPort.Items.AddRange(New Object() {"COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8", "COM9"})
        Me.CBPort.Location = New System.Drawing.Point(175, 37)
        Me.CBPort.Name = "CBPort"
        Me.CBPort.Size = New System.Drawing.Size(95, 21)
        Me.CBPort.TabIndex = 8
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(175, 67)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(38, 13)
        Me.Label10.TabIndex = 7
        Me.Label10.Text = "Speed"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(175, 21)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(52, 13)
        Me.Label9.TabIndex = 5
        Me.Label9.Text = "COM port"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(172, 124)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(46, 13)
        Me.Label8.TabIndex = 3
        Me.Label8.Text = "Protocol"
        '
        'CBProtocol
        '
        Me.CBProtocol.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CBProtocol.FormattingEnabled = True
        Me.CBProtocol.Items.AddRange(New Object() {"MPI", "MPI_IBH", "ISOTCP", "ISOTCP243", "PPI", "PPI_IBH", "S7online", "UserTransport"})
        Me.CBProtocol.Location = New System.Drawing.Point(175, 141)
        Me.CBProtocol.Name = "CBProtocol"
        Me.CBProtocol.Size = New System.Drawing.Size(121, 21)
        Me.CBProtocol.TabIndex = 2
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(22, 22)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(57, 13)
        Me.Label7.TabIndex = 1
        Me.Label7.Text = "IP address"
        '
        'TextBoxIP
        '
        Me.TextBoxIP.Location = New System.Drawing.Point(22, 38)
        Me.TextBoxIP.Name = "TextBoxIP"
        Me.TextBoxIP.Size = New System.Drawing.Size(95, 20)
        Me.TextBoxIP.TabIndex = 0
        Me.TextBoxIP.Text = "192.168.1.100"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(346, 68)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(100, 13)
        Me.Label1.TabIndex = 21
        Me.Label1.Text = "Create new settings"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(349, 114)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 20
        Me.Button2.Text = "New"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(347, 84)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(100, 20)
        Me.TextBox1.TabIndex = 19
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(19, 124)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(76, 13)
        Me.Label2.TabIndex = 18
        Me.Label2.Text = "Select settings"
        '
        'ComboBox1
        '
        Me.ComboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(22, 141)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(121, 21)
        Me.ComboBox1.TabIndex = 17
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(347, 36)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 23)
        Me.Button3.TabIndex = 16
        Me.Button3.Text = "Show file"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'NumericEdit1
        '
        Me.NumericEdit1.FormatMode = NationalInstruments.UI.NumericFormatMode.CreateSimpleDoubleMode(0)
        Me.NumericEdit1.Location = New System.Drawing.Point(78, 86)
        Me.NumericEdit1.Name = "NumericEdit1"
        Me.NumericEdit1.Size = New System.Drawing.Size(39, 20)
        Me.NumericEdit1.TabIndex = 15
        Me.NumericEdit1.Value = 2
        '
        'NumericEdit2
        '
        Me.NumericEdit2.FormatMode = NationalInstruments.UI.NumericFormatMode.CreateSimpleDoubleMode(0)
        Me.NumericEdit2.Location = New System.Drawing.Point(22, 86)
        Me.NumericEdit2.Name = "NumericEdit2"
        Me.NumericEdit2.Size = New System.Drawing.Size(38, 20)
        Me.NumericEdit2.TabIndex = 14
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(75, 70)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(25, 13)
        Me.Label3.TabIndex = 13
        Me.Label3.Text = "Slot"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(19, 70)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(33, 13)
        Me.Label4.TabIndex = 11
        Me.Label4.Text = "Rack"
        '
        'ComboBox2
        '
        Me.ComboBox2.BackColor = System.Drawing.SystemColors.Control
        Me.ComboBox2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBox2.FormattingEnabled = True
        Me.ComboBox2.Items.AddRange(New Object() {"1500k", "500k", "187k", "93k", "45k", "19k", "9k"})
        Me.ComboBox2.Location = New System.Drawing.Point(175, 83)
        Me.ComboBox2.Name = "ComboBox2"
        Me.ComboBox2.Size = New System.Drawing.Size(95, 21)
        Me.ComboBox2.TabIndex = 9
        '
        'ComboBox3
        '
        Me.ComboBox3.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBox3.FormattingEnabled = True
        Me.ComboBox3.Items.AddRange(New Object() {"COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8", "COM9"})
        Me.ComboBox3.Location = New System.Drawing.Point(175, 37)
        Me.ComboBox3.Name = "ComboBox3"
        Me.ComboBox3.Size = New System.Drawing.Size(95, 21)
        Me.ComboBox3.TabIndex = 8
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(175, 67)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(38, 13)
        Me.Label5.TabIndex = 7
        Me.Label5.Text = "Speed"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(175, 21)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(52, 13)
        Me.Label6.TabIndex = 5
        Me.Label6.Text = "COM port"
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(172, 124)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(46, 13)
        Me.Label15.TabIndex = 3
        Me.Label15.Text = "Protocol"
        '
        'ComboBox4
        '
        Me.ComboBox4.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBox4.FormattingEnabled = True
        Me.ComboBox4.Items.AddRange(New Object() {"MPI", "MPI_IBH", "ISOTCP", "ISOTCP243", "PPI", "PPI_IBH", "S7online", "UserTransport"})
        Me.ComboBox4.Location = New System.Drawing.Point(175, 141)
        Me.ComboBox4.Name = "ComboBox4"
        Me.ComboBox4.Size = New System.Drawing.Size(121, 21)
        Me.ComboBox4.TabIndex = 2
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.Location = New System.Drawing.Point(22, 22)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(57, 13)
        Me.Label16.TabIndex = 1
        Me.Label16.Text = "IP address"
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(22, 38)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(95, 20)
        Me.TextBox2.TabIndex = 0
        Me.TextBox2.Text = "192.168.1.100"
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.Location = New System.Drawing.Point(296, 41)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(68, 13)
        Me.Label17.TabIndex = 39
        Me.Label17.Text = "New settings"
        '
        'ButtonNewSettings
        '
        Me.ButtonNewSettings.Location = New System.Drawing.Point(449, 55)
        Me.ButtonNewSettings.Name = "ButtonNewSettings"
        Me.ButtonNewSettings.Size = New System.Drawing.Size(75, 23)
        Me.ButtonNewSettings.TabIndex = 38
        Me.ButtonNewSettings.Text = "Create new"
        Me.ButtonNewSettings.UseVisualStyleBackColor = True
        '
        'TextBoxNewSettings
        '
        Me.TextBoxNewSettings.Location = New System.Drawing.Point(299, 58)
        Me.TextBoxNewSettings.Name = "TextBoxNewSettings"
        Me.TextBoxNewSettings.Size = New System.Drawing.Size(121, 20)
        Me.TextBoxNewSettings.TabIndex = 37
        '
        'Label18
        '
        Me.Label18.AutoSize = True
        Me.Label18.Location = New System.Drawing.Point(296, 91)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(76, 13)
        Me.Label18.TabIndex = 36
        Me.Label18.Text = "Select settings"
        '
        'ComboBoxSelectSettings
        '
        Me.ComboBoxSelectSettings.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBoxSelectSettings.FormattingEnabled = True
        Me.ComboBoxSelectSettings.Location = New System.Drawing.Point(299, 108)
        Me.ComboBoxSelectSettings.Name = "ComboBoxSelectSettings"
        Me.ComboBoxSelectSettings.Size = New System.Drawing.Size(121, 21)
        Me.ComboBoxSelectSettings.TabIndex = 35
        '
        'ButtonShowFile
        '
        Me.ButtonShowFile.Location = New System.Drawing.Point(449, 108)
        Me.ButtonShowFile.Name = "ButtonShowFile"
        Me.ButtonShowFile.Size = New System.Drawing.Size(75, 23)
        Me.ButtonShowFile.TabIndex = 34
        Me.ButtonShowFile.Text = "Show file"
        Me.ButtonShowFile.UseVisualStyleBackColor = True
        '
        'NumericEditSlot
        '
        Me.NumericEditSlot.FormatMode = NationalInstruments.UI.NumericFormatMode.CreateSimpleDoubleMode(0)
        Me.NumericEditSlot.Location = New System.Drawing.Point(78, 108)
        Me.NumericEditSlot.Name = "NumericEditSlot"
        Me.NumericEditSlot.Size = New System.Drawing.Size(39, 20)
        Me.NumericEditSlot.TabIndex = 33
        Me.NumericEditSlot.Value = 2
        '
        'NumericEditRack
        '
        Me.NumericEditRack.FormatMode = NationalInstruments.UI.NumericFormatMode.CreateSimpleDoubleMode(0)
        Me.NumericEditRack.Location = New System.Drawing.Point(22, 108)
        Me.NumericEditRack.Name = "NumericEditRack"
        Me.NumericEditRack.Size = New System.Drawing.Size(38, 20)
        Me.NumericEditRack.TabIndex = 32
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.Location = New System.Drawing.Point(75, 92)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(25, 13)
        Me.Label19.TabIndex = 31
        Me.Label19.Text = "Slot"
        '
        'Label20
        '
        Me.Label20.AutoSize = True
        Me.Label20.Location = New System.Drawing.Point(19, 92)
        Me.Label20.Name = "Label20"
        Me.Label20.Size = New System.Drawing.Size(33, 13)
        Me.Label20.TabIndex = 30
        Me.Label20.Text = "Rack"
        '
        'ComboBoxSpeed
        '
        Me.ComboBoxSpeed.BackColor = System.Drawing.SystemColors.Control
        Me.ComboBoxSpeed.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBoxSpeed.FormattingEnabled = True
        Me.ComboBoxSpeed.Items.AddRange(New Object() {"1500k", "500k", "187k", "93k", "45k", "19k", "9k"})
        Me.ComboBoxSpeed.Location = New System.Drawing.Point(148, 57)
        Me.ComboBoxSpeed.Name = "ComboBoxSpeed"
        Me.ComboBoxSpeed.Size = New System.Drawing.Size(121, 21)
        Me.ComboBoxSpeed.TabIndex = 29
        '
        'ComboBoxPort
        '
        Me.ComboBoxPort.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBoxPort.FormattingEnabled = True
        Me.ComboBoxPort.Items.AddRange(New Object() {"COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8", "COM9"})
        Me.ComboBoxPort.Location = New System.Drawing.Point(22, 161)
        Me.ComboBoxPort.Name = "ComboBoxPort"
        Me.ComboBoxPort.Size = New System.Drawing.Size(95, 21)
        Me.ComboBoxPort.TabIndex = 28
        '
        'Label21
        '
        Me.Label21.AutoSize = True
        Me.Label21.Location = New System.Drawing.Point(145, 41)
        Me.Label21.Name = "Label21"
        Me.Label21.Size = New System.Drawing.Size(38, 13)
        Me.Label21.TabIndex = 27
        Me.Label21.Text = "Speed"
        '
        'Label22
        '
        Me.Label22.AutoSize = True
        Me.Label22.Location = New System.Drawing.Point(22, 145)
        Me.Label22.Name = "Label22"
        Me.Label22.Size = New System.Drawing.Size(52, 13)
        Me.Label22.TabIndex = 26
        Me.Label22.Text = "COM port"
        '
        'Label23
        '
        Me.Label23.AutoSize = True
        Me.Label23.Location = New System.Drawing.Point(145, 91)
        Me.Label23.Name = "Label23"
        Me.Label23.Size = New System.Drawing.Size(46, 13)
        Me.Label23.TabIndex = 25
        Me.Label23.Text = "Protocol"
        '
        'ComboBoxProtocol
        '
        Me.ComboBoxProtocol.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBoxProtocol.FormattingEnabled = True
        Me.ComboBoxProtocol.Items.AddRange(New Object() {"MPI", "MPI2", "MPI3", "MPI4", "MPI_IBH", "ISOTCP", "ISOTCP243", "PPI", "PPI_IBH", "AS511", "S7online", "UserTransport"})
        Me.ComboBoxProtocol.Location = New System.Drawing.Point(148, 108)
        Me.ComboBoxProtocol.Name = "ComboBoxProtocol"
        Me.ComboBoxProtocol.Size = New System.Drawing.Size(121, 21)
        Me.ComboBoxProtocol.TabIndex = 24
        '
        'Label24
        '
        Me.Label24.AutoSize = True
        Me.Label24.Location = New System.Drawing.Point(22, 44)
        Me.Label24.Name = "Label24"
        Me.Label24.Size = New System.Drawing.Size(57, 13)
        Me.Label24.TabIndex = 23
        Me.Label24.Text = "IP address"
        '
        'TextBoxIPaddress
        '
        Me.TextBoxIPaddress.Location = New System.Drawing.Point(22, 58)
        Me.TextBoxIPaddress.Name = "TextBoxIPaddress"
        Me.TextBoxIPaddress.Size = New System.Drawing.Size(95, 20)
        Me.TextBoxIPaddress.TabIndex = 22
        Me.TextBoxIPaddress.Text = "192.168.1.100"
        '
        'LabelProtocol
        '
        Me.LabelProtocol.AutoSize = True
        Me.LabelProtocol.Location = New System.Drawing.Point(146, 9)
        Me.LabelProtocol.Name = "LabelProtocol"
        Me.LabelProtocol.Size = New System.Drawing.Size(45, 13)
        Me.LabelProtocol.TabIndex = 40
        Me.LabelProtocol.Text = "Label25"
        '
        'Label25
        '
        Me.Label25.AutoSize = True
        Me.Label25.Location = New System.Drawing.Point(22, 185)
        Me.Label25.Name = "Label25"
        Me.Label25.Size = New System.Drawing.Size(92, 13)
        Me.Label25.TabIndex = 41
        Me.Label25.Text = "Baudrate = 38400"
        '
        'Label26
        '
        Me.Label26.AutoSize = True
        Me.Label26.Location = New System.Drawing.Point(57, 9)
        Me.Label26.Name = "Label26"
        Me.Label26.Size = New System.Drawing.Size(93, 13)
        Me.Label26.TabIndex = 42
        Me.Label26.Text = "Selected protocol:"
        '
        'ConnectionSettings
        '
        Me.AcceptButton = Me.OK_Button
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.CancelButton = Me.Cancel_Button
        Me.ClientSize = New System.Drawing.Size(607, 230)
        Me.Controls.Add(Me.Label26)
        Me.Controls.Add(Me.Label25)
        Me.Controls.Add(Me.LabelProtocol)
        Me.Controls.Add(Me.Label17)
        Me.Controls.Add(Me.ButtonNewSettings)
        Me.Controls.Add(Me.TextBoxNewSettings)
        Me.Controls.Add(Me.Label18)
        Me.Controls.Add(Me.ComboBoxSelectSettings)
        Me.Controls.Add(Me.ButtonShowFile)
        Me.Controls.Add(Me.NumericEditSlot)
        Me.Controls.Add(Me.NumericEditRack)
        Me.Controls.Add(Me.Label19)
        Me.Controls.Add(Me.Label20)
        Me.Controls.Add(Me.ComboBoxSpeed)
        Me.Controls.Add(Me.ComboBoxPort)
        Me.Controls.Add(Me.Label21)
        Me.Controls.Add(Me.Label22)
        Me.Controls.Add(Me.Label23)
        Me.Controls.Add(Me.ComboBoxProtocol)
        Me.Controls.Add(Me.Label24)
        Me.Controls.Add(Me.TextBoxIPaddress)
        Me.Controls.Add(Me.TableLayoutPanel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "ConnectionSettings"
        Me.ShowInTaskbar = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "ConnectionSettings"
        Me.TableLayoutPanel1.ResumeLayout(False)
        CType(Me.NESlot, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.NERack, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.NumericEdit1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.NumericEdit2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.NumericEditSlot, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.NumericEditRack, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TableLayoutPanel1 As System.Windows.Forms.TableLayoutPanel
    Friend WithEvents OK_Button As System.Windows.Forms.Button
    Friend WithEvents Cancel_Button As System.Windows.Forms.Button
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents ButtonNew As System.Windows.Forms.Button
    Friend WithEvents TextBoxNew As System.Windows.Forms.TextBox
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents CBSelectSettings As System.Windows.Forms.ComboBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents NESlot As NationalInstruments.UI.WindowsForms.NumericEdit
    Friend WithEvents NERack As NationalInstruments.UI.WindowsForms.NumericEdit
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents CBSpeed As System.Windows.Forms.ComboBox
    Friend WithEvents CBPort As System.Windows.Forms.ComboBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents CBProtocol As System.Windows.Forms.ComboBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents TextBoxIP As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents NumericEdit1 As NationalInstruments.UI.WindowsForms.NumericEdit
    Friend WithEvents NumericEdit2 As NationalInstruments.UI.WindowsForms.NumericEdit
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents ComboBox2 As System.Windows.Forms.ComboBox
    Friend WithEvents ComboBox3 As System.Windows.Forms.ComboBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents ComboBox4 As System.Windows.Forms.ComboBox
    Friend WithEvents Label16 As System.Windows.Forms.Label
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents ButtonNewSettings As System.Windows.Forms.Button
    Friend WithEvents TextBoxNewSettings As System.Windows.Forms.TextBox
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents ComboBoxSelectSettings As System.Windows.Forms.ComboBox
    Friend WithEvents ButtonShowFile As System.Windows.Forms.Button
    Friend WithEvents NumericEditSlot As NationalInstruments.UI.WindowsForms.NumericEdit
    Friend WithEvents NumericEditRack As NationalInstruments.UI.WindowsForms.NumericEdit
    Friend WithEvents Label19 As System.Windows.Forms.Label
    Friend WithEvents Label20 As System.Windows.Forms.Label
    Friend WithEvents ComboBoxSpeed As System.Windows.Forms.ComboBox
    Friend WithEvents ComboBoxPort As System.Windows.Forms.ComboBox
    Friend WithEvents Label21 As System.Windows.Forms.Label
    Friend WithEvents Label22 As System.Windows.Forms.Label
    Friend WithEvents Label23 As System.Windows.Forms.Label
    Friend WithEvents ComboBoxProtocol As System.Windows.Forms.ComboBox
    Friend WithEvents Label24 As System.Windows.Forms.Label
    Friend WithEvents TextBoxIPaddress As System.Windows.Forms.TextBox
    Friend WithEvents LabelProtocol As System.Windows.Forms.Label
    Friend WithEvents Label25 As System.Windows.Forms.Label
    Friend WithEvents Label26 As System.Windows.Forms.Label

End Class
