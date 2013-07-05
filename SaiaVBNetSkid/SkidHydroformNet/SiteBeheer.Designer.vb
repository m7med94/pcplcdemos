<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class SiteBeheer
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
        Me.Label1 = New System.Windows.Forms.Label
        Me.LWItems = New System.Windows.Forms.ListView
        Me.TCInstellingen = New System.Windows.Forms.TabControl
        Me.TabPage1 = New System.Windows.Forms.TabPage
        Me.TB_Account = New System.Windows.Forms.TextBox
        Me.TB_Wachtwoord = New System.Windows.Forms.TextBox
        Me.TB_User = New System.Windows.Forms.TextBox
        Me.CB_Inlogtype = New System.Windows.Forms.ComboBox
        Me.CB_Severtype = New System.Windows.Forms.ComboBox
        Me.LB_Commentaar = New System.Windows.Forms.ListBox
        Me.Label9 = New System.Windows.Forms.Label
        Me.TB_Poort = New System.Windows.Forms.TextBox
        Me.TB_Host = New System.Windows.Forms.TextBox
        Me.Label8 = New System.Windows.Forms.Label
        Me.Label7 = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.TabPage2 = New System.Windows.Forms.TabPage
        Me.TextBox3 = New System.Windows.Forms.TextBox
        Me.Label19 = New System.Windows.Forms.Label
        Me.BT_Bladeren = New System.Windows.Forms.Button
        Me.TextBox2 = New System.Windows.Forms.TextBox
        Me.Label18 = New System.Windows.Forms.Label
        Me.CB_Proxy = New System.Windows.Forms.CheckBox
        Me.ComboBox1 = New System.Windows.Forms.ComboBox
        Me.Label17 = New System.Windows.Forms.Label
        Me.TabPage3 = New System.Windows.Forms.TabPage
        Me.TB_Aantal = New System.Windows.Forms.TextBox
        Me.Label11 = New System.Windows.Forms.Label
        Me.CheckBox1 = New System.Windows.Forms.CheckBox
        Me.RB_Passief = New System.Windows.Forms.RadioButton
        Me.RB_Actief = New System.Windows.Forms.RadioButton
        Me.RB_Standaard = New System.Windows.Forms.RadioButton
        Me.Label10 = New System.Windows.Forms.Label
        Me.TabPage4 = New System.Windows.Forms.TabPage
        Me.Label16 = New System.Windows.Forms.Label
        Me.Label15 = New System.Windows.Forms.Label
        Me.Label14 = New System.Windows.Forms.Label
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.RB_Willekeurige = New System.Windows.Forms.RadioButton
        Me.RB_UTF = New System.Windows.Forms.RadioButton
        Me.RB_Auto = New System.Windows.Forms.RadioButton
        Me.Label13 = New System.Windows.Forms.Label
        Me.Label12 = New System.Windows.Forms.Label
        Me.BtnVerbinden = New System.Windows.Forms.Button
        Me.BtnOk = New System.Windows.Forms.Button
        Me.BtnAnnuleren = New System.Windows.Forms.Button
        Me.TCInstellingen.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        Me.TabPage3.SuspendLayout()
        Me.TabPage4.SuspendLayout()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(2, 4)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(82, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Item selecteren:"
        '
        'LWItems
        '
        Me.LWItems.Location = New System.Drawing.Point(5, 20)
        Me.LWItems.Name = "LWItems"
        Me.LWItems.Size = New System.Drawing.Size(193, 226)
        Me.LWItems.TabIndex = 1
        Me.LWItems.UseCompatibleStateImageBehavior = False
        '
        'TCInstellingen
        '
        Me.TCInstellingen.Controls.Add(Me.TabPage1)
        Me.TCInstellingen.Controls.Add(Me.TabPage2)
        Me.TCInstellingen.Controls.Add(Me.TabPage3)
        Me.TCInstellingen.Controls.Add(Me.TabPage4)
        Me.TCInstellingen.Location = New System.Drawing.Point(204, 12)
        Me.TCInstellingen.Name = "TCInstellingen"
        Me.TCInstellingen.SelectedIndex = 0
        Me.TCInstellingen.Size = New System.Drawing.Size(370, 360)
        Me.TCInstellingen.TabIndex = 2
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.TB_Account)
        Me.TabPage1.Controls.Add(Me.TB_Wachtwoord)
        Me.TabPage1.Controls.Add(Me.TB_User)
        Me.TabPage1.Controls.Add(Me.CB_Inlogtype)
        Me.TabPage1.Controls.Add(Me.CB_Severtype)
        Me.TabPage1.Controls.Add(Me.LB_Commentaar)
        Me.TabPage1.Controls.Add(Me.Label9)
        Me.TabPage1.Controls.Add(Me.TB_Poort)
        Me.TabPage1.Controls.Add(Me.TB_Host)
        Me.TabPage1.Controls.Add(Me.Label8)
        Me.TabPage1.Controls.Add(Me.Label7)
        Me.TabPage1.Controls.Add(Me.Label6)
        Me.TabPage1.Controls.Add(Me.Label5)
        Me.TabPage1.Controls.Add(Me.Label4)
        Me.TabPage1.Controls.Add(Me.Label3)
        Me.TabPage1.Controls.Add(Me.Label2)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(362, 334)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Algemeen"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'TB_Account
        '
        Me.TB_Account.Location = New System.Drawing.Point(88, 161)
        Me.TB_Account.Name = "TB_Account"
        Me.TB_Account.ReadOnly = True
        Me.TB_Account.Size = New System.Drawing.Size(267, 20)
        Me.TB_Account.TabIndex = 15
        '
        'TB_Wachtwoord
        '
        Me.TB_Wachtwoord.Location = New System.Drawing.Point(88, 134)
        Me.TB_Wachtwoord.Name = "TB_Wachtwoord"
        Me.TB_Wachtwoord.Size = New System.Drawing.Size(267, 20)
        Me.TB_Wachtwoord.TabIndex = 14
        '
        'TB_User
        '
        Me.TB_User.Location = New System.Drawing.Point(89, 107)
        Me.TB_User.Name = "TB_User"
        Me.TB_User.Size = New System.Drawing.Size(266, 20)
        Me.TB_User.TabIndex = 13
        '
        'CB_Inlogtype
        '
        Me.CB_Inlogtype.FormattingEnabled = True
        Me.CB_Inlogtype.Items.AddRange(New Object() {"Anoniem", "Normaal", "Vraag naar een wachtwoord", "Interactief", "Account"})
        Me.CB_Inlogtype.Location = New System.Drawing.Point(88, 78)
        Me.CB_Inlogtype.Name = "CB_Inlogtype"
        Me.CB_Inlogtype.Size = New System.Drawing.Size(267, 21)
        Me.CB_Inlogtype.TabIndex = 12
        Me.CB_Inlogtype.Text = "Normaal"
        '
        'CB_Severtype
        '
        Me.CB_Severtype.FormattingEnabled = True
        Me.CB_Severtype.Items.AddRange(New Object() {"FTP - File Transfer Protocol", "SFTP - SSH File Transfer Protocol", "FTPS - FTP over impliciet TSL/SSL", "FTPES - FTP over expliciet TSL/SSL"})
        Me.CB_Severtype.Location = New System.Drawing.Point(89, 45)
        Me.CB_Severtype.Name = "CB_Severtype"
        Me.CB_Severtype.Size = New System.Drawing.Size(267, 21)
        Me.CB_Severtype.TabIndex = 11
        Me.CB_Severtype.Text = "FTP - File Transfer Protocol"
        '
        'LB_Commentaar
        '
        Me.LB_Commentaar.FormattingEnabled = True
        Me.LB_Commentaar.Location = New System.Drawing.Point(10, 207)
        Me.LB_Commentaar.Name = "LB_Commentaar"
        Me.LB_Commentaar.Size = New System.Drawing.Size(346, 121)
        Me.LB_Commentaar.TabIndex = 10
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(258, 20)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(35, 13)
        Me.Label9.TabIndex = 9
        Me.Label9.Text = "Poort:"
        '
        'TB_Poort
        '
        Me.TB_Poort.Location = New System.Drawing.Point(303, 17)
        Me.TB_Poort.Name = "TB_Poort"
        Me.TB_Poort.Size = New System.Drawing.Size(53, 20)
        Me.TB_Poort.TabIndex = 8
        '
        'TB_Host
        '
        Me.TB_Host.Location = New System.Drawing.Point(89, 17)
        Me.TB_Host.Name = "TB_Host"
        Me.TB_Host.Size = New System.Drawing.Size(150, 20)
        Me.TB_Host.TabIndex = 7
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(7, 191)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(69, 13)
        Me.Label8.TabIndex = 6
        Me.Label8.Text = "Commentaar:"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(7, 161)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(50, 13)
        Me.Label7.TabIndex = 5
        Me.Label7.Text = "Account:"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(7, 134)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(65, 13)
        Me.Label6.TabIndex = 4
        Me.Label6.Text = "Wactwoord:"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(7, 110)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(56, 13)
        Me.Label5.TabIndex = 3
        Me.Label5.Text = "Gebruiker:"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(7, 81)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(53, 13)
        Me.Label4.TabIndex = 2
        Me.Label4.Text = "Inlogtype:"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(7, 48)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(61, 13)
        Me.Label3.TabIndex = 1
        Me.Label3.Text = "Servertype:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(7, 20)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(32, 13)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "Host:"
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.TextBox3)
        Me.TabPage2.Controls.Add(Me.Label19)
        Me.TabPage2.Controls.Add(Me.BT_Bladeren)
        Me.TabPage2.Controls.Add(Me.TextBox2)
        Me.TabPage2.Controls.Add(Me.Label18)
        Me.TabPage2.Controls.Add(Me.CB_Proxy)
        Me.TabPage2.Controls.Add(Me.ComboBox1)
        Me.TabPage2.Controls.Add(Me.Label17)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(362, 334)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Geavanceerd"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'TextBox3
        '
        Me.TextBox3.Location = New System.Drawing.Point(24, 162)
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(320, 20)
        Me.TextBox3.TabIndex = 7
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.Location = New System.Drawing.Point(21, 146)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(114, 13)
        Me.Label19.TabIndex = 6
        Me.Label19.Text = "Standard externe map:"
        '
        'BT_Bladeren
        '
        Me.BT_Bladeren.Location = New System.Drawing.Point(269, 102)
        Me.BT_Bladeren.Name = "BT_Bladeren"
        Me.BT_Bladeren.Size = New System.Drawing.Size(75, 23)
        Me.BT_Bladeren.TabIndex = 5
        Me.BT_Bladeren.Text = "Bladeren..."
        Me.BT_Bladeren.UseVisualStyleBackColor = True
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(24, 104)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(239, 20)
        Me.TextBox2.TabIndex = 4
        '
        'Label18
        '
        Me.Label18.AutoSize = True
        Me.Label18.Location = New System.Drawing.Point(21, 88)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(107, 13)
        Me.Label18.TabIndex = 3
        Me.Label18.Text = "Standard lokale map:"
        '
        'CB_Proxy
        '
        Me.CB_Proxy.AutoSize = True
        Me.CB_Proxy.Location = New System.Drawing.Point(21, 53)
        Me.CB_Proxy.Name = "CB_Proxy"
        Me.CB_Proxy.Size = New System.Drawing.Size(122, 17)
        Me.CB_Proxy.TabIndex = 2
        Me.CB_Proxy.Text = "Proxy niet gebruiken"
        Me.CB_Proxy.UseVisualStyleBackColor = True
        '
        'ComboBox1
        '
        Me.ComboBox1.Enabled = False
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(104, 19)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(201, 21)
        Me.ComboBox1.TabIndex = 1
        Me.ComboBox1.Text = "Standaard (autodetectie)"
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.Location = New System.Drawing.Point(18, 19)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(61, 13)
        Me.Label17.TabIndex = 0
        Me.Label17.Text = "Servertype:"
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.TB_Aantal)
        Me.TabPage3.Controls.Add(Me.Label11)
        Me.TabPage3.Controls.Add(Me.CheckBox1)
        Me.TabPage3.Controls.Add(Me.RB_Passief)
        Me.TabPage3.Controls.Add(Me.RB_Actief)
        Me.TabPage3.Controls.Add(Me.RB_Standaard)
        Me.TabPage3.Controls.Add(Me.Label10)
        Me.TabPage3.Location = New System.Drawing.Point(4, 22)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage3.Size = New System.Drawing.Size(362, 334)
        Me.TabPage3.TabIndex = 2
        Me.TabPage3.Text = "Overdrachtinstellingen"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'TB_Aantal
        '
        Me.TB_Aantal.Location = New System.Drawing.Point(226, 105)
        Me.TB_Aantal.Name = "TB_Aantal"
        Me.TB_Aantal.ReadOnly = True
        Me.TB_Aantal.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.TB_Aantal.Size = New System.Drawing.Size(52, 20)
        Me.TB_Aantal.TabIndex = 6
        Me.TB_Aantal.Text = "1"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(50, 108)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(150, 13)
        Me.Label11.TabIndex = 5
        Me.Label11.Text = "Maximaal aantal verbindingen:"
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Location = New System.Drawing.Point(24, 75)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(234, 17)
        Me.CheckBox1.TabIndex = 4
        Me.CheckBox1.Text = "Het aantal gelijktijdige verbindingen limiteren"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'RB_Passief
        '
        Me.RB_Passief.AutoSize = True
        Me.RB_Passief.Location = New System.Drawing.Point(162, 42)
        Me.RB_Passief.Name = "RB_Passief"
        Me.RB_Passief.Size = New System.Drawing.Size(59, 17)
        Me.RB_Passief.TabIndex = 3
        Me.RB_Passief.Text = "Passief"
        Me.RB_Passief.UseVisualStyleBackColor = True
        '
        'RB_Actief
        '
        Me.RB_Actief.AutoSize = True
        Me.RB_Actief.Location = New System.Drawing.Point(104, 42)
        Me.RB_Actief.Name = "RB_Actief"
        Me.RB_Actief.Size = New System.Drawing.Size(52, 17)
        Me.RB_Actief.TabIndex = 2
        Me.RB_Actief.Text = "Actief"
        Me.RB_Actief.UseVisualStyleBackColor = True
        '
        'RB_Standaard
        '
        Me.RB_Standaard.AutoSize = True
        Me.RB_Standaard.Checked = True
        Me.RB_Standaard.Location = New System.Drawing.Point(24, 42)
        Me.RB_Standaard.Name = "RB_Standaard"
        Me.RB_Standaard.Size = New System.Drawing.Size(74, 17)
        Me.RB_Standaard.TabIndex = 1
        Me.RB_Standaard.TabStop = True
        Me.RB_Standaard.Text = "Standaard"
        Me.RB_Standaard.UseVisualStyleBackColor = True
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(21, 17)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(99, 13)
        Me.Label10.TabIndex = 0
        Me.Label10.Text = "Overdrachtsmodus:"
        '
        'TabPage4
        '
        Me.TabPage4.Controls.Add(Me.Label16)
        Me.TabPage4.Controls.Add(Me.Label15)
        Me.TabPage4.Controls.Add(Me.Label14)
        Me.TabPage4.Controls.Add(Me.TextBox1)
        Me.TabPage4.Controls.Add(Me.RB_Willekeurige)
        Me.TabPage4.Controls.Add(Me.RB_UTF)
        Me.TabPage4.Controls.Add(Me.RB_Auto)
        Me.TabPage4.Controls.Add(Me.Label13)
        Me.TabPage4.Controls.Add(Me.Label12)
        Me.TabPage4.Location = New System.Drawing.Point(4, 22)
        Me.TabPage4.Name = "TabPage4"
        Me.TabPage4.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage4.Size = New System.Drawing.Size(362, 334)
        Me.TabPage4.TabIndex = 3
        Me.TabPage4.Text = "Karakterset"
        Me.TabPage4.UseVisualStyleBackColor = True
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.Location = New System.Drawing.Point(18, 209)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(186, 13)
        Me.Label16.TabIndex = 8
        Me.Label16.Text = "verkeerd weergeven bestandsnamen."
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(18, 196)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(268, 13)
        Me.Label15.TabIndex = 7
        Me.Label15.Text = "Gebruik van de verkeerde karakterset kan resulteren in"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Location = New System.Drawing.Point(102, 149)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(64, 13)
        Me.Label14.TabIndex = 6
        Me.Label14.Text = "Encodering:"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(176, 146)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.ReadOnly = True
        Me.TextBox1.Size = New System.Drawing.Size(100, 20)
        Me.TextBox1.TabIndex = 5
        '
        'RB_Willekeurige
        '
        Me.RB_Willekeurige.AutoSize = True
        Me.RB_Willekeurige.Location = New System.Drawing.Point(21, 123)
        Me.RB_Willekeurige.Name = "RB_Willekeurige"
        Me.RB_Willekeurige.Size = New System.Drawing.Size(176, 17)
        Me.RB_Willekeurige.TabIndex = 4
        Me.RB_Willekeurige.Text = "Gebruik willekeurige karakterset"
        Me.RB_Willekeurige.UseVisualStyleBackColor = True
        '
        'RB_UTF
        '
        Me.RB_UTF.AutoSize = True
        Me.RB_UTF.Location = New System.Drawing.Point(21, 100)
        Me.RB_UTF.Name = "RB_UTF"
        Me.RB_UTF.Size = New System.Drawing.Size(97, 17)
        Me.RB_UTF.TabIndex = 3
        Me.RB_UTF.Text = "UTF-8 forceren"
        Me.RB_UTF.UseVisualStyleBackColor = True
        '
        'RB_Auto
        '
        Me.RB_Auto.AutoSize = True
        Me.RB_Auto.Checked = True
        Me.RB_Auto.Location = New System.Drawing.Point(21, 53)
        Me.RB_Auto.Name = "RB_Auto"
        Me.RB_Auto.Size = New System.Drawing.Size(88, 17)
        Me.RB_Auto.TabIndex = 2
        Me.RB_Auto.TabStop = True
        Me.RB_Auto.Text = "Auto-detectie"
        Me.RB_Auto.UseVisualStyleBackColor = True
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(18, 26)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(129, 13)
        Me.Label13.TabIndex = 1
        Me.Label13.Text = "bestanden te encorderen:"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(18, 13)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(229, 13)
        Me.Label12.TabIndex = 0
        Me.Label12.Text = "De server gebruikt de volgende karakterset om"
        '
        'BtnVerbinden
        '
        Me.BtnVerbinden.Location = New System.Drawing.Point(229, 388)
        Me.BtnVerbinden.Name = "BtnVerbinden"
        Me.BtnVerbinden.Size = New System.Drawing.Size(75, 23)
        Me.BtnVerbinden.TabIndex = 3
        Me.BtnVerbinden.Text = "Verbinden"
        Me.BtnVerbinden.UseVisualStyleBackColor = True
        '
        'BtnOk
        '
        Me.BtnOk.Location = New System.Drawing.Point(327, 388)
        Me.BtnOk.Name = "BtnOk"
        Me.BtnOk.Size = New System.Drawing.Size(75, 23)
        Me.BtnOk.TabIndex = 4
        Me.BtnOk.Text = "OK"
        Me.BtnOk.UseVisualStyleBackColor = True
        '
        'BtnAnnuleren
        '
        Me.BtnAnnuleren.Location = New System.Drawing.Point(425, 388)
        Me.BtnAnnuleren.Name = "BtnAnnuleren"
        Me.BtnAnnuleren.Size = New System.Drawing.Size(75, 23)
        Me.BtnAnnuleren.TabIndex = 5
        Me.BtnAnnuleren.Text = "Annuleren"
        Me.BtnAnnuleren.UseVisualStyleBackColor = True
        '
        'SiteBeheer
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(580, 423)
        Me.Controls.Add(Me.BtnAnnuleren)
        Me.Controls.Add(Me.BtnOk)
        Me.Controls.Add(Me.BtnVerbinden)
        Me.Controls.Add(Me.TCInstellingen)
        Me.Controls.Add(Me.LWItems)
        Me.Controls.Add(Me.Label1)
        Me.Name = "SiteBeheer"
        Me.Text = "SiteBeheer"
        Me.TCInstellingen.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        Me.TabPage2.ResumeLayout(False)
        Me.TabPage2.PerformLayout()
        Me.TabPage3.ResumeLayout(False)
        Me.TabPage3.PerformLayout()
        Me.TabPage4.ResumeLayout(False)
        Me.TabPage4.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents LWItems As System.Windows.Forms.ListView
    Friend WithEvents TCInstellingen As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage4 As System.Windows.Forms.TabPage
    Friend WithEvents BtnVerbinden As System.Windows.Forms.Button
    Friend WithEvents BtnOk As System.Windows.Forms.Button
    Friend WithEvents BtnAnnuleren As System.Windows.Forms.Button
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents LB_Commentaar As System.Windows.Forms.ListBox
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents TB_Poort As System.Windows.Forms.TextBox
    Friend WithEvents TB_Host As System.Windows.Forms.TextBox
    Friend WithEvents TB_Account As System.Windows.Forms.TextBox
    Friend WithEvents TB_Wachtwoord As System.Windows.Forms.TextBox
    Friend WithEvents TB_User As System.Windows.Forms.TextBox
    Friend WithEvents CB_Inlogtype As System.Windows.Forms.ComboBox
    Friend WithEvents CB_Severtype As System.Windows.Forms.ComboBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents RB_Passief As System.Windows.Forms.RadioButton
    Friend WithEvents RB_Actief As System.Windows.Forms.RadioButton
    Friend WithEvents RB_Standaard As System.Windows.Forms.RadioButton
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents TB_Aantal As System.Windows.Forms.TextBox
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents RB_Willekeurige As System.Windows.Forms.RadioButton
    Friend WithEvents RB_UTF As System.Windows.Forms.RadioButton
    Friend WithEvents RB_Auto As System.Windows.Forms.RadioButton
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents Label16 As System.Windows.Forms.Label
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents BT_Bladeren As System.Windows.Forms.Button
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents CB_Proxy As System.Windows.Forms.CheckBox
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents TextBox3 As System.Windows.Forms.TextBox
    Friend WithEvents Label19 As System.Windows.Forms.Label
End Class
