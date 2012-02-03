VERSION 5.00
Object = "{83CC0D70-FEDA-11D1-BE76-0060B06816CF}#1.2#0"; "S7WSPSMX.OCX"
Begin VB.Form frmProcesvoering 
   ClientHeight    =   3840
   ClientLeft      =   60
   ClientTop       =   2415
   ClientWidth     =   9105
   ForeColor       =   &H80000007&
   Icon            =   "frmProcesvoering.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2352.942
   ScaleMode       =   0  'User
   ScaleWidth      =   4628.541
   Begin VB.OptionButton Nood 
      Caption         =   "NOOD"
      Height          =   255
      Left            =   2880
      Style           =   1  'Graphical
      TabIndex        =   52
      Top             =   120
      Width           =   615
   End
   Begin VB.OptionButton HandAuto 
      Caption         =   "HAND-AUTO"
      Height          =   255
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   51
      Top             =   3480
      Width           =   1095
   End
   Begin VB.CommandButton SVSGeel 
      Caption         =   "Geel"
      Height          =   255
      Left            =   600
      TabIndex        =   49
      Top             =   840
      Width           =   615
   End
   Begin VB.CommandButton SVSRood 
      Caption         =   "Rood"
      Height          =   255
      Left            =   600
      TabIndex        =   48
      Top             =   480
      Width           =   615
   End
   Begin VB.CommandButton SVSSper 
      Caption         =   "Sper"
      Height          =   255
      Left            =   600
      TabIndex        =   47
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton SVSRgWbr 
      Caption         =   "Wbr"
      Height          =   255
      Left            =   0
      TabIndex        =   46
      Top             =   480
      Width           =   615
   End
   Begin VB.CommandButton SVSRgHbr 
      Caption         =   "Hbr"
      Height          =   255
      Left            =   1200
      TabIndex        =   45
      Top             =   480
      Width           =   615
   End
   Begin VB.CommandButton Stop 
      Caption         =   "Stop"
      Height          =   255
      Left            =   5760
      TabIndex        =   44
      Top             =   3480
      Width           =   735
   End
   Begin VB.Frame Frame5 
      Caption         =   "Sleutel schak."
      Height          =   495
      Left            =   240
      TabIndex        =   39
      Top             =   1440
      Width           =   1215
      Begin VB.OptionButton Sleutel_UIT 
         Caption         =   "UIT"
         Height          =   255
         Left            =   600
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   240
         Width           =   615
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Z uit"
         Height          =   255
         Left            =   1200
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   1080
         Width           =   615
      End
      Begin VB.OptionButton Sleutel_AAN 
         Caption         =   "AAN"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.CommandButton ResetNood 
      Caption         =   "Reset"
      Height          =   255
      Left            =   3840
      TabIndex        =   36
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton LampTest 
      Caption         =   "Lamp test"
      Height          =   255
      Left            =   360
      TabIndex        =   35
      Top             =   2400
      Width           =   975
   End
   Begin VB.Frame Frame4 
      Caption         =   "    BRUG"
      Height          =   855
      Left            =   6600
      TabIndex        =   26
      Top             =   120
      Width           =   1215
      Begin VB.OptionButton BRUGm1 
         Caption         =   "M1"
         Height          =   255
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton BRUGauto 
         Caption         =   "Auto"
         Height          =   255
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   240
         Value           =   -1  'True
         Width           =   615
      End
      Begin VB.OptionButton BRUGm2 
         Caption         =   "M2"
         Height          =   255
         Left            =   600
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   480
         Width           =   495
      End
   End
   Begin VB.CommandButton BRUGopenen 
      Caption         =   "OP"
      Height          =   255
      Left            =   6000
      TabIndex        =   24
      Top             =   1680
      Width           =   735
   End
   Begin VB.CommandButton BRUGsluiten 
      Caption         =   "NEER"
      Height          =   255
      Left            =   6840
      TabIndex        =   23
      Top             =   1680
      Width           =   735
   End
   Begin VB.CommandButton BRUGstop 
      Caption         =   "STOP"
      Height          =   255
      Left            =   7680
      TabIndex        =   22
      Top             =   1680
      Width           =   735
   End
   Begin VB.CommandButton LVS_in 
      Caption         =   "LVS IN"
      Height          =   255
      Left            =   6720
      TabIndex        =   21
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton LVS_uit 
      Caption         =   "LVS UIT"
      Height          =   255
      Left            =   7680
      TabIndex        =   20
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton StoringReset 
      Caption         =   "RESET"
      Height          =   255
      Left            =   600
      TabIndex        =   19
      Top             =   3360
      Width           =   735
   End
   Begin VB.CommandButton Schel 
      Caption         =   "SCHEL"
      Height          =   255
      Left            =   6720
      TabIndex        =   18
      Top             =   2160
      Width           =   735
   End
   Begin VB.Frame Frame3 
      Caption         =   "       LVS"
      Height          =   855
      Left            =   6480
      TabIndex        =   14
      Top             =   2520
      Width           =   1215
      Begin VB.OptionButton LVSoverb 
         Caption         =   "OverB"
         Height          =   255
         Left            =   600
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   480
         Width           =   495
      End
      Begin VB.OptionButton LVSaan 
         Caption         =   "AAN"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   240
         Value           =   -1  'True
         Width           =   495
      End
      Begin VB.OptionButton LVSuit 
         Caption         =   "UIT"
         Height          =   255
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   480
         Width           =   495
      End
   End
   Begin VB.CommandButton ASBalleop 
      Caption         =   "OP"
      Height          =   255
      Left            =   3480
      TabIndex        =   13
      Top             =   1560
      Width           =   615
   End
   Begin VB.CommandButton ASB11neer 
      Caption         =   "NEER"
      Height          =   255
      Left            =   4320
      TabIndex        =   12
      Top             =   2160
      Width           =   615
   End
   Begin VB.CommandButton ASB11op 
      Caption         =   "OP"
      Height          =   255
      Left            =   4320
      TabIndex        =   11
      Top             =   1920
      Width           =   615
   End
   Begin VB.CommandButton ASB10neer 
      Caption         =   "NEER"
      Height          =   255
      Left            =   4320
      TabIndex        =   10
      Top             =   1200
      Width           =   615
   End
   Begin VB.CommandButton ASB10op 
      Caption         =   "OP"
      Height          =   255
      Left            =   4320
      TabIndex        =   9
      Top             =   960
      Width           =   615
   End
   Begin VB.CommandButton ASB2neer 
      Caption         =   "NEER"
      Height          =   255
      Left            =   2520
      TabIndex        =   8
      Top             =   2160
      Width           =   615
   End
   Begin VB.CommandButton ASB2op 
      Caption         =   "OP"
      Height          =   255
      Left            =   2520
      TabIndex        =   7
      Top             =   1920
      Width           =   615
   End
   Begin VB.CommandButton ASB3neer 
      Caption         =   "NEER"
      Height          =   255
      Left            =   2520
      TabIndex        =   6
      Top             =   1200
      Width           =   615
   End
   Begin VB.CommandButton ASB3op 
      Caption         =   "OP"
      Height          =   255
      Left            =   2520
      TabIndex        =   5
      Top             =   960
      Width           =   615
   End
   Begin VB.Timer Timer 
      Interval        =   500
      Left            =   4920
      Top             =   0
   End
   Begin VB.PictureBox sbStatusBar 
      Align           =   2  'Align Bottom
      Height          =   0
      Left            =   0
      ScaleHeight     =   0
      ScaleWidth      =   9105
      TabIndex        =   0
      Top             =   3840
      Width           =   9105
   End
   Begin VB.Shape BPL_HandBed 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   255
      Left            =   720
      Top             =   3000
      Width           =   300
   End
   Begin VB.Shape BPL_NoodBed 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   255
      Left            =   1080
      Top             =   3000
      Width           =   300
   End
   Begin VB.Shape AlarmREM 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   120
      Left            =   3240
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape AlarmBRUG 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   120
      Left            =   2880
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape AlarmOLIE 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   120
      Left            =   2520
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape AlarmASB 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   120
      Left            =   2160
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape AlarmLVS 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   120
      Left            =   1800
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape AlarmSVS 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   120
      Left            =   1440
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape BPL_Onderhoud 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   255
      Left            =   360
      Top             =   3000
      Width           =   300
   End
   Begin VB.Shape BPL_Storing 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   360
      Top             =   3360
      Width           =   180
   End
   Begin VB.Shape BPL_Nood 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3600
      Top             =   120
      Width           =   180
   End
   Begin VB.Shape BPvrijgaveASB 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   6120
      Top             =   2400
      Width           =   300
   End
   Begin VB.Shape BPvrijgaveBRUG 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7800
      Top             =   2400
      Width           =   300
   End
   Begin VB.Label Label6 
      Caption         =   "M1"
      Height          =   255
      Left            =   6240
      TabIndex        =   34
      Top             =   240
      Width           =   375
   End
   Begin VB.Label Label5 
      Caption         =   "M 2"
      Height          =   255
      Left            =   7920
      TabIndex        =   33
      Top             =   240
      Width           =   375
   End
   Begin VB.Shape BPL_BrugNeer 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   225
      Left            =   6960
      Top             =   1200
      Width           =   540
   End
   Begin VB.Shape BPL_Motor1 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   6240
      Top             =   600
      Width           =   300
   End
   Begin VB.Shape BPL_HoofdSch1 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   225
      Left            =   7800
      Top             =   1200
      Width           =   540
   End
   Begin VB.Shape BPL_Motor2 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7920
      Top             =   600
      Width           =   300
   End
   Begin VB.Shape BPL_BrugOp 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   225
      Left            =   6120
      Top             =   1200
      Width           =   540
   End
   Begin S7PROSIMLib.S7ProSim S7ProSimX 
      Left            =   5400
      Top             =   0
      _Version        =   65538
      _ExtentX        =   635
      _ExtentY        =   688
      _StockProps     =   64
      Enabled         =   -1  'True
      Enabled         =   -1  'True
      ScanMode        =   1
   End
   Begin VB.Label VoorkeuzeP1 
      BackStyle       =   0  'Transparent
      Caption         =   "12-11-9"
      ForeColor       =   &H80000007&
      Height          =   255
      Left            =   4320
      TabIndex        =   1
      Top             =   2520
      Width           =   615
   End
   Begin VB.Shape BPL_3sp 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   1080
      Width           =   300
   End
   Begin VB.Label Label12 
      BackStyle       =   0  'Transparent
      Caption         =   "7-8-10"
      Height          =   255
      Left            =   4440
      TabIndex        =   4
      Top             =   600
      Width           =   495
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "1-2-4"
      Height          =   255
      Left            =   2640
      TabIndex        =   3
      Top             =   2520
      Width           =   495
   End
   Begin VB.Shape BPL_LVS23o 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   2160
      Shape           =   3  'Circle
      Top             =   1560
      Width           =   300
   End
   Begin VB.Shape BPL_LVS23n 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   2160
      Shape           =   3  'Circle
      Top             =   1920
      Width           =   300
   End
   Begin VB.Shape BPL_3st 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   600
      Width           =   300
   End
   Begin VB.Shape BPL_NoordDoor 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3600
      Shape           =   3  'Circle
      Top             =   2160
      Width           =   300
   End
   Begin VB.Shape BPL_LVS23z 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   2160
      Shape           =   3  'Circle
      Top             =   1200
      Width           =   300
   End
   Begin VB.Shape BPL_LVS1011n 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   5040
      Shape           =   3  'Circle
      Top             =   1920
      Width           =   300
   End
   Begin VB.Shape BPL_LVS1011z 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   5040
      Shape           =   3  'Circle
      Top             =   1200
      Width           =   300
   End
   Begin VB.Shape BPL_10d 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   840
      Width           =   300
   End
   Begin VB.Shape BPL_10st 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   600
      Width           =   300
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "3-5-6"
      Height          =   255
      Left            =   2640
      TabIndex        =   2
      Top             =   600
      Width           =   375
   End
   Begin VB.Shape BPL_11sp 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   2640
      Width           =   300
   End
   Begin VB.Shape BPL_10sp 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   1080
      Width           =   300
   End
   Begin VB.Shape BPL_3d 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   840
      Width           =   300
   End
   Begin VB.Shape BPL_11d 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   2400
      Width           =   300
   End
   Begin VB.Shape BPL_2sp 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   2640
      Width           =   300
   End
   Begin VB.Shape BPL_2d 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   2400
      Width           =   300
   End
   Begin VB.Shape BPL_LVS1011w 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   5040
      Shape           =   3  'Circle
      Top             =   1560
      Width           =   300
   End
   Begin VB.Shape BPL_11st 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   2160
      Width           =   300
   End
   Begin VB.Shape BPL_ZuidDoor 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3600
      Shape           =   3  'Circle
      Top             =   1080
      Width           =   300
   End
   Begin VB.Shape BPL_2st 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   2160
      Width           =   300
   End
   Begin VB.Label Label7 
      Caption         =   "ODH"
      Height          =   255
      Left            =   360
      TabIndex        =   43
      Top             =   2760
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "HS"
      Height          =   255
      Left            =   7920
      TabIndex        =   31
      Top             =   960
      Width           =   375
   End
   Begin VB.Label Label2 
      Caption         =   "Neer"
      Height          =   255
      Left            =   6960
      TabIndex        =   30
      Top             =   960
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Open"
      Height          =   255
      Left            =   6120
      TabIndex        =   25
      Top             =   960
      Width           =   495
   End
   Begin VB.Label Label4 
      Caption         =   "Brug bediening"
      Height          =   255
      Left            =   6600
      TabIndex        =   32
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Label Label11 
      Caption         =   "Brug"
      Height          =   255
      Left            =   7800
      TabIndex        =   38
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label8 
      Caption         =   "ASB"
      Height          =   255
      Left            =   6120
      TabIndex        =   37
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label13 
      Caption         =   "SVS LVS ASB OLIE BR REM"
      Height          =   255
      Left            =   1440
      TabIndex        =   50
      Top             =   3360
      Width           =   2175
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileNew 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuFileOpen 
         Caption         =   "&Open..."
      End
      Begin VB.Menu mnuFileClose 
         Caption         =   "&Close"
      End
      Begin VB.Menu mnuFileBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileSave 
         Caption         =   "&Save"
      End
      Begin VB.Menu mnuFileSaveAs 
         Caption         =   "Save &As..."
      End
      Begin VB.Menu mnuFileSaveAll 
         Caption         =   "Save A&ll"
      End
      Begin VB.Menu mnuFileBar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileProperties 
         Caption         =   "Propert&ies"
      End
      Begin VB.Menu mnuFileBar2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFilePageSetup 
         Caption         =   "Page Set&up..."
      End
      Begin VB.Menu mnuFilePrintPreview 
         Caption         =   "Print Pre&view"
      End
      Begin VB.Menu mnuFilePrint 
         Caption         =   "&Print..."
      End
      Begin VB.Menu mnuFileBar3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileSend 
         Caption         =   "Sen&d..."
      End
      Begin VB.Menu mnuFileBar4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileMRU 
         Caption         =   ""
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileMRU 
         Caption         =   ""
         Index           =   2
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileMRU 
         Caption         =   ""
         Index           =   3
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileBar5 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuEditUndo 
         Caption         =   "&Undo"
      End
      Begin VB.Menu mnuEditBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditCut 
         Caption         =   "Cu&t"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuEditCopy 
         Caption         =   "&Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuEditPaste 
         Caption         =   "&Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuEditPasteSpecial 
         Caption         =   "Paste &Special..."
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
      Begin VB.Menu mnuViewBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuViewRefresh 
         Caption         =   "&Refresh"
      End
      Begin VB.Menu mnuViewOptions 
         Caption         =   "&Options..."
      End
      Begin VB.Menu mnuViewWebBrowser 
         Caption         =   "&Web Browser"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuHelpContents 
         Caption         =   "&Contents"
      End
      Begin VB.Menu mnuHelpSearchForHelpOn 
         Caption         =   "&Search For Help On..."
      End
      Begin VB.Menu mnuHelpBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "&About "
      End
   End
End
Attribute VB_Name = "frmProcesvoering"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function OSWinHelp% Lib "user32" Alias "WinHelpA" (ByVal hwnd&, ByVal HelpFile$, ByVal wCommand%, dwData As Any)
    Dim ColorRed As Long
    Dim ColorGreen As Long
    Dim ColorBlue As Long
    Dim ColorWhite As Long
    Dim ColorGray As Long
    Dim ColorYellow As Long
'************************************
'BEDIENINGSPANEEL
'************************************
Private Sub ASB10op_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
'frmMain.ASBb1.X1 = frmMain.ASBb1.X1 - 20
        ReturnValue = S7ProSimX.WriteInputPoint(40, 7, True)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 3, True)
End Sub
Private Sub ASB10op_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
         ReturnValue = S7ProSimX.WriteInputPoint(40, 7, False)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 3, False)
End Sub
Private Sub ASB10neer_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(41, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 4, True)
End Sub
Private Sub ASB10neer_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
'frmMain.ASBb1.X1 = frmMain.ASBb1.X1 + 20
         ReturnValue = S7ProSimX.WriteInputPoint(41, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 4, False)
End Sub
Private Sub ASB11op_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(40, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(41, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(41, 3, True)
End Sub
Private Sub ASB11op_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(40, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(41, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(41, 3, False)
End Sub
Private Sub ASB11neer_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(40, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(41, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(41, 4, True)
End Sub
Private Sub ASB11neer_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(40, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(41, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(41, 4, False)
End Sub
Private Sub ASB2op_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(36, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(36, 7, True)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 3, True)
End Sub
Private Sub ASB2op_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(36, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(36, 7, False)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 3, False)
End Sub
Private Sub ASB2neer_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(36, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 0, True)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 4, True)
End Sub
Private Sub ASB2neer_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
         ReturnValue = S7ProSimX.WriteInputPoint(36, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 0, False)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 4, False)
End Sub
Private Sub ASB3op_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(37, 1, True)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 5, True)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 7, True)
End Sub
Private Sub ASB3op_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(37, 1, False)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 5, False)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 7, False)
End Sub
Private Sub ASB3neer_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(37, 2, True)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 0, True)
End Sub
Private Sub ASB3neer_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(37, 2, False)
        ReturnValue = S7ProSimX.WriteInputPoint(37, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(40, 0, False)
End Sub
Private Sub ASBalleop_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(41, 5, True)
End Sub
Private Sub ASBalleop_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(41, 5, False)
End Sub
Private Sub BRUGopenen_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 2, True)
End Sub
Private Sub BRUGopenen_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 2, False)
End Sub
Private Sub BRUGsluiten_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 3, True)
End Sub
Private Sub BRUGsluiten_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 3, False)
End Sub
Private Sub BRUGstop_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 4, True)
End Sub
Private Sub BRUGstop_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 4, False)
End Sub
Private Sub Schel_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(41, 7, True)
End Sub
Private Sub Schel_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 7, False)
End Sub

Private Sub StoringReset_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(45, 0, True)
End Sub
Private Sub StoringReset_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(45, 0, False)
End Sub
Private Sub LampTest_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(45, 2, True)
End Sub
Private Sub LampTest_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(45, 2, False)
End Sub
Private Sub LVS_in_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(36, 0, True)
End Sub
Private Sub LVS_in_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
    
        ReturnValue = S7ProSimX.WriteInputPoint(36, 0, False)
End Sub
Private Sub LVS_uit_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(36, 1, True)
End Sub
Private Sub LVS_uit_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(36, 1, False)
End Sub
Private Sub Stop_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(36, 4, True)
End Sub
Private Sub Stop_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(36, 4, False)
End Sub
Private Sub ResetNood_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(45, 1, True)
End Sub
Private Sub ResetNood_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        Nood.Value = 0
        ReturnValue = S7ProSimX.WriteInputPoint(45, 1, False)
End Sub
Private Sub SVSRgWbr_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(64, 5, True)
End Sub
Private Sub SVSRgWbr_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(64, 5, False)
End Sub
Private Sub SVSRgHbr_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(64, 3, True)
End Sub
Private Sub SVSRgHbr_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(64, 3, False)
End Sub
Private Sub SVSGeel_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 1, True)
End Sub
Private Sub SVSGeel_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 1, False)
End Sub
Private Sub SVSRood_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 0, True)
End Sub
Private Sub SVSRood_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(44, 0, False)
End Sub
Private Sub SVSSper_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(41, 7, True)
End Sub
Private Sub SVSSper_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ReturnValue As Long
        ReturnValue = S7ProSimX.WriteInputPoint(41, 7, False)
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
Private Sub Sluiten_Click()
    frmProcesvoering.Hide
End Sub



Private Sub Timer_Timer()
    Dim ReturnValue As Long
    Dim Data As Variant
    
    ColorRed = &HFF&
    ColorGreen = &HFF00&     ''&HC000&
    ColorBlue = &HC0C000
    ColorGray = &H8000000F
    ColorYellow = &HFFFF&
    ColorWhite = &HFFFFFF
    ColorPaars = &HFF80FF
    
'************************************
'BEDIENINGSPANEEL
'************************************
                  
    'Lampen Bedieningspaneel
    ReturnValue = S7ProSimX.ReadOutputPoint(132, 0, S7_Bit, Data)
    If Data Then
        BPL_LVS1011z.BackColor = ColorRed
    Else
        BPL_LVS1011z.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(132, 1, S7_Bit, Data)
    If Data Then
        BPL_LVS1011w.BackColor = ColorRed
    Else
        BPL_LVS1011w.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(132, 2, S7_Bit, Data)
    If Data Then
        BPL_LVS1011n.BackColor = ColorRed
    Else
        BPL_LVS1011n.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(132, 3, S7_Bit, Data)
    If Data Then
        BPL_LVS23z.BackColor = ColorRed
    Else
        BPL_LVS23z.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(132, 4, S7_Bit, Data)
    If Data Then
        BPL_LVS23o.BackColor = ColorRed
    Else
        BPL_LVS23o.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(132, 5, S7_Bit, Data)
    If Data Then
        BPL_LVS23n.BackColor = ColorRed
    Else
        BPL_LVS23n.BackColor = ColorGray
    End If
    
    
    ReturnValue = S7ProSimX.ReadOutputPoint(132, 6, S7_Bit, Data)
    If Data Then
        BPL_11sp.BackColor = ColorRed
    Else
        BPL_11sp.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(132, 7, S7_Bit, Data)
    If Data Then
        BPL_11d.BackColor = ColorGreen
    Else
        BPL_11d.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(133, 0, S7_Bit, Data)
    If Data Then
        BPL_11st.BackColor = ColorRed
    Else
        BPL_11st.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(133, 1, S7_Bit, Data)
    If Data Then
        BPL_2sp.BackColor = ColorRed
    Else
        BPL_2sp.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(133, 2, S7_Bit, Data)
    If Data Then
        BPL_2d.BackColor = ColorGreen
    Else
        BPL_2d.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(133, 3, S7_Bit, Data)
    If Data Then
        BPL_2st.BackColor = ColorRed
    Else
        BPL_2st.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(133, 4, S7_Bit, Data)
    If Data Then
        BPL_NoordDoor.BackColor = ColorYellow
    Else
        BPL_NoordDoor.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(133, 5, S7_Bit, Data)
    If Data Then
        BPL_10sp.BackColor = ColorRed
    Else
        BPL_10sp.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(133, 6, S7_Bit, Data)
    If Data Then
        BPL_10d.BackColor = ColorGreen
    Else
        BPL_10d.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(133, 7, S7_Bit, Data)
    If Data Then
        BPL_10st.BackColor = ColorRed
    Else
        BPL_10st.BackColor = ColorGray
    End If
       ReturnValue = S7ProSimX.ReadOutputPoint(136, 0, S7_Bit, Data)
    If Data Then
        BPL_3sp.BackColor = ColorRed
    Else
        BPL_3sp.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(136, 1, S7_Bit, Data)
    If Data Then
        BPL_3d.BackColor = ColorGreen
    Else
        BPL_3d.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(136, 2, S7_Bit, Data)
    If Data Then
        BPL_3st.BackColor = ColorRed
    Else
        BPL_3st.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(136, 3, S7_Bit, Data)
    If Data Then
        BPL_ZuidDoor.BackColor = ColorYellow
    Else
        BPL_ZuidDoor.BackColor = ColorGray
    End If
    
    'lampen BP brug
    ReturnValue = S7ProSimX.ReadOutputPoint(136, 4, S7_Bit, Data)
    If Data Then
        BPL_BrugOp.BackColor = ColorRed
    Else
        BPL_BrugOp.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(136, 5, S7_Bit, Data)
    If Data Then
        BPL_BrugNeer.BackColor = ColorRed
    Else
        BPL_BrugNeer.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(136, 6, S7_Bit, Data)
    If Data Then
        BPL_Motor1.BackColor = ColorRed
    Else
        BPL_Motor1.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(136, 7, S7_Bit, Data)
    If Data Then
        BPL_Motor2.BackColor = ColorGreen
    Else
        BPL_Motor2.BackColor = ColorGray
    End If
    
    'Lamp storing
    ReturnValue = S7ProSimX.ReadOutputPoint(137, 0, S7_Bit, Data)
    If Data Then
        BPL_Storing.BackColor = ColorRed
    Else
        BPL_Storing.BackColor = ColorGray
    End If
    
    ReturnValue = S7ProSimX.ReadOutputPoint(137, 1, S7_Bit, Data)
    If Data Then
        BPL_HoofdSch1.BackColor = ColorRed
    Else
        BPL_HoofdSch1.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(137, 3, S7_Bit, Data)
    If Data Then
        BPL_Nood.BackColor = ColorRed
    Else
        BPL_Nood.BackColor = ColorGray
    End If
   
    'Lampen vrigave
    ReturnValue = S7ProSimX.ReadOutputPoint(137, 6, S7_Bit, Data)
    If Data Then
        BPvrijgaveASB.BackColor = ColorRed
    Else
        BPvrijgaveASB.BackColor = ColorGray
    End If
    
    ReturnValue = S7ProSimX.ReadOutputPoint(137, 7, S7_Bit, Data)
    If Data Then
        BPvrijgaveBRUG.BackColor = ColorRed
    Else
        BPvrijgaveBRUG.BackColor = ColorGray
    End If


    'Lamp Onderhoud
    ReturnValue = S7ProSimX.ReadOutputPoint(137, 4, S7_Bit, Data)
    If Data Then
        BPL_Onderhoud.BackColor = ColorWhite
    Else
        BPL_Onderhoud.BackColor = ColorGray
    End If
    'Lamp Handbediening
    ReturnValue = S7ProSimX.ReadOutputPoint(140, 0, S7_Bit, Data)
    If Data Then
        BPL_HandBed.BackColor = ColorRed
    Else
        BPL_HandBed.BackColor = ColorGray
    End If
    'Lamp Nood bediening
    ReturnValue = S7ProSimX.ReadOutputPoint(140, 1, S7_Bit, Data)
    If Data Then
        BPL_NoodBed.BackColor = ColorRed
    Else
        BPL_NoodBed.BackColor = ColorGray
    End If

'*************************************************************************
    'LVS bedieningspaneel
    ReturnValue = S7ProSimX.WriteInputPoint(36, 2, LVSaan.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(36, 3, LVSoverb.Value) 'overbruging
    'Hand - Auto
    ReturnValue = S7ProSimX.WriteInputPoint(41, 6, HandAuto.Value)
    'motor brug bedieningspaneel
    ReturnValue = S7ProSimX.WriteInputPoint(44, 5, BRUGm1.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(44, 6, BRUGm2.Value)
   'Sleutel schakelaar
    ReturnValue = S7ProSimX.WriteInputPoint(45, 3, Sleutel_AAN.Value)
    'Noodstop
    ReturnValue = S7ProSimX.WriteInputPoint(66, 1, Nood.Value)
    '*************************
    'voor test Alarmen
    ReturnValue = S7ProSimX.ReadOutputPoint(141, 0, S7_Bit, Data)
    If Data Then
        AlarmSVS.BackColor = ColorRed
    Else
        AlarmSVS.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(141, 1, S7_Bit, Data)
    If Data Then
        AlarmLVS.BackColor = ColorRed
    Else
        AlarmLVS.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(141, 2, S7_Bit, Data)
    If Data Then
        AlarmASB.BackColor = ColorRed
    Else
        AlarmASB.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(141, 3, S7_Bit, Data)
    If Data Then
        AlarmOLIE.BackColor = ColorRed
    Else
        AlarmOLIE.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(141, 4, S7_Bit, Data)
    If Data Then
        AlarmBRUG.BackColor = ColorRed
    Else
        AlarmBRUG.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(141, 5, S7_Bit, Data)
    If Data Then
        AlarmREM.BackColor = ColorRed
    Else
        AlarmREM.BackColor = ColorGray
    End If

    
End Sub

