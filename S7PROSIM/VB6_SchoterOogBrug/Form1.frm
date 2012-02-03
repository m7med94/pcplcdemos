VERSION 5.00
Object = "{83CC0D70-FEDA-11D1-BE76-0060B06816CF}#1.2#0"; "S7WSPSMX.OCX"
Object = "{B22FECA4-C517-11D3-81C9-00C04F72F100}#1.0#0"; "S7WSPSPX.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Form1 
   Caption         =   "SchoterOog Brug"
   ClientHeight    =   4335
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10905
   LinkTopic       =   "Form1"
   ScaleHeight     =   4335
   ScaleWidth      =   10905
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer TimerSIM 
      Interval        =   1000
      Left            =   2520
      Top             =   0
   End
   Begin VB.Frame Frame5 
      Height          =   975
      Left            =   7800
      TabIndex        =   48
      Top             =   3360
      Width           =   3015
      Begin VB.CheckBox sASB_NE 
         Caption         =   "NE"
         Height          =   255
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   55
         Top             =   360
         Width           =   495
      End
      Begin VB.CheckBox sASB_VNE 
         Caption         =   "VNE"
         Height          =   255
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   54
         Top             =   120
         Width           =   495
      End
      Begin VB.CheckBox sASB_VOP 
         Caption         =   "VOP"
         Height          =   255
         Left            =   2040
         Style           =   1  'Graphical
         TabIndex        =   53
         Top             =   120
         Width           =   495
      End
      Begin VB.CheckBox sASB_OP 
         Caption         =   "OP"
         Height          =   255
         Left            =   2040
         Style           =   1  'Graphical
         TabIndex        =   52
         Top             =   360
         Width           =   495
      End
      Begin VB.CheckBox sASB_HB 
         Caption         =   "WS"
         Height          =   255
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   51
         Top             =   600
         Width           =   495
      End
      Begin VB.CheckBox sASB_TH 
         Caption         =   "TH"
         Height          =   255
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   50
         Top             =   360
         Width           =   495
      End
      Begin VB.CheckBox sASB_WS 
         Caption         =   "WS"
         Height          =   255
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   49
         Top             =   120
         Width           =   495
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "OPENEN SLUITEN"
         Height          =   195
         Index           =   27
         Left            =   600
         TabIndex        =   64
         Top             =   120
         Width           =   1410
      End
      Begin VB.Image KN_ASB_openen 
         Height          =   240
         Left            =   840
         Picture         =   "Form1.frx":0000
         Top             =   360
         Width           =   240
      End
      Begin VB.Image KN_ASB_sluiten 
         Height          =   240
         Left            =   1560
         Picture         =   "Form1.frx":0342
         Top             =   360
         Width           =   240
      End
   End
   Begin VB.Timer Timer2 
      Interval        =   50
      Left            =   2040
      Top             =   0
   End
   Begin MSComctlLib.Slider SliderHD1 
      Height          =   675
      Left            =   0
      TabIndex        =   44
      Top             =   2880
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   1191
      _Version        =   393216
      SmallChange     =   10
      Max             =   8000
      TickFrequency   =   1000
   End
   Begin VB.Frame Frame2 
      Height          =   615
      Left            =   4440
      TabIndex        =   11
      Top             =   2760
      Width           =   4215
      Begin VB.CheckBox oHD1_NEER1 
         Caption         =   "1N1"
         Height          =   255
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   240
         Width           =   495
      End
      Begin VB.CheckBox oHD1_NEER2 
         Caption         =   "1N2"
         Height          =   255
         Left            =   720
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   240
         Width           =   495
      End
      Begin VB.CheckBox oHD2_NEER1 
         Caption         =   "2N1"
         Height          =   255
         Left            =   1320
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   240
         Width           =   495
      End
      Begin VB.CheckBox oHD2_OP 
         Caption         =   "2OP"
         Height          =   255
         Left            =   3600
         Style           =   1  'Graphical
         TabIndex        =   14
         Top             =   240
         Width           =   495
      End
      Begin VB.CheckBox oHD2_NEER2 
         Caption         =   "2N2"
         Height          =   255
         Left            =   1920
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   240
         Width           =   495
      End
      Begin VB.CheckBox oHD1_OP 
         Caption         =   "1OP"
         Height          =   255
         Left            =   3120
         Style           =   1  'Graphical
         TabIndex        =   12
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2775
      Left            =   4440
      TabIndex        =   5
      Top             =   0
      Width           =   4215
      Begin VB.CheckBox opPS11 
         Caption         =   "PS11"
         Height          =   255
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   63
         Top             =   720
         Width           =   495
      End
      Begin VB.CheckBox opPS7 
         Caption         =   "PS7"
         Height          =   255
         Left            =   3600
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   720
         Width           =   495
      End
      Begin VB.CheckBox opPS1 
         Caption         =   "PS1"
         Height          =   255
         Left            =   720
         Style           =   1  'Graphical
         TabIndex        =   10
         Top             =   720
         Width           =   495
      End
      Begin VB.CheckBox opPS5 
         Caption         =   "PS5"
         Height          =   255
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   720
         Width           =   495
      End
      Begin VB.Image SIM 
         Height          =   240
         Left            =   3840
         Picture         =   "Form1.frx":0684
         Top             =   360
         Width           =   240
      End
      Begin VB.Image retardAL2 
         Height          =   240
         Left            =   3240
         Picture         =   "Form1.frx":0AC6
         Top             =   360
         Width           =   240
      End
      Begin VB.Image V06_8 
         Height          =   120
         Left            =   840
         Picture         =   "Form1.frx":0F08
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image V11_11 
         Height          =   120
         Left            =   2160
         Picture         =   "Form1.frx":10CA
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image V16_18 
         Height          =   120
         Left            =   3480
         Picture         =   "Form1.frx":128C
         Top             =   2160
         Width           =   240
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "v06-8"
         Height          =   195
         Index           =   24
         Left            =   840
         TabIndex        =   35
         Top             =   1920
         Width           =   405
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v11-11"
         Height          =   195
         Index           =   23
         Left            =   2040
         TabIndex        =   34
         Top             =   1920
         Width           =   495
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v16-18"
         Height          =   195
         Index           =   22
         Left            =   3360
         TabIndex        =   33
         Top             =   1920
         Width           =   495
      End
      Begin VB.Image V05_6 
         Height          =   120
         Left            =   360
         Picture         =   "Form1.frx":144E
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image V01_1 
         Height          =   120
         Left            =   1680
         Picture         =   "Form1.frx":1610
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image V15_16 
         Height          =   120
         Left            =   3000
         Picture         =   "Form1.frx":17D2
         Top             =   2160
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v05-6"
         Height          =   195
         Index           =   21
         Left            =   240
         TabIndex        =   32
         Top             =   1920
         Width           =   405
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v01-1"
         Height          =   195
         Index           =   20
         Left            =   1560
         TabIndex        =   31
         Top             =   1920
         Width           =   405
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v15-16"
         Height          =   195
         Index           =   19
         Left            =   2760
         TabIndex        =   30
         Top             =   1920
         Width           =   495
      End
      Begin VB.Image V06_9 
         Height          =   120
         Left            =   840
         Picture         =   "Form1.frx":1994
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image V11_12 
         Height          =   120
         Left            =   2160
         Picture         =   "Form1.frx":1B56
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image V16_19 
         Height          =   120
         Left            =   3480
         Picture         =   "Form1.frx":1D18
         Top             =   2520
         Width           =   240
      End
      Begin VB.Label Label44 
         AutoSize        =   -1  'True
         Caption         =   "v06-9"
         Height          =   195
         Index           =   18
         Left            =   840
         TabIndex        =   29
         Top             =   2280
         Width           =   405
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v11-12"
         Height          =   195
         Index           =   17
         Left            =   2040
         TabIndex        =   28
         Top             =   2280
         Width           =   495
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v16-19"
         Height          =   195
         Index           =   16
         Left            =   3360
         TabIndex        =   27
         Top             =   2280
         Width           =   495
      End
      Begin VB.Image V05_7 
         Height          =   120
         Left            =   360
         Picture         =   "Form1.frx":1EDA
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image V01_2 
         Height          =   120
         Left            =   1680
         Picture         =   "Form1.frx":209C
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image V15_17 
         Height          =   120
         Left            =   3000
         Picture         =   "Form1.frx":225E
         Top             =   2520
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v05-7"
         Height          =   195
         Index           =   15
         Left            =   240
         TabIndex        =   26
         Top             =   2280
         Width           =   405
      End
      Begin VB.Label Label33 
         AutoSize        =   -1  'True
         Caption         =   "v01-2"
         Height          =   195
         Index           =   14
         Left            =   1560
         TabIndex        =   25
         Top             =   2280
         Width           =   405
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v15-17"
         Height          =   195
         Index           =   13
         Left            =   2760
         TabIndex        =   24
         Top             =   2280
         Width           =   495
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "RETARD"
         Height          =   195
         Index           =   12
         Left            =   2880
         TabIndex        =   23
         Top             =   120
         Width           =   675
      End
      Begin VB.Image retardAL1 
         Height          =   240
         Left            =   2880
         Picture         =   "Form1.frx":2420
         Top             =   360
         Width           =   240
      End
      Begin VB.Image SE2_1 
         Height          =   240
         Left            =   2520
         Picture         =   "Form1.frx":2862
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image SE1_2 
         Height          =   240
         Left            =   1320
         Picture         =   "Form1.frx":2CA4
         Top             =   1320
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "SE1 SE2"
         Height          =   195
         Index           =   11
         Left            =   2520
         TabIndex        =   22
         Top             =   1080
         Width           =   645
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "SE1 SE2"
         Height          =   195
         Index           =   10
         Left            =   960
         TabIndex        =   21
         Top             =   1080
         Width           =   645
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v13"
         Height          =   195
         Index           =   9
         Left            =   3240
         TabIndex        =   20
         Top             =   1200
         Width           =   270
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v04"
         Height          =   195
         Index           =   8
         Left            =   1920
         TabIndex        =   19
         Top             =   1200
         Width           =   270
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "v03"
         Height          =   195
         Index           =   0
         Left            =   600
         TabIndex        =   18
         Top             =   1200
         Width           =   270
      End
      Begin VB.Image SE2_2 
         Height          =   240
         Left            =   2880
         Picture         =   "Form1.frx":30E6
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image SE1_1 
         Height          =   240
         Left            =   960
         Picture         =   "Form1.frx":3528
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image V13 
         Height          =   120
         Left            =   3240
         Picture         =   "Form1.frx":396A
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image V04 
         Height          =   120
         Left            =   1920
         Picture         =   "Form1.frx":3B2C
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image V03 
         Height          =   120
         Left            =   600
         Picture         =   "Form1.frx":3CEE
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image KN_BR_STOP 
         Height          =   240
         Left            =   1800
         Picture         =   "Form1.frx":3EB0
         Top             =   360
         Width           =   240
      End
      Begin VB.Image KN_BR_NEER 
         Height          =   240
         Left            =   1080
         Picture         =   "Form1.frx":41F2
         Top             =   360
         Width           =   240
      End
      Begin VB.Image KN_BR_OP 
         Height          =   240
         Left            =   360
         Picture         =   "Form1.frx":4534
         Top             =   360
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "OPENEN"
         Height          =   195
         Index           =   7
         Left            =   120
         TabIndex        =   8
         Top             =   120
         Width           =   675
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "SLUITEN"
         Height          =   195
         Index           =   6
         Left            =   840
         TabIndex        =   7
         Top             =   120
         Width           =   690
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "STOPEN"
         Height          =   195
         Index           =   5
         Left            =   1680
         TabIndex        =   6
         Top             =   120
         Width           =   660
      End
   End
   Begin VB.Frame Frame3 
      Height          =   975
      Left            =   4440
      TabIndex        =   2
      Top             =   3360
      Width           =   3255
      Begin VB.Frame Frame4 
         Caption         =   "KEUZE"
         Height          =   615
         Left            =   1080
         TabIndex        =   36
         Top             =   120
         Width           =   735
         Begin VB.OptionButton KEUZE_N 
            Caption         =   "N"
            Height          =   255
            Left            =   480
            Style           =   1  'Graphical
            TabIndex        =   39
            Top             =   240
            Width           =   255
         End
         Begin VB.OptionButton KEUZE_A 
            Caption         =   "A"
            Height          =   255
            Left            =   240
            Style           =   1  'Graphical
            TabIndex        =   38
            Top             =   240
            Width           =   255
         End
         Begin VB.OptionButton KEUZE_P 
            Caption         =   "P"
            Height          =   255
            Left            =   0
            Style           =   1  'Graphical
            TabIndex        =   37
            Top             =   240
            UseMaskColor    =   -1  'True
            Value           =   -1  'True
            Width           =   255
         End
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "UIT"
         Height          =   195
         Index           =   14
         Left            =   2880
         TabIndex        =   58
         Top             =   360
         Width           =   270
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "AAN"
         Height          =   195
         Index           =   4
         Left            =   2520
         TabIndex        =   57
         Top             =   360
         Width           =   330
      End
      Begin VB.Image kLVS_AAN 
         Height          =   240
         Left            =   2520
         Picture         =   "Form1.frx":4876
         Top             =   600
         Width           =   240
      End
      Begin VB.Image kLVS_UIT 
         Height          =   240
         Left            =   2880
         Picture         =   "Form1.frx":4BB8
         Top             =   600
         Width           =   240
      End
      Begin VB.Image L_LVS_AAN 
         Height          =   240
         Left            =   2880
         Picture         =   "Form1.frx":4EFA
         Top             =   120
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "LVS"
         Height          =   195
         Index           =   3
         Left            =   2520
         TabIndex        =   56
         Top             =   120
         Width           =   300
      End
      Begin VB.Image KN_RESET 
         Height          =   240
         Left            =   2040
         Picture         =   "Form1.frx":533C
         Top             =   360
         Width           =   240
      End
      Begin VB.Label Label1 
         Caption         =   "Reset"
         Height          =   255
         Index           =   2
         Left            =   1920
         TabIndex        =   43
         Top             =   120
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "Sleutel"
         Height          =   255
         Index           =   1
         Left            =   480
         TabIndex        =   40
         Top             =   120
         Width           =   495
      End
      Begin VB.Image SCH_SLEUTEL 
         Height          =   360
         Left            =   600
         Picture         =   "Form1.frx":567E
         Top             =   360
         Width           =   240
      End
      Begin VB.Image NS 
         Height          =   240
         Left            =   120
         Picture         =   "Form1.frx":5B40
         Top             =   360
         Width           =   240
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "LD"
      Height          =   375
      Left            =   10200
      TabIndex        =   1
      Top             =   120
      Width           =   375
   End
   Begin S7WSPSPXLib.S7ProSimPanel S7ProSimPanel 
      Height          =   3390
      Left            =   8760
      TabIndex        =   0
      Top             =   0
      Width           =   2250
      _Version        =   65536
      _ExtentX        =   3969
      _ExtentY        =   5980
      _StockProps     =   0
   End
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   1560
      Top             =   0
   End
   Begin MSComctlLib.Slider Sliderhd2 
      Height          =   675
      Left            =   0
      TabIndex        =   45
      Top             =   3480
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   1191
      _Version        =   393216
      SmallChange     =   10
      Max             =   8000
      TickFrequency   =   1000
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "op"
      Height          =   195
      Index           =   26
      Left            =   3600
      TabIndex        =   62
      Top             =   2640
      Width           =   180
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "neer"
      Height          =   195
      Index           =   25
      Left            =   0
      TabIndex        =   61
      Top             =   2640
      Width           =   315
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "CE2"
      Height          =   195
      Index           =   24
      Left            =   0
      TabIndex        =   60
      Top             =   1680
      Width           =   300
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "CE1"
      Height          =   195
      Index           =   18
      Left            =   0
      TabIndex        =   59
      Top             =   480
      Width           =   300
   End
   Begin VB.Shape STATUS_O 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   3240
      Top             =   2640
      Width           =   135
   End
   Begin VB.Shape STATUS_VO 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   3000
      Top             =   2640
      Width           =   135
   End
   Begin VB.Shape STATUS_VVO 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   2760
      Top             =   2640
      Width           =   135
   End
   Begin VB.Shape STATUS_VVN 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   960
      Top             =   2640
      Width           =   135
   End
   Begin VB.Shape STATUS_VN 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   720
      Top             =   2640
      Width           =   135
   End
   Begin VB.Shape STATUS_N 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   480
      Top             =   2640
      Width           =   135
   End
   Begin VB.Label Label6 
      Caption         =   "Label6"
      Height          =   255
      Left            =   3720
      TabIndex        =   47
      Top             =   720
      Width           =   495
   End
   Begin VB.Label Label5 
      Caption         =   "Label5"
      Height          =   255
      Left            =   3720
      TabIndex        =   46
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label4 
      Caption         =   "HD2"
      Height          =   255
      Left            =   360
      TabIndex        =   42
      Top             =   1680
      Width           =   495
   End
   Begin VB.Image KN_START 
      Height          =   240
      Left            =   120
      Picture         =   "Form1.frx":5E82
      Top             =   120
      Width           =   240
   End
   Begin VB.Label Label3 
      Caption         =   "HD1"
      Height          =   255
      Left            =   360
      TabIndex        =   4
      Top             =   480
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   "TIJD"
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   120
      Width           =   495
   End
   Begin S7PROSIMLib.S7ProSim S7ProSimX 
      Left            =   10080
      Top             =   1560
      _Version        =   65538
      _ExtentX        =   635
      _ExtentY        =   688
      _StockProps     =   64
      Enabled         =   0   'False
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command2_Click()
    FormSIM.Show
End Sub

Private Sub Form_Load()
    ''MsgBox "The current directory is " & CurDir
    NS.Picture = LoadPicture(CurDir & "\bmps\ns_uit.bmp")
    ReturnValue = S7ProSimX.WriteInputPoint(0, 0, True)
    Form1.Caption = "SchoterOog Brug"
        'ASB OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 3, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 7, True)
    
        ReturnValue = S7ProSimX.WriteInputPoint(5, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 3, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 7, True)
        'ASB NEER uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 3, False)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 7, False)
    
        ReturnValue = S7ProSimX.WriteInputPoint(7, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 3, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 7, False)
    
        sASB_OP.BackColor = vbGreen
        sASB_VOP.BackColor = vbGreen
    
    Pos_y(0) = 0
    Pos_y1(0) = 0
    Pos_z(0) = 0
    Pos_z1(0) = 0
    Pos_x(0) = 0
    Pos_x1(0) = 0
    
    Pos_Br1 = 1000
    Pos_Br2 = 1000
    
    sASB_WS.Value = 1
    sASB_TH.Value = 1
    sASB_HB.Value = 1

    
    Sleutel = False
    noodstop = True
End Sub

Private Sub Form_Paint()

   ' Draw a dotted line 200 twips from the top of the form.
   ' Me.DrawStyle = vbDot
'    Line (0, 200)-(300, 200), vbBlack

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





Private Sub KN_START_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' ReturnValue = S7ProSimX1.WriteInputPoint(18, 5, True)
      KN_START.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
    ' Draw a solid red rectangle.
    'FillColor = vbWhite
    'FillStyle = vbSolid
    'Line (100, 1000)-(4000, 3000), vbBlack, B
    ' Draw a rectangle filled with a crosshatch pattern.
    'FillColor = vbRed
    'FillStyle = vbCross
    'Line (100, 1000)-(4000, 3000), vbBlack, B
    Pos_Br1 = 100
    Pos_Br2 = 100
End Sub
Private Sub KN_START_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        KN_START.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
Private Sub KN_BR_OP_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 5, True)
        KN_BR_OP.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_BR_OP_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 5, False)
        KN_BR_OP.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
Private Sub KN_BR_NEER_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 6, True)
        KN_BR_NEER.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_BR_NEER_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 6, False)
        KN_BR_NEER.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
Private Sub KN_BR_STOP_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 7, True)
        KN_BR_STOP.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_BR_STOP_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 7, False)
        KN_BR_STOP.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
Private Sub KN_RESET_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(55, 0, True)
        KN_RESET.Picture = LoadPicture(CurDir & "\bmps\res_aan.bmp")
End Sub
Private Sub KN_RESET_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(55, 0, False)
        KN_RESET.Picture = LoadPicture(CurDir & "\bmps\res_uit.bmp")
End Sub
Private Sub KN_ASB_openen_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(52, 4, True)
        KN_ASB_openen.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_ASB_openen_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(52, 4, False)
        KN_ASB_openen.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
Private Sub KN_ASB_sluiten_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(52, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(53, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(53, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(53, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(53, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 4, True)
       KN_ASB_sluiten.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_ASB_sluiten_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(52, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(53, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(53, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(53, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(53, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(54, 4, False)
        KN_ASB_sluiten.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub







Private Sub NS_Click()
    If noodstop Then
        noodstop = False
        NS.Picture = LoadPicture(CurDir & "\bmps\ns_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(0, 0, True)
    Else
        noodstop = True
        NS.Picture = LoadPicture(CurDir & "\bmps\ns_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(0, 0, False)
    End If
End Sub
Private Sub SCH_SLEUTEL_Click()
    If Sleutel Then
        Sleutel = False
        SCH_SLEUTEL.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(56, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(56, 1, False)
    Else
        Sleutel = True
        SCH_SLEUTEL.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(56, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(56, 1, True)
    End If
End Sub
Private Sub kLVS_AAN_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(52, 2, True)
        kLVS_AAN.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub kLVS_AAN_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(52, 2, False)
        kLVS_AAN.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
Private Sub kLVS_UIT_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(52, 3, True)
        kLVS_UIT.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub kLVS_UIT_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(52, 3, False)
        kLVS_UIT.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub




Private Sub Timer1_Timer()
 Dim X As Integer
 Dim x1 As Integer
 Dim Y As Integer
 Dim y1 As Integer
 Dim z As Integer
 Dim z1 As Integer
 
 
 

 '   ReturnValue = S7ProSimX.WriteInputImage(624, vData)
    
 '   ReturnValue = S7ProSimX.ReadOuputImage(604, 2, S7Byte, vData)
 '   waardeI = vData
 '   Label2.Caption = waardeI(0)
    
    ReturnValue = S7ProSimX.ReadOuputImage(604, 1, S7Word, vData)
    Pos_y(0) = vData(0)
    Label3.Caption = Pos_y(0)
    
    ReturnValue = S7ProSimX.ReadOuputImage(612, 1, S7Word, vData)
    Pos_z(0) = vData(0)
    Label4.Caption = Pos_z(0)
    
    
    ReturnValue = S7ProSimX.ReadOuputImage(608, 1, S7Word, vData)
    Pos_x(0) = vData(0)
    Label2.Caption = Pos_x(0)
    
    X = Pos_x(0) * 10
    x1 = Pos_x1(0) * 10
    Y = Pos_y(0) * 10
    y1 = Pos_y1(0) * 10
    z = Pos_z(0) * 10
    z1 = Pos_z1(0) * 10
    
    Line (200 + x1, 1500 - y1)-(200 + X, 1500 - Y), vbBlack
    Line (200 + x1, 2500 - z1)-(200 + X, 2500 - z), vbBlack

    Pos_y1(0) = Pos_y(0)
    Pos_z1(0) = Pos_z(0)
    Pos_x1(0) = Pos_x(0)

    If Pos_Br1 < 100 Then
        Pos_Br1 = 100
    End If
        
    If Pos_Br2 < 100 Then
        Pos_Br2 = 100
    End If


 'Simulatie AAN
        ReturnValue = S7ProSimX.WriteInputPoint(43, 0, True)
'opnemers cilinder beweging PS1
    If opPS1.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(100, 5, True)
        opPS1.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(100, 5, False)
        opPS1.BackColor = vbRed
    End If
'opnemers cilinder beweging PS1
    If opPS11.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(101, 2, True)
        opPS11.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(101, 2, False)
        opPS11.BackColor = vbRed
    End If
'opnemers druk olie PS5
    If opPS5.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(101, 0, True)
        opPS5.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(101, 0, False)
        opPS5.BackColor = vbRed
    End If
'opnemers  PS7
    If opPS7.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(101, 1, True)
        opPS7.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(101, 1, False)
        opPS7.BackColor = vbRed
    End If
'opnemer HD1 NEER 1
    If oHD1_NEER1.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 3, True)
        oHD1_NEER1.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 3, False)
        oHD1_NEER1.BackColor = vbRed
    End If
'opnemer HD1 NEER 2
    If oHD1_NEER2.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 4, True)
        oHD1_NEER2.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 4, False)
        oHD1_NEER2.BackColor = vbRed
    End If
'opnemers brug OP
    If oHD1_OP.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 5, True)
        oHD1_OP.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 5, False)
        oHD1_OP.BackColor = vbRed
    End If
'opnemer HD2 NEER 1
    If oHD2_NEER1.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 0, True)
        oHD2_NEER1.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 0, False)
        oHD2_NEER1.BackColor = vbRed
    End If
'opnemer HD2 NEER 2
    If oHD2_NEER2.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 2, True)
        oHD2_NEER2.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 2, False)
        oHD2_NEER2.BackColor = vbRed
    End If
'opnemer HD2 OP
    If oHD2_OP.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 3, True)
        oHD2_OP.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 3, False)
        oHD2_OP.BackColor = vbRed
    End If

'KLEPPEN HD
'klep v01-Y1
    ReturnValue = S7ProSimX.ReadOutputPoint(112, 0, S7_Bit, Data)
    If Data Then
        V01_1.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V01_1.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v01-Y2
    ReturnValue = S7ProSimX.ReadOutputPoint(112, 1, S7_Bit, Data)
    If Data Then
        V01_2.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V01_2.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v03
    ReturnValue = S7ProSimX.ReadOutputPoint(112, 2, S7_Bit, Data)
    If Data Then
        V03.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V03.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v13
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 2, S7_Bit, Data)
    If Data Then
        V13.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V13.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v04
    ReturnValue = S7ProSimX.ReadOutputPoint(112, 3, S7_Bit, Data)
    If Data Then
        V04.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V04.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v05-Y6
    ReturnValue = S7ProSimX.ReadOutputPoint(112, 4, S7_Bit, Data)
    If Data Then
        V05_6.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V05_6.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v05-Y7
    ReturnValue = S7ProSimX.ReadOutputPoint(112, 5, S7_Bit, Data)
    If Data Then
        V05_7.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V05_7.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v06-Y8
    ReturnValue = S7ProSimX.ReadOutputPoint(112, 6, S7_Bit, Data)
    If Data Then
        V06_8.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V06_8.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v06-Y9
    ReturnValue = S7ProSimX.ReadOutputPoint(112, 7, S7_Bit, Data)
    If Data Then
        V06_9.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V06_9.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v11-11
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 0, S7_Bit, Data)
    If Data Then
        V11_11.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V11_11.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v11-Y12
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 1, S7_Bit, Data)
    If Data Then
        V11_12.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V11_12.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v15-16
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 4, S7_Bit, Data)
    If Data Then
        V15_16.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V15_16.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v15-Y17
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 5, S7_Bit, Data)
    If Data Then
        V15_17.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V15_17.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v16-18
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 4, S7_Bit, Data)
    If Data Then
        V16_18.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V16_18.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep v16-Y19
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 5, S7_Bit, Data)
    If Data Then
        V16_19.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        V16_19.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If



'SIGNAAL lamp SE1-1
    ReturnValue = S7ProSimX.ReadOutputPoint(114, 0, S7_Bit, Data)
    If Data Then
        SE1_1.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        SE1_1.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
'SIGNAAL lamp SE1-1
    ReturnValue = S7ProSimX.ReadOutputPoint(114, 1, S7_Bit, Data)
    If Data Then
        SE1_2.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        SE1_2.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
'SIGNAAL lamp SE1-1
    ReturnValue = S7ProSimX.ReadOutputPoint(114, 2, S7_Bit, Data)
    If Data Then
        SE2_1.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        SE2_1.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
'SIGNAAL lamp SE1-1
    ReturnValue = S7ProSimX.ReadOutputPoint(114, 3, S7_Bit, Data)
    If Data Then
        SE2_2.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        SE2_2.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
'TIJDELIJK RETARDIREN ALARM RESERVE 43.1
    ReturnValue = S7ProSimX.ReadOutputPoint(43, 0, S7_Bit, Data)
    If Data Then
        SIM.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        SIM.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
'TIJDELIJK RETARDIREN ALARM RESERVE 43.1
    ReturnValue = S7ProSimX.ReadOutputPoint(43, 1, S7_Bit, Data)
    If Data Then
        retardAL1.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        retardAL1.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
'TIJDELIJK RETARDIREN ALARM RESERVE 43.2
    ReturnValue = S7ProSimX.ReadOutputPoint(43, 2, S7_Bit, Data)
    If Data Then
        retardAL2.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        retardAL2.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
' KEUZE SCHAKELAAR AUTO-PLATSELIJK-AFSTAND
    ReturnValue = S7ProSimX.WriteInputPoint(56, 2, KEUZE_A.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(56, 4, KEUZE_N.Value)
 '  ReturnValue = S7ProSimX.WriteInputPoint(9, 5, KEUZE_'P.Value)
'LVS AAN-UIT
    ReturnValue = S7ProSimX.ReadOutputPoint(39, 3, S7_Bit, Data)
    If Data Then
        L_LVS_AAN.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        L_LVS_AAN.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If

   'Schakelaars ASB hand
    If sASB_HB.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(8, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 3, True)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 7, True)
        sASB_HB.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(8, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 3, False)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 7, False)
        sASB_HB.BackColor = vbButtonFace
   End If
   'Schakelaars ASB TH
    If sASB_TH.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(2, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 3, True)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 7, True)
        sASB_TH.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(2, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 3, False)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(2, 7, False)
        sASB_TH.BackColor = vbButtonFace
   End If
  'Schakelaars ASB WS
    If sASB_WS.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(9, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 3, True)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 7, True)
        sASB_WS.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(9, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 3, False)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(9, 7, False)
        sASB_WS.BackColor = vbButtonFace
   End If
 
    
    ReturnValue = S7ProSimX.ReadOutputPoint(650, 0, S7_Bit, Data)
    If Data Then
        STATUS_O.BackColor = vbGreen
    Else
        STATUS_O.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(650, 1, S7_Bit, Data)
    If Data Then
        STATUS_VO.BackColor = vbGreen
    Else
        STATUS_VO.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(650, 2, S7_Bit, Data)
    If Data Then
        STATUS_VVO.BackColor = vbGreen
    Else
        STATUS_VVO.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(650, 3, S7_Bit, Data)
    If Data Then
        STATUS_VVN.BackColor = vbGreen
    Else
        STATUS_VVN.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(650, 4, S7_Bit, Data)
    If Data Then
        STATUS_VN.BackColor = vbGreen
    Else
        STATUS_VN.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(650, 5, S7_Bit, Data)
    If Data Then
        STATUS_N.BackColor = vbGreen
    Else
        STATUS_N.BackColor = vbButtonFace
    End If
 End Sub

Private Sub Timer2_Timer()
    
   'Brug beweging
    ReturnValue = S7ProSimX.ReadOutputPoint(114, 0, S7_Bit, Data)
    If Data Then
        Pos_Br1 = Pos_Br1 + 10
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(114, 1, S7_Bit, Data)
    If Data Then
        Pos_Br1 = Pos_Br1 - 10
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(114, 2, S7_Bit, Data)
    If Data Then
        Pos_Br2 = Pos_Br2 + 10
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(114, 3, S7_Bit, Data)
    If Data Then
        Pos_Br2 = Pos_Br2 - 10
    End If
    SliderHD1.Value = Pos_Br1
    Sliderhd2.Value = Pos_Br2
    
    'WRITE POSITIE BRUG
    HD1(0) = Pos_Br1
    Label5.Caption = Pos_Br1
    vData = HD1
    ReturnValue = S7ProSimX.WriteInputImage(620, vData)
    HD2(0) = Pos_Br2
    Label6.Caption = Pos_Br2
    vData = HD2
    ReturnValue = S7ProSimX.WriteInputImage(624, vData)

End Sub

Private Sub TimerSIM_Timer()
    'ASB 1 openen
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 0, S7_Bit, Data)
    If Data Then
        'OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 0, True)
        sASB_OP.BackColor = vbGreen
        sASB_VOP.BackColor = vbGreen
       'Neer uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 0, False)
        sASB_NE.BackColor = vbButtonFace
        sASB_VNE.BackColor = vbButtonFace
    End If
    'ASB 1 sluiten
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 1, S7_Bit, Data)
    If Data Then
        'OP uit
        ReturnValue = S7ProSimX.WriteInputPoint(4, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 0, False)
        sASB_OP.BackColor = vbButtonFace
        sASB_VOP.BackColor = vbButtonFace
        'Neer aan
        ReturnValue = S7ProSimX.WriteInputPoint(6, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 0, True)
        sASB_NE.BackColor = vbGreen
        sASB_VNE.BackColor = vbGreen
    End If
    'ASB 2 openen
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 2, S7_Bit, Data)
    If Data Then
        'OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 1, True)
        'Neer uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 1, False)
    End If
    'ASB 2 sluiten
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 3, S7_Bit, Data)
    If Data Then
        'OP uit
        ReturnValue = S7ProSimX.WriteInputPoint(4, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 1, False)
        'Neer aan
        ReturnValue = S7ProSimX.WriteInputPoint(6, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 1, True)
    End If
    'ASB 3 openen
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 4, S7_Bit, Data)
    If Data Then
        'OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 2, True)
        'Neer uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 2, False)
    End If
    'ASB 3 sluiten
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 5, S7_Bit, Data)
    If Data Then
        'OP uit
        ReturnValue = S7ProSimX.WriteInputPoint(4, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 2, False)
        'Neer aan
        ReturnValue = S7ProSimX.WriteInputPoint(6, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 2, True)
    End If
    'ASB 4 openen
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 6, S7_Bit, Data)
    If Data Then
        'OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 3, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 3, True)
        'Neer uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 3, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 3, False)
    End If
    'ASB 4 sluiten
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 7, S7_Bit, Data)
    If Data Then
        'OP uit
        ReturnValue = S7ProSimX.WriteInputPoint(4, 3, False)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 3, False)
        'Neer aan
        ReturnValue = S7ProSimX.WriteInputPoint(6, 3, True)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 3, True)
    End If
    'ASB 5 openen
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 0, S7_Bit, Data)
    If Data Then
        'OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 4, True)
        'Neer uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 4, False)
    End If
    'ASB 5 sluiten
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 1, S7_Bit, Data)
    If Data Then
        'OP uit
        ReturnValue = S7ProSimX.WriteInputPoint(4, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 4, False)
        'Neer aan
        ReturnValue = S7ProSimX.WriteInputPoint(6, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 4, True)
    End If
    'ASB 6 openen
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 2, S7_Bit, Data)
    If Data Then
        'OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 5, True)
        'Neer uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 5, False)
    End If
    'ASB 6 sluiten
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 3, S7_Bit, Data)
    If Data Then
        'OP uit
        ReturnValue = S7ProSimX.WriteInputPoint(4, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 5, False)
        'Neer aan
        ReturnValue = S7ProSimX.WriteInputPoint(6, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 5, True)
    End If
    'ASB 7 openen
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 4, S7_Bit, Data)
    If Data Then
        'OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 6, True)
        'Neer uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 6, False)
    End If
    'ASB 7 sluiten
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 5, S7_Bit, Data)
    If Data Then
        'OP uit
        ReturnValue = S7ProSimX.WriteInputPoint(4, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 6, False)
        'Neer aan
        ReturnValue = S7ProSimX.WriteInputPoint(6, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 6, True)
    End If
    'ASB 8 openen
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 6, S7_Bit, Data)
    If Data Then
        'OP aan
        ReturnValue = S7ProSimX.WriteInputPoint(4, 7, True)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 7, True)
        'Neer uit
        ReturnValue = S7ProSimX.WriteInputPoint(6, 7, False)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 7, False)
    End If
    'ASB 8 sluiten
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 7, S7_Bit, Data)
    If Data Then
        'OP uit
        ReturnValue = S7ProSimX.WriteInputPoint(4, 7, False)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 7, False)
        'Neer aan
        ReturnValue = S7ProSimX.WriteInputPoint(6, 7, True)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 7, True)
    End If

End Sub
