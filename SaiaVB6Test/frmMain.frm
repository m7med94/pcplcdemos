VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmMain 
   BackColor       =   &H80000013&
   Caption         =   "Test2"
   ClientHeight    =   6750
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   5985
   LinkTopic       =   "Form1"
   ScaleHeight     =   6750
   ScaleMode       =   0  'User
   ScaleWidth      =   5985
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.Slider Slider1 
      Height          =   2175
      Left            =   5280
      TabIndex        =   32
      Top             =   480
      Width           =   495
      _ExtentX        =   873
      _ExtentY        =   3836
      _Version        =   393216
      Orientation     =   1
      Max             =   100
      TickStyle       =   1
      TickFrequency   =   5
      TextPosition    =   1
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Control panel"
      Height          =   3495
      Left            =   840
      TabIndex        =   22
      Top             =   2880
      Width           =   3855
      Begin VB.CommandButton but1 
         BackColor       =   &H00FFC0C0&
         Height          =   495
         Left            =   600
         Picture         =   "frmMain.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   600
         Width           =   495
      End
      Begin VB.CommandButton but2 
         BackColor       =   &H00FFC0C0&
         Height          =   495
         Left            =   2520
         Picture         =   "frmMain.frx":07AE
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   600
         Width           =   495
      End
      Begin VB.CommandButton but3 
         BackColor       =   &H00FFC0C0&
         Height          =   495
         Left            =   600
         Picture         =   "frmMain.frx":0F5C
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   1560
         Width           =   495
      End
      Begin VB.CommandButton but4 
         BackColor       =   &H00FFC0C0&
         Height          =   495
         Left            =   600
         Picture         =   "frmMain.frx":170A
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   2520
         Width           =   495
      End
      Begin VB.CommandButton but5 
         BackColor       =   &H00FFC0C0&
         Height          =   495
         Left            =   1560
         Picture         =   "frmMain.frx":1EB8
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   1560
         Width           =   495
      End
      Begin VB.CommandButton but6 
         BackColor       =   &H00FFC0C0&
         Height          =   495
         Left            =   1560
         Picture         =   "frmMain.frx":2666
         Style           =   1  'Graphical
         TabIndex        =   25
         Top             =   2520
         Width           =   495
      End
      Begin VB.CommandButton but7 
         BackColor       =   &H00FFC0C0&
         Height          =   495
         Left            =   2520
         Picture         =   "frmMain.frx":2E14
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   1560
         Width           =   495
      End
      Begin VB.CommandButton but8 
         BackColor       =   &H00FFC0C0&
         Height          =   495
         Left            =   2520
         Picture         =   "frmMain.frx":35C2
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   2520
         Width           =   495
      End
   End
   Begin VB.TextBox Value1 
      Alignment       =   1  'Right Justify
      CausesValidation=   0   'False
      Height          =   285
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   21
      TabStop         =   0   'False
      ToolTipText     =   "Register R 101"
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox Value2 
      Alignment       =   1  'Right Justify
      CausesValidation=   0   'False
      Height          =   285
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   20
      TabStop         =   0   'False
      ToolTipText     =   "Register R 102"
      Top             =   1560
      Width           =   855
   End
   Begin VB.TextBox Value3 
      Alignment       =   1  'Right Justify
      CausesValidation=   0   'False
      Height          =   285
      Left            =   4080
      Locked          =   -1  'True
      TabIndex        =   19
      TabStop         =   0   'False
      ToolTipText     =   "Register R 103"
      Top             =   2280
      Width           =   855
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   360
      Top             =   3000
   End
   Begin MSComctlLib.StatusBar sbStatusBar 
      Align           =   2  'Align Bottom
      Height          =   270
      Left            =   0
      TabIndex        =   0
      Top             =   6480
      Width           =   5985
      _ExtentX        =   10557
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   4895
            Text            =   "Status"
            TextSave        =   "Status"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            AutoSize        =   2
            TextSave        =   "23-5-2010"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            AutoSize        =   2
            TextSave        =   "19:08"
         EndProperty
      EndProperty
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BackStyle       =   0  'Transparent
      Caption         =   "RUN TIME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3840
      TabIndex        =   31
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BackStyle       =   0  'Transparent
      Caption         =   "R 102"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4080
      TabIndex        =   18
      Top             =   1320
      Width           =   855
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BackStyle       =   0  'Transparent
      Caption         =   "R 101"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4080
      TabIndex        =   17
      Top             =   600
      Width           =   855
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BackStyle       =   0  'Transparent
      Caption         =   "R 103"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4080
      TabIndex        =   16
      Top             =   2040
      Width           =   855
   End
   Begin VB.Image in6 
      Height          =   225
      Left            =   360
      Picture         =   "frmMain.frx":3D70
      Top             =   2400
      Width           =   585
   End
   Begin VB.Image in5 
      Height          =   225
      Left            =   360
      Picture         =   "frmMain.frx":3F1E
      Top             =   2040
      Width           =   585
   End
   Begin VB.Image in4 
      Height          =   225
      Left            =   360
      Picture         =   "frmMain.frx":40CC
      Top             =   1680
      Width           =   585
   End
   Begin VB.Image in3 
      Height          =   225
      Left            =   360
      Picture         =   "frmMain.frx":427A
      Top             =   1320
      Width           =   585
   End
   Begin VB.Image in2 
      Height          =   225
      Left            =   360
      Picture         =   "frmMain.frx":4428
      Top             =   960
      Width           =   585
   End
   Begin VB.Image in1 
      Height          =   225
      Left            =   360
      Picture         =   "frmMain.frx":45D6
      Top             =   600
      Width           =   585
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BackStyle       =   0  'Transparent
      Caption         =   "ALARMS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2520
      TabIndex        =   15
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label stor1 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 301"
      Height          =   255
      Left            =   2880
      TabIndex        =   14
      Top             =   600
      Width           =   750
   End
   Begin VB.Label stor2 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 302"
      Height          =   255
      Left            =   2880
      TabIndex        =   13
      Top             =   960
      Width           =   750
   End
   Begin VB.Label stor3 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 303"
      Height          =   255
      Left            =   2880
      TabIndex        =   12
      Top             =   1320
      Width           =   750
   End
   Begin VB.Label stor4 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 304"
      Height          =   255
      Left            =   2880
      TabIndex        =   11
      Top             =   1680
      Width           =   750
   End
   Begin VB.Label stor5 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 305"
      Height          =   255
      Left            =   2880
      TabIndex        =   10
      Top             =   2040
      Width           =   750
   End
   Begin VB.Label stor6 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 306"
      Height          =   255
      Left            =   2880
      TabIndex        =   9
      Top             =   2400
      Width           =   750
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BackStyle       =   0  'Transparent
      Caption         =   "OUTPUTS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1200
      TabIndex        =   8
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      BackStyle       =   0  'Transparent
      Caption         =   "INPUTS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label uit6 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      Caption         =   "Flag 206"
      Height          =   255
      Left            =   1560
      TabIndex        =   6
      Top             =   2400
      Width           =   750
   End
   Begin VB.Label uit5 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      Caption         =   "Flag 205"
      Height          =   255
      Left            =   1560
      TabIndex        =   5
      Top             =   2040
      Width           =   750
   End
   Begin VB.Label uit4 
      Alignment       =   2  'Center
      BackColor       =   &H80000013&
      Caption         =   "Flag 204"
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   1680
      Width           =   750
   End
   Begin VB.Label uit3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 203"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   1560
      TabIndex        =   3
      Top             =   1320
      Width           =   750
   End
   Begin VB.Label uit2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 202"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   960
      Width           =   750
   End
   Begin VB.Label uit1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000013&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Flag 201"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   1560
      TabIndex        =   1
      Top             =   600
      Width           =   750
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuPlc 
      Caption         =   "&Plc"
      Begin VB.Menu mnuConnect 
         Caption         =   "Connect with PLC"
      End
      Begin VB.Menu mnuDisconnect 
         Caption         =   "Disconnect connection"
      End
      Begin VB.Menu mnuSeparator 
         Caption         =   "-"
      End
      Begin VB.Menu mnuSetupcon 
         Caption         =   "&Setup connections"
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "&View"
      Begin VB.Menu mnuViewToolbar 
         Caption         =   "&Toolbar"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuViewStatusBar 
         Caption         =   "Status &Bar"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuViewOptions 
         Caption         =   "&Options..."
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "&About "
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    Me.Left = GetSetting(App.Title, "Settings", "MainLeft", 1000)
    Me.Top = GetSetting(App.Title, "Settings", "MainTop", 1000)
    Me.Width = GetSetting(App.Title, "Settings", "MainWidth", 6500)
    Me.Height = GetSetting(App.Title, "Settings", "MainHeight", 6500)
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim i As Integer

    'close all sub forms
    For i = Forms.Count - 1 To 1 Step -1
        Unload Forms(i)
    Next
    If Me.WindowState <> vbMinimized Then
        SaveSetting App.Title, "Settings", "MainLeft", Me.Left
        SaveSetting App.Title, "Settings", "MainTop", Me.Top
        SaveSetting App.Title, "Settings", "MainWidth", Me.Width
        SaveSetting App.Title, "Settings", "MainHeight", Me.Height
    End If
End Sub

Private Sub mnuConnect_Click()
    sbStatusBar.Panels(1).Text = ConnectPCD.connect
End Sub

Private Sub mnuDisconnect_Click()
    sbStatusBar.Panels(1).Text = ConnectPCD.disconnect
End Sub

Private Sub mnuSetupcon_Click()
    If connection = False Then
        sbStatusBar.Panels(1).Text = ConnectPCD.ConnectionSetings
    Else
        MsgBox "Disconnect first!."
    End If
End Sub
Private Sub mnuHelpAbout_Click()
    frmAbout.Show vbModal, Me
End Sub
Private Sub mnuViewStatusBar_Click()
    mnuViewStatusBar.Checked = Not mnuViewStatusBar.Checked
    sbStatusBar.Visible = mnuViewStatusBar.Checked
End Sub

Private Sub mnuFileExit_Click()
    Result = ConnectPCD.UnloadDrv()
    'unload the form
    Unload Me
End Sub

Private Sub Timer1_Timer()
    If connection = True Then
    
        'With connction
        'Inputs
        Regs(0) = Slider1.Value
        Rezult = WriteRegs(101, 1)
        
        Result = ReadRegs(101, 3)
        If Result = 0 Then
            Value1.Text = str(Regs(0))
            Value2.Text = str(Regs(1))
            Value3.Text = str(Regs(2))
        End If
        
        'Inputs
        Result = ReadFlags(101, 6)
        If Result = 0 Then
            If Chr(flagsA(0)) = "0" Then
                            in1.Picture = LoadPicture(F_ON)
                        Else
                            in1.Picture = LoadPicture(F_OUT)
                        End If
            If Chr(flagsA(1)) = "0" Then
                            in2.Picture = LoadPicture(F_ON)
                        Else
                            in2.Picture = LoadPicture(F_OUT)
                        End If
            If Chr(flagsA(2)) = "0" Then
                            in3.Picture = LoadPicture(F_ON)
                        Else
                            in3.Picture = LoadPicture(F_OUT)
                        End If
            If Chr(flagsA(3)) = "0" Then
                            in4.Picture = LoadPicture(F_ON)
                        Else
                            in4.Picture = LoadPicture(F_OUT)
                        End If
            If Chr(flagsA(4)) = "0" Then
                            in5.Picture = LoadPicture(F_ON)
                        Else
                            in5.Picture = LoadPicture(F_OUT)
                        End If
            If Chr(flagsA(5)) = "0" Then
                            in6.Picture = LoadPicture(F_ON)
                        Else
                            in6.Picture = LoadPicture(F_OUT)
                        End If
         End If
         
        'Outputs
        Result = ReadFlags(201, 6)
        If Result = 0 Then
            If Chr(flagsA(0)) = "0" Then
                            uit1.BackColor = COLOR_OUT
                        Else
                            uit1.BackColor = COLOR_ON
                        End If
            If flagsA(1) = 48 Then
                            uit2.BackColor = COLOR_OUT
                        Else
                            uit2.BackColor = COLOR_ON
                        End If
            If flagsA(2) = 48 Then
                            uit3.BackColor = COLOR_OUT
                        Else
                            uit3.BackColor = COLOR_ON
                        End If
            If flagsA(3) = 48 Then
                            uit4.BackColor = COLOR_OUT
                        Else
                            uit4.BackColor = COLOR_ON
                        End If
            If flagsA(4) = 48 Then
                            uit5.BackColor = COLOR_OUT
                        Else
                            uit5.BackColor = COLOR_ON
                        End If
            If flagsA(5) = 48 Then
                            uit6.BackColor = COLOR_OUT
                        Else
                            uit6.BackColor = COLOR_ON
                        End If
        End If
        
        'Alarms
        Result = ReadFlags(301, 6)
        If Result = 0 Then
            If flagsA(0) = 48 Then
                           stor1.BackColor = COLOR_ON
                        Else
                           stor1.BackColor = ALARM
                        End If
            If flagsA(1) = 48 Then
                           stor2.BackColor = COLOR_ON
                        Else
                           stor2.BackColor = ALARM
                        End If
            If flagsA(2) = 48 Then
                           stor3.BackColor = COLOR_ON
                        Else
                           stor3.BackColor = ALARM
                        End If
            If flagsA(3) = 48 Then
                           stor4.BackColor = COLOR_ON
                        Else
                           stor4.BackColor = ALARM
                        End If
            If flagsA(4) = 48 Then
                           stor5.BackColor = COLOR_ON
                        Else
                           stor5.BackColor = ALARM
                        End If
            If flagsA(5) = 48 Then
                           stor6.BackColor = COLOR_ON
                        Else
                           stor6.BackColor = ALARM
                        End If
        End If
            
        'Buttons
        Result = ReadFlags(801, 8)
        If Result = 0 Then
            If flagsA(0) = 48 Then
                            but1.Picture = LoadPicture("glyph\vgb_u.bmp")
                        Else
                            but1.Picture = LoadPicture("glyph\vgb_a.bmp")
                        End If
            If flagsA(1) = 48 Then
                            but2.Picture = LoadPicture("glyph\keuze_1.bmp")
                        Else
                            but2.Picture = LoadPicture("glyph\keuze_2.bmp")
                        End If
            If flagsA(2) = 48 Then
                            but3.Picture = LoadPicture("glyph\ontg_u.bmp")
                        Else
                            but3.Picture = LoadPicture("glyph\ontg_a.bmp")
                        End If
            If flagsA(3) = 48 Then
                            but4.Picture = LoadPicture("glyph\verg_u.bmp")
                        Else
                            but4.Picture = LoadPicture("glyph\verg_a.bmp")
                        End If
            If flagsA(4) = 48 Then
                            but5.Picture = LoadPicture("glyph\up_u.bmp")
                        Else
                            but5.Picture = LoadPicture("glyph\up_a.bmp")
                        End If
            If flagsA(5) = 48 Then
                            but6.Picture = LoadPicture("glyph\neer_u.bmp")
                        Else
                            but6.Picture = LoadPicture("glyph\neer_a.bmp")
                        End If
            If flagsA(6) = 48 Then
                            but7.Picture = LoadPicture("glyph\res_u.bmp")
                        Else
                            but7.Picture = LoadPicture("glyph\res_a.bmp")
                        End If
            If flagsA(7) = 48 Then
                            but8.Picture = LoadPicture("glyph\stop_u.bmp")
                        Else
                            but8.Picture = LoadPicture("glyph\stop_a.bmp")
                        End If
        End If
    Else
        'Without connection
        'values
            Value1.Text = " "
            Value2.Text = " "
            Value3.Text = " "
        'Buttons
        but1.Picture = LoadPicture("glyph\vgb_d.bmp")
        but2.Picture = LoadPicture("glyph\keuze_0.bmp")
        but3.Picture = LoadPicture("glyph\ontg_d.bmp")
        but4.Picture = LoadPicture("glyph\verg_d.bmp")
        but5.Picture = LoadPicture("glyph\up_d.bmp")
        but6.Picture = LoadPicture("glyph\neer_d.bmp")
        but7.Picture = LoadPicture("glyph\res_d.bmp")
        but8.Picture = LoadPicture("glyph\stop_d.bmp")
         
        'inputs
        in1.Picture = LoadPicture(F_OFF)
        in2.Picture = LoadPicture(F_OFF)
        in3.Picture = LoadPicture(F_OFF)
        in4.Picture = LoadPicture(F_OFF)
        in5.Picture = LoadPicture(F_OFF)
        in6.Picture = LoadPicture(F_OFF)
        'outputs
        uit1.BackColor = COLOR_OFF
        uit2.BackColor = COLOR_OFF
        uit3.BackColor = COLOR_OFF
        uit4.BackColor = COLOR_OFF
        uit5.BackColor = COLOR_OFF
        uit6.BackColor = COLOR_OFF
        'Alarms
        stor1.BackColor = COLOR_OFF
        stor2.BackColor = COLOR_OFF
        stor3.BackColor = COLOR_OFF
        stor4.BackColor = COLOR_OFF
        stor5.BackColor = COLOR_OFF
        stor6.BackColor = COLOR_OFF
    End If
    
    
End Sub
Private Sub in1_Click()
    Result = ConnectPCD.WriteFlag(2, 101)
End Sub
Private Sub uit1_Click()
    Result = ConnectPCD.WriteFlag(2, 201)
End Sub
Private Sub but1_Click()
    Result = ConnectPCD.WriteFlag(2, 801)
End Sub
Private Sub but2_Click()
    Result = ConnectPCD.WriteFlag(2, 802)
End Sub
Private Sub but3_Click()
    Result = ConnectPCD.WriteFlag(2, 803)
End Sub
Private Sub but4_Click()
    Result = ConnectPCD.WriteFlag(2, 804)
End Sub
Private Sub but5_Click()
    Result = ConnectPCD.WriteFlag(2, 805)
End Sub
Private Sub but6_Click()
    Result = ConnectPCD.WriteFlag(2, 806)
End Sub
Private Sub but7_Click()
    Result = ConnectPCD.WriteFlag(2, 807)
End Sub
Private Sub but8_Click()
    Result = ConnectPCD.WriteFlag(2, 808)
End Sub

