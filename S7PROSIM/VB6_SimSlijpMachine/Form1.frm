VERSION 5.00
Object = "{83CC0D70-FEDA-11D1-BE76-0060B06816CF}#1.2#0"; "S7WSPSMX.OCX"
Object = "{B22FECA4-C517-11D3-81C9-00C04F72F100}#1.0#0"; "S7WSPSPX.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4995
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10710
   LinkTopic       =   "Form1"
   ScaleHeight     =   4995
   ScaleWidth      =   10710
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame7 
      Caption         =   "FO"
      Height          =   1455
      Left            =   8520
      TabIndex        =   41
      Top             =   3480
      Width           =   2175
      Begin VB.CheckBox oVent_druk 
         Caption         =   "druk"
         Height          =   255
         Left            =   960
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   480
         Width           =   615
      End
      Begin VB.CheckBox oFOtemp 
         Caption         =   "temp"
         Height          =   255
         Left            =   960
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label_SN 
         Caption         =   "60m/sec"
         Height          =   255
         Left            =   120
         TabIndex        =   42
         Top             =   240
         Width           =   735
      End
      Begin VB.Image SN60_80 
         Height          =   360
         Left            =   240
         Picture         =   "Form1.frx":0000
         Top             =   480
         Width           =   240
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Dwars / omkeren"
      Height          =   1815
      Left            =   5640
      TabIndex        =   37
      Top             =   1320
      Width           =   2775
      Begin VB.Image KLEP_terug 
         Height          =   120
         Left            =   120
         Picture         =   "Form1.frx":04C2
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image KLEP_meet 
         Height          =   120
         Left            =   720
         Picture         =   "Form1.frx":0684
         Top             =   1560
         Width           =   240
      End
      Begin VB.Label Label_dw 
         Caption         =   "HAND"
         Height          =   255
         Left            =   120
         TabIndex        =   40
         Top             =   360
         Width           =   495
      End
      Begin VB.Image SCH_DW_auto 
         Height          =   360
         Left            =   240
         Picture         =   "Form1.frx":0846
         Top             =   600
         Width           =   240
      End
      Begin VB.Label kuku 
         Caption         =   "terug - meetpos."
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   39
         Top             =   1320
         Width           =   1335
      End
      Begin VB.Image joiM 
         Height          =   240
         Left            =   1680
         Picture         =   "Form1.frx":0D08
         Top             =   720
         Width           =   240
      End
      Begin VB.Image joiR 
         Height          =   240
         Left            =   1440
         Picture         =   "Form1.frx":114A
         Top             =   720
         Width           =   240
      End
      Begin VB.Image joiL 
         Height          =   240
         Left            =   1920
         Picture         =   "Form1.frx":158C
         Top             =   720
         Width           =   240
      End
      Begin VB.Image joiO 
         Height          =   240
         Left            =   1680
         Picture         =   "Form1.frx":19CE
         Top             =   960
         Width           =   240
      End
      Begin VB.Image joiB 
         Height          =   240
         Left            =   1680
         Picture         =   "Form1.frx":1E10
         Top             =   480
         Width           =   240
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Meting steenwiel"
      Height          =   1095
      Left            =   3240
      TabIndex        =   32
      Top             =   120
      Width           =   2295
      Begin VB.Image KlepKopNeer 
         Height          =   120
         Left            =   1920
         Picture         =   "Form1.frx":2252
         Top             =   360
         Width           =   240
      End
      Begin VB.Image Klep_lenz 
         Height          =   120
         Left            =   1920
         Picture         =   "Form1.frx":2414
         Top             =   720
         Width           =   240
      End
      Begin VB.Label Label1 
         Caption         =   "foto"
         Height          =   255
         Index           =   10
         Left            =   1815
         TabIndex        =   36
         Top             =   480
         Width           =   375
      End
      Begin VB.Label Label1 
         Caption         =   "neer"
         Height          =   255
         Index           =   9
         Left            =   1815
         TabIndex        =   35
         Top             =   120
         Width           =   375
      End
      Begin VB.Image KN_METEN 
         Height          =   240
         Left            =   720
         Picture         =   "Form1.frx":25D6
         Top             =   600
         Width           =   240
      End
      Begin VB.Label Label_KOP 
         Caption         =   "HAND"
         Height          =   255
         Left            =   120
         TabIndex        =   34
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "Meet"
         Height          =   255
         Index           =   7
         Left            =   720
         TabIndex        =   33
         Top             =   240
         Width           =   375
      End
      Begin VB.Image SCH_MET_AUTO 
         Height          =   360
         Left            =   240
         Picture         =   "Form1.frx":2918
         Top             =   480
         Width           =   240
      End
   End
   Begin VB.Timer Timer5 
      Left            =   7680
      Top             =   3840
   End
   Begin VB.PictureBox KOPV 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   300
      Left            =   5160
      Picture         =   "Form1.frx":2DDA
      ScaleHeight     =   300
      ScaleWidth      =   150
      TabIndex        =   30
      Top             =   3440
      Width           =   150
   End
   Begin VB.Frame Frame4 
      Caption         =   "Kantelen / klemmen"
      Height          =   1815
      Left            =   120
      TabIndex        =   22
      Top             =   1320
      Width           =   2415
      Begin VB.CheckBox oKAdruk 
         Caption         =   "druk"
         Height          =   255
         Left            =   720
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   840
         Width           =   615
      End
      Begin VB.CheckBox oKAtemp 
         Caption         =   "temp"
         Height          =   255
         Left            =   720
         Style           =   1  'Graphical
         TabIndex        =   25
         Top             =   600
         Width           =   615
      End
      Begin VB.CheckBox oKAolie 
         Caption         =   "olie"
         Height          =   255
         Left            =   720
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   360
         Width           =   615
      End
      Begin VB.Image TAom 
         Height          =   120
         Left            =   1200
         Picture         =   "Form1.frx":313C
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image L_KA_auto 
         Height          =   240
         Left            =   240
         Picture         =   "Form1.frx":32FE
         Top             =   240
         Width           =   240
      End
      Begin VB.Image TAontkl 
         Height          =   120
         Left            =   2040
         Picture         =   "Form1.frx":3740
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image TAkl 
         Height          =   120
         Left            =   1680
         Picture         =   "Form1.frx":3902
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image TAneer 
         Height          =   120
         Left            =   480
         Picture         =   "Form1.frx":3AC4
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image TAop 
         Height          =   120
         Left            =   120
         Picture         =   "Form1.frx":3C86
         Top             =   1560
         Width           =   240
      End
      Begin VB.Label Label11 
         Caption         =   "om -    kl - ontkl"
         Height          =   255
         Left            =   1200
         TabIndex        =   28
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label10 
         Caption         =   "op - neer"
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label_KA 
         Caption         =   "HAND"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   600
         Width           =   495
      End
      Begin VB.Image SCH_KA_AUTO 
         Height          =   360
         Left            =   240
         Picture         =   "Form1.frx":3E48
         Top             =   840
         Width           =   240
      End
      Begin VB.Image joiB1 
         Height          =   240
         Left            =   1800
         Picture         =   "Form1.frx":430A
         Top             =   360
         Width           =   240
      End
      Begin VB.Image joiO1 
         Height          =   240
         Left            =   1800
         Picture         =   "Form1.frx":474C
         Top             =   840
         Width           =   240
      End
      Begin VB.Image joiL1 
         Height          =   240
         Left            =   2040
         Picture         =   "Form1.frx":4B8E
         Top             =   600
         Width           =   240
      End
      Begin VB.Image joiR1 
         Height          =   240
         Left            =   1560
         Picture         =   "Form1.frx":4FD0
         Top             =   600
         Width           =   240
      End
      Begin VB.Image joiM1 
         Height          =   240
         Left            =   1800
         Picture         =   "Form1.frx":5412
         Top             =   600
         Width           =   240
      End
   End
   Begin VB.Frame Frame3 
      Height          =   1095
      Left            =   120
      TabIndex        =   17
      Top             =   120
      Width           =   3015
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "AF"
         Height          =   195
         Index           =   3
         Left            =   2040
         TabIndex        =   21
         Top             =   120
         Width           =   195
      End
      Begin VB.Image L_AF 
         Height          =   240
         Left            =   2040
         Picture         =   "Form1.frx":5854
         Top             =   360
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "SL"
         Height          =   195
         Index           =   2
         Left            =   1560
         TabIndex        =   20
         Top             =   120
         Width           =   195
      End
      Begin VB.Image L_SL 
         Height          =   240
         Left            =   1560
         Picture         =   "Form1.frx":5C96
         Top             =   360
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "HD"
         Height          =   195
         Index           =   1
         Left            =   1080
         TabIndex        =   19
         Top             =   120
         Width           =   240
      End
      Begin VB.Image L_HD 
         Height          =   240
         Left            =   1080
         Picture         =   "Form1.frx":60D8
         Top             =   360
         Width           =   240
      End
      Begin VB.Image L_SP 
         Height          =   240
         Left            =   600
         Picture         =   "Form1.frx":651A
         Top             =   360
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "span."
         Height          =   195
         Index           =   4
         Left            =   480
         TabIndex        =   18
         Top             =   120
         Width           =   390
      End
      Begin VB.Image SCH_AF 
         Height          =   360
         Left            =   2040
         Picture         =   "Form1.frx":695C
         Top             =   600
         Width           =   240
      End
      Begin VB.Image SCH_SL 
         Height          =   360
         Left            =   1560
         Picture         =   "Form1.frx":6E1E
         Top             =   600
         Width           =   240
      End
      Begin VB.Image SCH_HD 
         Height          =   360
         Left            =   1080
         Picture         =   "Form1.frx":72E0
         Top             =   600
         Width           =   240
      End
      Begin VB.Image SPAAN 
         Height          =   360
         Left            =   600
         Picture         =   "Form1.frx":77A2
         Top             =   600
         Width           =   240
      End
      Begin VB.Image KN_RES 
         Height          =   240
         Left            =   2520
         Picture         =   "Form1.frx":7C64
         Top             =   360
         Width           =   240
      End
      Begin VB.Image NS 
         Height          =   240
         Left            =   120
         Picture         =   "Form1.frx":7FA6
         Top             =   360
         Width           =   240
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Slijpkop"
      Height          =   1095
      Left            =   5640
      TabIndex        =   14
      Top             =   120
      Width           =   2775
      Begin VB.Shape POWCO_5 
         BackStyle       =   1  'Opaque
         FillColor       =   &H0000C0C0&
         Height          =   135
         Left            =   840
         Top             =   920
         Width           =   135
      End
      Begin VB.Shape POWCO_4 
         BackStyle       =   1  'Opaque
         FillColor       =   &H0000C0C0&
         Height          =   135
         Left            =   720
         Top             =   920
         Width           =   135
      End
      Begin VB.Shape POWCO_3 
         BackStyle       =   1  'Opaque
         FillColor       =   &H0000C0C0&
         Height          =   135
         Left            =   600
         Top             =   920
         Width           =   135
      End
      Begin VB.Shape POWCO_2 
         BackStyle       =   1  'Opaque
         FillColor       =   &H0000C0C0&
         Height          =   135
         Left            =   480
         Top             =   920
         Width           =   135
      End
      Begin VB.Shape POWCO_1 
         BackStyle       =   1  'Opaque
         FillColor       =   &H0000C0C0&
         Height          =   135
         Left            =   360
         Top             =   920
         Width           =   135
      End
      Begin VB.Shape POWCO_0 
         BackStyle       =   1  'Opaque
         FillColor       =   &H0000C0C0&
         Height          =   135
         Left            =   240
         Top             =   920
         Width           =   135
      End
      Begin VB.Image SCH_VERM 
         Height          =   360
         Left            =   1200
         Picture         =   "Form1.frx":82E8
         Top             =   480
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "vermogen"
         Height          =   195
         Index           =   8
         Left            =   960
         TabIndex        =   16
         Top             =   240
         Width           =   705
      End
      Begin VB.Image KN_SLOPNEER 
         Height          =   240
         Left            =   360
         Picture         =   "Form1.frx":87AA
         Top             =   600
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "op/neer"
         Height          =   195
         Index           =   6
         Left            =   240
         TabIndex        =   15
         Top             =   240
         Width           =   570
      End
   End
   Begin VB.Timer Timer4 
      Interval        =   100
      Left            =   7320
      Top             =   3480
   End
   Begin VB.Timer Timer3 
      Left            =   7680
      Top             =   3480
   End
   Begin VB.Timer Timer2 
      Left            =   7680
      Top             =   3120
   End
   Begin VB.CommandButton Command2 
      Caption         =   "LD"
      Height          =   375
      Left            =   10200
      TabIndex        =   2
      Top             =   120
      Width           =   375
   End
   Begin S7WSPSPXLib.S7ProSimPanel S7ProSimPanel 
      Height          =   3390
      Left            =   8520
      TabIndex        =   1
      Top             =   120
      Width           =   2250
      _Version        =   65536
      _ExtentX        =   3969
      _ExtentY        =   5980
      _StockProps     =   0
   End
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   7320
      Top             =   3120
   End
   Begin VB.PictureBox tafel 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   240
      Left            =   0
      Picture         =   "Form1.frx":8AEC
      ScaleHeight     =   240
      ScaleWidth      =   3000
      TabIndex        =   0
      Top             =   4680
      Width           =   3000
   End
   Begin VB.PictureBox staf 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   120
      Left            =   0
      Picture         =   "Form1.frx":BD2E
      ScaleHeight     =   120
      ScaleWidth      =   2250
      TabIndex        =   3
      Top             =   4580
      Width           =   2250
   End
   Begin VB.Frame Frame1 
      Caption         =   "Tafel rijden"
      Height          =   1815
      Left            =   2640
      TabIndex        =   9
      Top             =   1320
      Width           =   2895
      Begin VB.Label LabelSN 
         Caption         =   "snelheid"
         Height          =   255
         Left            =   360
         TabIndex        =   45
         Top             =   240
         Width           =   615
      End
      Begin VB.Image KLEP_R 
         Height          =   120
         Left            =   2040
         Picture         =   "Form1.frx":D030
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image KLEP_L 
         Height          =   120
         Left            =   2400
         Picture         =   "Form1.frx":D1F2
         Top             =   1560
         Width           =   240
      End
      Begin VB.Label Label14 
         Caption         =   "rechts-links"
         Height          =   255
         Left            =   1920
         TabIndex        =   44
         Top             =   1320
         Width           =   855
      End
      Begin VB.Image K411 
         Height          =   120
         Left            =   600
         Picture         =   "Form1.frx":D3B4
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image K410 
         Height          =   120
         Left            =   120
         Picture         =   "Form1.frx":D576
         Top             =   1560
         Width           =   240
      End
      Begin VB.Label KLEP410 
         Caption         =   "K410 K411"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   29
         Top             =   1320
         Width           =   975
      End
      Begin VB.Image L_LP 
         Height          =   240
         Left            =   2280
         Picture         =   "Form1.frx":D738
         Top             =   240
         Width           =   240
      End
      Begin VB.Image L_TR 
         Height          =   240
         Left            =   1320
         Picture         =   "Form1.frx":DB7A
         Top             =   240
         Width           =   240
      End
      Begin VB.Image SCH_RIJ_auto 
         Height          =   360
         Left            =   360
         Picture         =   "Form1.frx":DFBC
         Top             =   840
         Width           =   240
      End
      Begin VB.Image KN_RIJDEN 
         Height          =   240
         Left            =   1080
         Picture         =   "Form1.frx":E47E
         Top             =   960
         Width           =   240
      End
      Begin VB.Label Label_HA 
         Caption         =   "HAND"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "AAN"
         Height          =   255
         Index           =   0
         Left            =   1080
         TabIndex        =   12
         Top             =   600
         Width           =   375
      End
      Begin VB.Image KN_LADEN 
         Height          =   240
         Left            =   2280
         Picture         =   "Form1.frx":E7C0
         Top             =   960
         Width           =   240
      End
      Begin VB.Label Label5 
         Caption         =   "Transp."
         Height          =   255
         Left            =   2160
         TabIndex        =   11
         Top             =   600
         Width           =   495
      End
      Begin VB.Image KN_NIETUIT 
         Height          =   240
         Left            =   1680
         Picture         =   "Form1.frx":EB02
         Top             =   960
         Width           =   240
      End
      Begin VB.Label Label6 
         Caption         =   "UIT"
         Height          =   255
         Left            =   1680
         TabIndex        =   10
         Top             =   600
         Width           =   375
      End
   End
   Begin VB.Shape BZ_7 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   1920
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape BZ_6 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   1680
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape BZ_5 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   1440
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape BZ_4 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   1200
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape BZ_3 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   840
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape BZ_2 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   600
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape BZ_1 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   360
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape BZ_0 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   120
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape VR_7 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   1920
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape VR_6 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   1680
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape VR_5 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   1440
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape VR_4 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   1200
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape VR_3 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   840
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape VR_2 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   600
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape VR_1 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   360
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape VR_0 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   120
      Top             =   3480
      Width           =   255
   End
   Begin VB.Label Label4 
      Caption         =   "Label12"
      Height          =   255
      Left            =   5880
      TabIndex        =   38
      Top             =   3360
      Width           =   495
   End
   Begin VB.Shape DWARS_MEET_POS 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   5400
      Top             =   3240
      Width           =   135
   End
   Begin VB.Shape DWARS_TERUG 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   4680
      Top             =   3240
      Width           =   135
   End
   Begin VB.Label Label12 
      Caption         =   "Label12"
      Height          =   255
      Left            =   5880
      TabIndex        =   31
      Top             =   3840
      Width           =   495
   End
   Begin VB.Shape KOP_oB 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   5640
      Top             =   3600
      Width           =   135
   End
   Begin VB.Shape KOP_oF 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   5640
      Top             =   3960
      Width           =   135
   End
   Begin VB.Shape EIND_LINKS 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C000&
      Height          =   135
      Left            =   8280
      Top             =   4440
      Width           =   135
   End
   Begin VB.Shape FOTO_L 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   6000
      Top             =   4440
      Width           =   135
   End
   Begin VB.Label Label9 
      Caption         =   "FS2"
      Height          =   255
      Left            =   5880
      TabIndex        =   8
      Top             =   4200
      Width           =   375
   End
   Begin VB.Label Label7 
      Caption         =   "L"
      Height          =   255
      Left            =   8280
      TabIndex        =   6
      Top             =   4200
      Width           =   135
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   4200
      Width           =   495
   End
   Begin VB.Shape EIND_RECHTS 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C000&
      Height          =   135
      Left            =   0
      Top             =   4440
      Width           =   135
   End
   Begin VB.Shape OP_LAAD 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C000&
      Height          =   135
      Left            =   300
      Top             =   4440
      Width           =   135
   End
   Begin VB.Shape FOTO_R 
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000C0C0&
      Height          =   135
      Left            =   4005
      Top             =   4440
      Width           =   135
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
   Begin VB.Label Label8 
      Caption         =   "FS1"
      Height          =   255
      Left            =   3900
      TabIndex        =   7
      Top             =   4200
      Width           =   375
   End
   Begin VB.Label Label3 
      Caption         =   "R-Laad"
      Height          =   255
      Left            =   0
      TabIndex        =   5
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label13 
      Caption         =   "dr  me  ka  tf     kl  dw   la  uld"
      Height          =   255
      Left            =   120
      TabIndex        =   43
      Top             =   3240
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command2_Click()
    FormLD.Show
End Sub

Private Sub Form_Load()
    ''MsgBox "The current directory is " & CurDir
    SPAAN.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
    NS.Picture = LoadPicture(CurDir & "\bmps\ns_uit.bmp")
    Form1.Caption = "Moving Controls: Select and drag an object"
    mMove.Initialize Timer2
    mMoveS.Initialize Timer3
    mMoveK.Initialize Timer5
    
    '' bedieningspaneel
    SpanAan = False
    noodstop1 = False
    noodstop2 = False
    HDmotoren = False
    SLmotor = False
    AFmotor = False
    
    joiRecht = False
    joiLinks = False
    joiBoven = False
    joiOnder = False
    
    joi2Recht = False
    joi2Links = False
    joi2Boven = False
    joi2Onder = False
    
    'uitladen
    UitladenAuto = False
    
    'Tafel
    tafel.Left = 80
    staf.Left = 80
    FOTO_L.Left = 6000
    FOTO_R.Left = 4000
    TFhandauto = False
    StafOpTafel = True
    Label_HA.Caption = "HAND"
    
    'kantelen en klemmen
    KAhandauto = False
    oKAolie = False
    oKAtemp = 1
    oKAdruk = False
    
    'dwars
    DWhandauto = False
    
    'simulatie
    ReturnValue = S7ProSimX.WriteInputPoint(3, 3, True)
    
    'KOP
    KOPhandauto = False
    BASISkopVb = KOP_oB.Left
    LengteKop = 160
    LengteKop2 = 80
    
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

Private Sub KN_MET_Click()
        ReturnValue = S7ProSimX.WriteInputPoint(7, 1, True)
        KN_RIJDEN.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")

End Sub

''knop reset
Private Sub KN_RES_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 0, True)
        KN_RES.Picture = LoadPicture(CurDir & "\bmps\res_aan.bmp")
End Sub
Private Sub KN_RES_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(5, 0, False)
        KN_RES.Picture = LoadPicture(CurDir & "\bmps\res_uit.bmp")
End Sub

'' noodstop AAN
Private Sub NS_Click()
    If noodstop Then
        noodstop = False
        NS.Picture = LoadPicture(CurDir & "\bmps\ns_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 0, False)
    Else
        noodstop = True
        NS.Picture = LoadPicture(CurDir & "\bmps\ns_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 0, True)
    End If
End Sub

Private Sub SCH_AF_Click()
''AFzuiging niet stoppen
    If AFmotor Then
        AFmotor = False
        SCH_AF.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 6, False)
    Else
        AFmotor = True
        SCH_AF.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 6, True)
    End If
End Sub
'keuze 60-80m/sec
Private Sub SN60_80_Click()
    If Keuze6080 Then
        Keuze6080 = False
    Else
        Keuze6080 = True
    End If
End Sub
''schak. dwars hand/auto
Private Sub SCH_DW_auto_Click()
    If DWhandauto Then
        DWhandauto = False
    Else
        DWhandauto = True
    End If
End Sub

''hyd. motoren start / niet stopen
Private Sub SCH_HD_Click()
    If HDmotoren Then
        HDmotoren = False
        SCH_HD.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 3, True)
    Else
        HDmotoren = True
        SCH_HD.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 3, False)
    End If
End Sub


''slijp motor start / niet stoppen
Private Sub SCH_SL_Click()
    If SLmotor Then
        SLmotor = False
    Else
        SLmotor = True
    End If

End Sub

''spanning aan
Private Sub SPAAN_Click()
    If SpanAan Then
        SpanAan = False
    Else
        SpanAan = True
    End If
End Sub
''knop slijpkop op / neer
Private Sub KN_SLOPNEER_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 0, True)
        KN_SLOPNEER.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_SLOPNEER_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(6, 0, False)
        KN_SLOPNEER.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub

''gereduceerd slijpvermogen tafel omkeerpunt
Private Sub SCH_VERM_Click()
    If Verm Then
        Verm = False
        SCH_VERM.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(6, 1, False)
    Else
        Verm = True
        SCH_VERM.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(6, 1, True)
    End If
End Sub
'kantelen auto
Private Sub SCH_KA_AUTO_Click()
    If KAhandauto Then
        KAhandauto = False
    Else
        KAhandauto = True
    End If
End Sub
'RIJDEN AUTO
Private Sub SCH_RIJ_auto_Click()
    If TFhandauto Then
        TFhandauto = False
    Else
        TFhandauto = True
    End If
End Sub
'METEN KOP AUTO
Private Sub SCH_MET_AUTO_Click()
    If KOPhandauto Then
        KOPhandauto = False
    Else
        KOPhandauto = True
    End If

End Sub
''knop niet uit tafel
Private Sub KN_NIETUIT_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 2, True)
        KN_NIETUIT.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_NIETUIT_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 2, False)
        KN_NIETUIT.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
''knop laden
Private Sub KN_LADEN_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 3, True)
        KN_LADEN.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_LADEN_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 3, False)
        KN_LADEN.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
''knop METEN
Private Sub KN_METEN_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 4, True)
        KN_METEN.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_METEN_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 4, False)
        KN_METEN.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
''knop rijden
Private Sub KN_RIJDEN_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 1, True)
        KN_RIJDEN.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_RIJDEN_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX.WriteInputPoint(7, 1, False)
        KN_RIJDEN.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
Private Sub Timer2_Timer()
    mMove.ToNewPosition
End Sub
Private Sub Timer3_Timer()
    mMoveS.ToNewPosition
End Sub
Private Sub Timer5_Timer()
    mMoveK.ToNewPosition
End Sub
Private Sub tafel_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMove.Begin Me.ActiveControl, X, Y
End Sub
Private Sub tafel_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMove.InProgress X, Y
End Sub
Private Sub tafel_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMove.EndIt
End Sub
Private Sub staf_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMoveS.Begin Me.ActiveControl, X, Y
End Sub
Private Sub staf_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMoveS.InProgress X, Y
End Sub
Private Sub staf_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMoveS.EndIt
End Sub
Private Sub KOPV_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMoveK.Begin Me.ActiveControl, X, Y
End Sub
Private Sub KOPV_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMoveK.InProgress X, Y
End Sub
Private Sub KOPV_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then mMoveK.EndIt
End Sub
Private Sub Timer4_Timer()
    Dim stafY As Integer
'staf
    stafY = tafel.Top - staf.Top
 'verplatsen knuppel
    If stafY > 0 And stafY < 120 Then
        staf.Left = tafel.Left
        StafOpTafel = True
    Else
        StafOpTafel = False
    End If


'RIJDEN TAFEL
    ReturnValue = S7ProSimX.ReadOutputPoint(40, 4, S7_Bit, Data)
    If Data Then
        If SN1 = True Then
            tafel.Left = tafel.Left + 5
            LabelSN.Caption = "langzam"
        ElseIf SN3 = True Then
            tafel.Left = tafel.Left + 30
            LabelSN.Caption = "transport"
        Else
            tafel.Left = tafel.Left + 10
            LabelSN.Caption = "slijpen"
        End If
        KLEP_L.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        KLEP_L.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(40, 5, S7_Bit, Data)
    If Data Then
        If SN1 = True Then
            tafel.Left = tafel.Left - 5
            LabelSN.Caption = "transport"
        ElseIf SN3 = True Then
            tafel.Left = tafel.Left - 30
            LabelSN.Caption = "transport"
        Else
            tafel.Left = tafel.Left - 10
            LabelSN.Caption = "slijpen"
            End If
        KLEP_R.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        KLEP_R.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If

    
    
  'WRITE POSITIE TAFEL
    PosI(0) = tafel.Left
    Label2.Caption = PosI(0)
    vData = PosI
    ReturnValue = S7ProSimX.WriteInputImage(624, vData)
    
    
    If (Meting Or KopNeer) Then
        If SlijpContact = False Then
            KOPV.Top = KOPV.Top + 5
        End If
    Else
        If KOPV.Top > (KOP_oB.Top - LengteKop) Then
            'If KOPV.Left > DWARS_TERUG.Left Then
                KOPV.Top = KOPV.Top - 5
            'End If
        End If
    End If
    
    
    'klep naar meetpositie
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 6, S7_Bit, Data)
    If Data Then
        KLEP_meet.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
        KOPV.Left = KOPV.Left + 5
    Else
        KLEP_meet.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
   'klep terug van meetpositie
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 5, S7_Bit, Data)
    If Data Then
        KLEP_terug.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
        KOPV.Left = KOPV.Left - 5
    Else
        KLEP_terug.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If

 'WRITE POSITIE KOP vertical
    PosK(0) = (KOPV.Top - KOP_oB.Top + LengteKop) / 5
    Label12.Caption = PosK(0)
    kData = PosK
    ReturnValue = S7ProSimX.WriteInputImage(620, kData)

End Sub
Private Sub Timer1_Timer()
    Dim ReturnValue As Long
    Dim Data As Variant
    Dim vData As Variant
  
    
    
'stuurspanning AAN
    If SpanAan Then
        SPAAN.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 1, False)
    Else
        SPAAN.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 1, True)
    End If

'slijp motor aan - uit
    If SLmotor Then
        SCH_SL.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 5, True)
    Else
        SCH_SL.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(4, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(4, 5, False)
    End If
'FO klaar
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 6, S7_Bit, Data)
    If Data Then
        ReturnValue = S7ProSimX.WriteInputPoint(2, 0, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(2, 0, False)
    End If
'FO aan
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 7, S7_Bit, Data)
    If Data Then
        ReturnValue = S7ProSimX.WriteInputPoint(2, 1, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(2, 1, False)
    End If
  'opnemers temperaturen slijp motor
    If oFOtemp.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(3, 4, False)
        ReturnValue = S7ProSimX.WriteInputPoint(3, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(3, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(3, 7, False)
        ReturnValue = S7ProSimX.WriteInputPoint(3, 0, True)
        oFOtemp.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(3, 4, True)
        ReturnValue = S7ProSimX.WriteInputPoint(3, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(3, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(3, 7, True)
        ReturnValue = S7ProSimX.WriteInputPoint(3, 0, False)
        oFOtemp.BackColor = vbGreen
    End If
  'opnemers druk ventilator
    If oVent_druk.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(16, 4, True)
        oVent_druk.BackColor = vbGroen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(16, 4, False)
        oVent_druk.BackColor = vbRed
    End If

 
 'hand-auto kantelen
    If KAhandauto Then
        SCH_KA_AUTO.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(8, 0, False)
        Label_KA.Caption = "HAND"
    Else
        SCH_KA_AUTO.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(8, 0, True)
        Label_KA.Caption = "AUTO"
    End If
  'lamp kantelen auto
      ReturnValue = S7ProSimX.ReadOutputPoint(28, 6, S7_Bit, Data)
    If Data Then
       L_KA_auto.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
       L_KA_auto.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
  'opnemers kantelen
    If oKAolie.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(13, 6, True)
        oKAolie.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(13, 6, False)
        oKAolie.BackColor = vbGreen
    End If
    If oKAtemp.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(13, 7, True)
        oKAtemp.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(13, 7, False)
        oKAtemp.BackColor = vbRed
    End If
    'uit door simulatie
'    If oKAdruk.Value = 1 Then
'        ReturnValue = S7ProSimX.WriteInputPoint(13, 4, True)
'        oKAdruk.BackColor = vbGreen
'    Else
'        ReturnValue = S7ProSimX.WriteInputPoint(13, 4, False)
'        oKAdruk.BackColor = vbRed
'    End If
 'kleppen kantelen
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 2, S7_Bit, Data)
    If Data Then
        TAop.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        TAop.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 3, S7_Bit, Data)
    If Data Then
        TAneer.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        TAneer.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
  'kleppen klemmen
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 0, S7_Bit, Data)
    If Data Then
        TAkl.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        TAkl.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 1, S7_Bit, Data)
    If Data Then
        TAontkl.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        TAontkl.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
  'klep omloop
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 4, S7_Bit, Data)
    If Data Then
        TAom.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        TAom.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
  'simulatie druk klemmen
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 0, S7_Bit, Data)
    If Data Then
        'TAom.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(13, 4, True)
        oKAdruk.BackColor = vbGreen
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 1, S7_Bit, Data)
    If Data Then
        'TAom.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(13, 4, False)
        oKAdruk.BackColor = vbRed
   End If
 
 'keuze 60-80m/sec
     If Keuze6080 Then
        SN60_80.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(3, 1, False)
        Label_SN.Caption = "60m/sec"
    Else
        SN60_80.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(3, 1, True)
        Label_SN.Caption = "80m/sec"
    End If

 'hand-auto tafel
    If TFhandauto Then
        SCH_RIJ_auto.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(7, 0, False)
        Label_HA.Caption = "HAND"
    Else
        SCH_RIJ_auto.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(7, 0, True)
        Label_HA.Caption = "AUTO"
    End If
'lamp tafel rijden toegestaan
    ReturnValue = S7ProSimX.ReadOutputPoint(28, 5, S7_Bit, Data)
    If Data Then
        L_LP.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        L_LP.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
'lamp laad positie
    ReturnValue = S7ProSimX.ReadOutputPoint(28, 4, S7_Bit, Data)
    If Data Then
        L_TR.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        L_TR.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If

'simulatie HD motoren M2 tafel
    ReturnValue = S7ProSimX.ReadOutputPoint(36, 0, S7_Bit, Data)
    If Data Then
        ReturnValue = S7ProSimX.WriteInputPoint(0, 0, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(0, 0, False)
    End If
'simulatie HD motoren M3 druk
    ReturnValue = S7ProSimX.ReadOutputPoint(36, 1, S7_Bit, Data)
    If Data Then
        ReturnValue = S7ProSimX.WriteInputPoint(0, 1, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(0, 1, False)
    End If
'simulatie HD motoren M4 dwars
    ReturnValue = S7ProSimX.ReadOutputPoint(36, 2, S7_Bit, Data)
    If Data Then
        ReturnValue = S7ProSimX.WriteInputPoint(0, 2, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(0, 2, False)
    End If
'simulatie HD motoren M5 uitladen
    ReturnValue = S7ProSimX.ReadOutputPoint(36, 3, S7_Bit, Data)
    If Data Then
        ReturnValue = S7ProSimX.WriteInputPoint(0, 3, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(0, 3, False)
    End If
'simulatie HD motoren M6 kantelen , klemmen
    ReturnValue = S7ProSimX.ReadOutputPoint(36, 4, S7_Bit, Data)
    If Data Then
        ReturnValue = S7ProSimX.WriteInputPoint(0, 4, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(0, 4, False)
    End If
'simulatie HD motoren M7 steen wissel
    ReturnValue = S7ProSimX.ReadOutputPoint(36, 5, S7_Bit, Data)
    If Data Then
        ReturnValue = S7ProSimX.WriteInputPoint(0, 5, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(0, 5, False)
    End If

''lamp spanning AAN
    ReturnValue = S7ProSimX.ReadOutputPoint(28, 0, S7_Bit, Data)
    If Data Then
        L_SP.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        L_SP.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
''lamp hyd motoren AAN
    ReturnValue = S7ProSimX.ReadOutputPoint(28, 1, S7_Bit, Data)
    If Data Then
        L_HD.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        L_HD.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
''lamp slijp motor AAN
    ReturnValue = S7ProSimX.ReadOutputPoint(28, 2, S7_Bit, Data)
    If Data Then
        L_SL.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        L_SL.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
''lamp afzuiging aan
    ReturnValue = S7ProSimX.ReadOutputPoint(28, 3, S7_Bit, Data)
    If Data Then
        L_AF.Picture = LoadPicture(CurDir & "\bmps\gr_aan.bmp")
    Else
        L_AF.Picture = LoadPicture(CurDir & "\bmps\gr_uit.bmp")
    End If
    
'kleppen snelheid TAFEL
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 2, S7_Bit, Data)
    If Data Then
        K410.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
        SN1 = True
    Else
        K410.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
        SN1 = False
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(34, 3, S7_Bit, Data)
    If Data Then
        K411.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
        SN3 = True
    Else
        K411.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
        SN3 = False
    End If

    
   ' ReturnValue = S7ProSimX.ReadOutputImage(128, 4, S7_DoubleWord, Pos1)
   ' Label3.Caption = Pos1
 'Opnemers rechts 4000 - TAFEL 3000 knuppel 2250
    If staf.Left > 1750 And staf.Left < 4000 And StafOpTafel Then
        FOTO_R.BackColor = vbGreen
        ReturnValue = S7ProSimX.WriteInputPoint(16, 7, True)
    Else
        FOTO_R.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(16, 7, False)
    End If
 'Opnemers links 6000 - TAFEL 3000
    If staf.Left > 3750 And staf.Left < 6000 And StafOpTafel Then
        FOTO_L.BackColor = vbGreen
        ReturnValue = S7ProSimX.WriteInputPoint(16, 6, True)
    Else
        FOTO_L.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(16, 6, False)
    End If
 'Opnemers laad
    If tafel.Left < 300 Then
        OP_LAAD.BackColor = vbGreen
        ReturnValue = S7ProSimX.WriteInputPoint(14, 2, True)
    Else
        OP_LAAD.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(14, 2, False)
    End If
 'Opnemers eind links 8280 - 3000
    If staf.Left > 5280 Then
        EIND_LINKS.BackColor = vbRed
        ReturnValue = S7ProSimX.WriteInputPoint(14, 3, True)
    Else
        EIND_LINKS.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(14, 3, False)
    End If
 'Opnemers eind RECHTS
    If staf.Left < 50 Then
        EIND_RECHTS.BackColor = vbRed
        ReturnValue = S7ProSimX.WriteInputPoint(14, 1, True)
    Else
        EIND_RECHTS.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(14, 1, False)
    End If

 'Opnemers KOP BOVEN
    If KOPV.Top <= (KOP_oB.Top - LengteKop) Then
        KOP_oB.BackColor = vbGreen
        ReturnValue = S7ProSimX.WriteInputPoint(11, 5, True)
    Else
        KOP_oB.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(11, 5, False)
    End If
 'Opnemers KOP FOTO
    If KOPV.Top >= (KOP_oF.Top - LengteKop) Then
        KOP_oF.BackColor = vbGreen
        ReturnValue = S7ProSimX.WriteInputPoint(11, 7, True)
    Else
        KOP_oF.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(11, 7, False)
    End If
 'klep lenzen
    ReturnValue = S7ProSimX.ReadOutputPoint(38, 7, S7_Bit, Data)
    If Data Then
        Klep_lenz.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        Klep_lenz.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
  '----------------------------------------------------
  'druk regeling
    If KOPV.Top >= (staf.Top - (2 * LengteKop) + 20) Then
       ReturnValue = S7ProSimX.WriteInputPoint(2, 4, True)
       SlijpContact = True
    Else
       ReturnValue = S7ProSimX.WriteInputPoint(2, 4, False)
       SlijpContact = False
    End If
  'simulatie druk neer beweging
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 0, S7_Bit, Data)
    If Data Then
        KopNeer = True
    Else
        KopNeer = False
    End If
 '------------------------------------------------------
 'klep kop neer en simulatie beweging kop
    ReturnValue = S7ProSimX.ReadOutputPoint(40, 1, S7_Bit, Data)
    If (Data Or KopNeer) Then
        KlepKopNeer.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
        Meting = True
    Else
        KlepKopNeer.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
        Meting = False
    End If
    
    
    
 '------------------------------------------------------
 'POWCO 0
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 0, S7_Bit, Data)
    If Data Then
        POWCO_0.BackColor = vbGreen
    Else
        POWCO_0.BackColor = vbButtonFace
    End If
 'POWCO 1
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 1, S7_Bit, Data)
    If Data Then
        POWCO_1.BackColor = vbGreen
    Else
        POWCO_1.BackColor = vbButtonFace
    End If
 'POWCO 2
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 2, S7_Bit, Data)
    If Data Then
        POWCO_2.BackColor = vbGreen
    Else
        POWCO_2.BackColor = vbButtonFace
    End If
 'POWCO 3
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 3, S7_Bit, Data)
    If Data Then
        POWCO_3.BackColor = vbGreen
    Else
        POWCO_3.BackColor = vbButtonFace
    End If
 'POWCO 4
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 4, S7_Bit, Data)
    If Data Then
        POWCO_4.BackColor = vbGreen
    Else
        POWCO_4.BackColor = vbButtonFace
    End If
 'POWCO 5
    ReturnValue = S7ProSimX.ReadOutputPoint(33, 5, S7_Bit, Data)
    If Data Then
        POWCO_5.BackColor = vbGreen
    Else
        POWCO_5.BackColor = vbButtonFace
    End If

 '**************
    
 '------------------------------------------------------
    
    
 'hand-auto METEN KOP
    If KOPhandauto Then
        SCH_MET_AUTO.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(8, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 2, True)
        Label_KOP.Caption = "HAND"
    Else
        SCH_MET_AUTO.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(8, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(8, 2, False)
        Label_KOP.Caption = "AUTO"
    End If
   'Opnemers KOP op meetpositie
    If KOPV.Left >= DWARS_MEET_POS.Left Then
        DWARS_MEET_POS.BackColor = vbGreen
        ReturnValue = S7ProSimX.WriteInputPoint(11, 3, True)
    Else
        DWARS_MEET_POS.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(11, 3, False)
    End If
   'Opnemers KOP terug na metting
    If KOPV.Left <= DWARS_TERUG.Left Then
        DWARS_TERUG.BackColor = vbGreen
        ReturnValue = S7ProSimX.WriteInputPoint(11, 4, True)
    Else
        DWARS_TERUG.BackColor = vbButtonFace
        ReturnValue = S7ProSimX.WriteInputPoint(11, 4, False)
    End If

 '**************
    'dwars
 'hand-auto dwars
    If DWhandauto Then
        SCH_DW_auto.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(5, 1, False)
        Label_dw.Caption = "HAND"
    Else
        SCH_DW_auto.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX.WriteInputPoint(5, 1, True)
        Label_dw.Caption = "AUTO"
    End If
  
  'STATUSEN
    ReturnValue = S7ProSimX.ReadOutputPoint(30, 0, S7_Bit, Data)
    If Data Then
        VR_0.BackColor = vbGreen
    Else
        VR_0.BackColor = vbRed
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(30, 1, S7_Bit, Data)
    If Data Then
        VR_1.BackColor = vbGreen
    Else
        VR_1.BackColor = vbRed
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(30, 2, S7_Bit, Data)
    If Data Then
        VR_2.BackColor = vbGreen
    Else
        VR_2.BackColor = vbRed
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(30, 3, S7_Bit, Data)
    If Data Then
        VR_3.BackColor = vbGreen
    Else
        VR_3.BackColor = vbRed
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(30, 4, S7_Bit, Data)
    If Data Then
        VR_4.BackColor = vbGreen
    Else
        VR_4.BackColor = vbRed
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(30, 5, S7_Bit, Data)
    If Data Then
        VR_5.BackColor = vbGreen
    Else
        VR_5.BackColor = vbRed
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(30, 6, S7_Bit, Data)
    If Data Then
        VR_6.BackColor = vbGreen
    Else
        VR_6.BackColor = vbRed
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(30, 7, S7_Bit, Data)
    If Data Then
        VR_7.BackColor = vbGreen
    Else
        VR_7.BackColor = vbRed
    End If


    ReturnValue = S7ProSimX.ReadOutputPoint(31, 0, S7_Bit, Data)
    If Data Then
        BZ_0.BackColor = vbGreen
    Else
        BZ_0.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(31, 1, S7_Bit, Data)
    If Data Then
        BZ_1.BackColor = vbGreen
    Else
        BZ_1.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(31, 2, S7_Bit, Data)
    If Data Then
        BZ_2.BackColor = vbGreen
    Else
        BZ_2.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(31, 3, S7_Bit, Data)
    If Data Then
        BZ_3.BackColor = vbGreen
    Else
        BZ_3.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(31, 4, S7_Bit, Data)
    If Data Then
        BZ_4.BackColor = vbGreen
    Else
        BZ_4.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(31, 5, S7_Bit, Data)
    If Data Then
        BZ_5.BackColor = vbGreen
    Else
        BZ_5.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(31, 6, S7_Bit, Data)
    If Data Then
        BZ_6.BackColor = vbGreen
    Else
        BZ_6.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(31, 7, S7_Bit, Data)
    If Data Then
        BZ_7.BackColor = vbGreen
    Else
        BZ_7.BackColor = vbButtonFace
    End If



End Sub
''JOISTIK
Private Sub joiR_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
   joiR.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiM.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiRechts = True
    ReturnValue = S7ProSimX.WriteInputPoint(5, 6, True)
End Sub
Private Sub joiR_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiR.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiM.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    ReturnValue = S7ProSimX.WriteInputPoint(5, 6, False)
    joiRechts = False
End Sub
Private Sub joiL_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiL.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiM.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiLinks = True
    ReturnValue = S7ProSimX.WriteInputPoint(5, 5, True)
End Sub
Private Sub joiL_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiL.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiM.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiLinks = False
    ReturnValue = S7ProSimX.WriteInputPoint(5, 5, False)
End Sub
Private Sub joiB_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
   joiB.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiM.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
End Sub
Private Sub joiB_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiB.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiM.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
End Sub
Private Sub joiO_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiO.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiM.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
End Sub
Private Sub joiO_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiO.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiM.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
End Sub
''JOISTIK 2
Private Sub joiR1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
   joiR1.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiM1.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joi2Rechts = True
    ReturnValue = S7ProSimX.WriteInputPoint(7, 4, True)
End Sub
Private Sub joiR1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiR1.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiM1.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    ReturnValue = S7ProSimX.WriteInputPoint(7, 4, False)
    joi2Rechts = False
End Sub
Private Sub joiL1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiL1.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiM1.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joi2Links = True
    ReturnValue = S7ProSimX.WriteInputPoint(7, 5, True)
End Sub
Private Sub joiL1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiL1.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiM1.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joi2Links = False
    ReturnValue = S7ProSimX.WriteInputPoint(7, 5, False)
End Sub
Private Sub joiB1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
   joiB1.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiM1.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joi2Boven = True
    ReturnValue = S7ProSimX.WriteInputPoint(7, 6, True)
End Sub
Private Sub joiB1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiB1.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiM1.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joi2Boven = False
    ReturnValue = S7ProSimX.WriteInputPoint(7, 6, False)
End Sub
Private Sub joiO1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiO1.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joiM1.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joi2Onder = True
    ReturnValue = S7ProSimX.WriteInputPoint(7, 7, True)
End Sub
Private Sub joiO1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    joiO1.Picture = LoadPicture(CurDir & "\bmps\joi_uit.bmp")
    joiM1.Picture = LoadPicture(CurDir & "\bmps\joi_aan.bmp")
    joi2Onder = False
    ReturnValue = S7ProSimX.WriteInputPoint(7, 7, False)
End Sub

