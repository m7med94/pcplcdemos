<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Instellingen
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
        Me.Label26 = New System.Windows.Forms.Label
        Me.Label25 = New System.Windows.Forms.Label
        Me.LabelProtocol = New System.Windows.Forms.Label
        Me.Label17 = New System.Windows.Forms.Label
        Me.ButtonNewSettings = New System.Windows.Forms.Button
        Me.TextBoxNewSettings = New System.Windows.Forms.TextBox
        Me.Label18 = New System.Windows.Forms.Label
        Me.ComboBoxSelectSettings = New System.Windows.Forms.ComboBox
        Me.ButtonShowFile = New System.Windows.Forms.Button
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
        Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel
        Me.OK_Button = New System.Windows.Forms.Button
        Me.Cancel_Button = New System.Windows.Forms.Button
        Me.TableLayoutPanel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Label26
        '
        Me.Label26.AutoSize = True
        Me.Label26.Location = New System.Drawing.Point(70, 27)
        Me.Label26.Name = "Label26"
        Me.Label26.Size = New System.Drawing.Size(93, 13)
        Me.Label26.TabIndex = 62
        Me.Label26.Text = "Selected protocol:"
        '
        'Label25
        '
        Me.Label25.AutoSize = True
        Me.Label25.Location = New System.Drawing.Point(35, 203)
        Me.Label25.Name = "Label25"
        Me.Label25.Size = New System.Drawing.Size(92, 13)
        Me.Label25.TabIndex = 61
        Me.Label25.Text = "Baudrate = 38400"
        '
        'LabelProtocol
        '
        Me.LabelProtocol.AutoSize = True
        Me.LabelProtocol.Location = New System.Drawing.Point(159, 27)
        Me.LabelProtocol.Name = "LabelProtocol"
        Me.LabelProtocol.Size = New System.Drawing.Size(45, 13)
        Me.LabelProtocol.TabIndex = 60
        Me.LabelProtocol.Text = "Label25"
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.Location = New System.Drawing.Point(309, 59)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(68, 13)
        Me.Label17.TabIndex = 59
        Me.Label17.Text = "New settings"
        '
        'ButtonNewSettings
        '
        Me.ButtonNewSettings.Location = New System.Drawing.Point(462, 73)
        Me.ButtonNewSettings.Name = "ButtonNewSettings"
        Me.ButtonNewSettings.Size = New System.Drawing.Size(75, 23)
        Me.ButtonNewSettings.TabIndex = 58
        Me.ButtonNewSettings.Text = "Create new"
        Me.ButtonNewSettings.UseVisualStyleBackColor = True
        '
        'TextBoxNewSettings
        '
        Me.TextBoxNewSettings.Location = New System.Drawing.Point(312, 76)
        Me.TextBoxNewSettings.Name = "TextBoxNewSettings"
        Me.TextBoxNewSettings.Size = New System.Drawing.Size(121, 20)
        Me.TextBoxNewSettings.TabIndex = 57
        '
        'Label18
        '
        Me.Label18.AutoSize = True
        Me.Label18.Location = New System.Drawing.Point(309, 109)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(76, 13)
        Me.Label18.TabIndex = 56
        Me.Label18.Text = "Select settings"
        '
        'ComboBoxSelectSettings
        '
        Me.ComboBoxSelectSettings.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBoxSelectSettings.FormattingEnabled = True
        Me.ComboBoxSelectSettings.Location = New System.Drawing.Point(312, 126)
        Me.ComboBoxSelectSettings.Name = "ComboBoxSelectSettings"
        Me.ComboBoxSelectSettings.Size = New System.Drawing.Size(121, 21)
        Me.ComboBoxSelectSettings.TabIndex = 55
        '
        'ButtonShowFile
        '
        Me.ButtonShowFile.Location = New System.Drawing.Point(462, 126)
        Me.ButtonShowFile.Name = "ButtonShowFile"
        Me.ButtonShowFile.Size = New System.Drawing.Size(75, 23)
        Me.ButtonShowFile.TabIndex = 54
        Me.ButtonShowFile.Text = "Show file"
        Me.ButtonShowFile.UseVisualStyleBackColor = True
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.Location = New System.Drawing.Point(88, 110)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(25, 13)
        Me.Label19.TabIndex = 53
        Me.Label19.Text = "Slot"
        '
        'Label20
        '
        Me.Label20.AutoSize = True
        Me.Label20.Location = New System.Drawing.Point(32, 110)
        Me.Label20.Name = "Label20"
        Me.Label20.Size = New System.Drawing.Size(33, 13)
        Me.Label20.TabIndex = 52
        Me.Label20.Text = "Rack"
        '
        'ComboBoxSpeed
        '
        Me.ComboBoxSpeed.BackColor = System.Drawing.SystemColors.Control
        Me.ComboBoxSpeed.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBoxSpeed.FormattingEnabled = True
        Me.ComboBoxSpeed.Items.AddRange(New Object() {"1500k", "500k", "187k", "93k", "45k", "19k", "9k"})
        Me.ComboBoxSpeed.Location = New System.Drawing.Point(161, 75)
        Me.ComboBoxSpeed.Name = "ComboBoxSpeed"
        Me.ComboBoxSpeed.Size = New System.Drawing.Size(121, 21)
        Me.ComboBoxSpeed.TabIndex = 51
        '
        'ComboBoxPort
        '
        Me.ComboBoxPort.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBoxPort.FormattingEnabled = True
        Me.ComboBoxPort.Items.AddRange(New Object() {"COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8", "COM9"})
        Me.ComboBoxPort.Location = New System.Drawing.Point(35, 179)
        Me.ComboBoxPort.Name = "ComboBoxPort"
        Me.ComboBoxPort.Size = New System.Drawing.Size(95, 21)
        Me.ComboBoxPort.TabIndex = 50
        '
        'Label21
        '
        Me.Label21.AutoSize = True
        Me.Label21.Location = New System.Drawing.Point(158, 59)
        Me.Label21.Name = "Label21"
        Me.Label21.Size = New System.Drawing.Size(38, 13)
        Me.Label21.TabIndex = 49
        Me.Label21.Text = "Speed"
        '
        'Label22
        '
        Me.Label22.AutoSize = True
        Me.Label22.Location = New System.Drawing.Point(35, 163)
        Me.Label22.Name = "Label22"
        Me.Label22.Size = New System.Drawing.Size(52, 13)
        Me.Label22.TabIndex = 48
        Me.Label22.Text = "COM port"
        '
        'Label23
        '
        Me.Label23.AutoSize = True
        Me.Label23.Location = New System.Drawing.Point(158, 109)
        Me.Label23.Name = "Label23"
        Me.Label23.Size = New System.Drawing.Size(46, 13)
        Me.Label23.TabIndex = 47
        Me.Label23.Text = "Protocol"
        '
        'ComboBoxProtocol
        '
        Me.ComboBoxProtocol.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBoxProtocol.FormattingEnabled = True
        Me.ComboBoxProtocol.Items.AddRange(New Object() {"MPI", "MPI2", "MPI3", "MPI4", "MPI_IBH", "ISOTCP", "ISOTCP243", "PPI", "PPI_IBH", "AS511", "S7online", "UserTransport"})
        Me.ComboBoxProtocol.Location = New System.Drawing.Point(161, 126)
        Me.ComboBoxProtocol.Name = "ComboBoxProtocol"
        Me.ComboBoxProtocol.Size = New System.Drawing.Size(121, 21)
        Me.ComboBoxProtocol.TabIndex = 46
        '
        'Label24
        '
        Me.Label24.AutoSize = True
        Me.Label24.Location = New System.Drawing.Point(35, 62)
        Me.Label24.Name = "Label24"
        Me.Label24.Size = New System.Drawing.Size(57, 13)
        Me.Label24.TabIndex = 45
        Me.Label24.Text = "IP address"
        '
        'TextBoxIPaddress
        '
        Me.TextBoxIPaddress.Location = New System.Drawing.Point(35, 76)
        Me.TextBoxIPaddress.Name = "TextBoxIPaddress"
        Me.TextBoxIPaddress.Size = New System.Drawing.Size(95, 20)
        Me.TextBoxIPaddress.TabIndex = 44
        Me.TextBoxIPaddress.Text = "192.168.1.100"
        '
        'TableLayoutPanel1
        '
        Me.TableLayoutPanel1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TableLayoutPanel1.ColumnCount = 2
        Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.Controls.Add(Me.OK_Button, 0, 0)
        Me.TableLayoutPanel1.Controls.Add(Me.Cancel_Button, 1, 0)
        Me.TableLayoutPanel1.Location = New System.Drawing.Point(462, 207)
        Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
        Me.TableLayoutPanel1.RowCount = 1
        Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
        Me.TableLayoutPanel1.Size = New System.Drawing.Size(146, 29)
        Me.TableLayoutPanel1.TabIndex = 43
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
        'Instellingen
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(641, 262)
        Me.Controls.Add(Me.Label26)
        Me.Controls.Add(Me.Label25)
        Me.Controls.Add(Me.LabelProtocol)
        Me.Controls.Add(Me.Label17)
        Me.Controls.Add(Me.ButtonNewSettings)
        Me.Controls.Add(Me.TextBoxNewSettings)
        Me.Controls.Add(Me.Label18)
        Me.Controls.Add(Me.ComboBoxSelectSettings)
        Me.Controls.Add(Me.ButtonShowFile)
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
        Me.Name = "Instellingen"
        Me.Text = "Instellingen"
        Me.TableLayoutPanel1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label26 As System.Windows.Forms.Label
    Friend WithEvents Label25 As System.Windows.Forms.Label
    Friend WithEvents LabelProtocol As System.Windows.Forms.Label
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents ButtonNewSettings As System.Windows.Forms.Button
    Friend WithEvents TextBoxNewSettings As System.Windows.Forms.TextBox
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents ComboBoxSelectSettings As System.Windows.Forms.ComboBox
    Friend WithEvents ButtonShowFile As System.Windows.Forms.Button
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
    Friend WithEvents TableLayoutPanel1 As System.Windows.Forms.TableLayoutPanel
    Friend WithEvents OK_Button As System.Windows.Forms.Button
    Friend WithEvents Cancel_Button As System.Windows.Forms.Button
End Class
