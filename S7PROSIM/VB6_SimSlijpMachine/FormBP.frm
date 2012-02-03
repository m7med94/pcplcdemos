VERSION 5.00
Object = "{83CC0D70-FEDA-11D1-BE76-0060B06816CF}#1.2#0"; "S7WSPSMX.OCX"
Begin VB.Form FormBP 
   Caption         =   "Form2"
   ClientHeight    =   1830
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5880
   LinkTopic       =   "Form2"
   ScaleHeight     =   1830
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   4320
      Top             =   1080
   End
   Begin S7PROSIMLib.S7ProSim S7ProSimX1 
      Left            =   120
      Top             =   1200
      _Version        =   65538
      _ExtentX        =   635
      _ExtentY        =   688
      _StockProps     =   64
      Enabled         =   0   'False
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "DW H/A"
      Height          =   195
      Index           =   4
      Left            =   4680
      TabIndex        =   4
      Top             =   120
      Width           =   630
   End
   Begin VB.Image SCH_DW_auto 
      Height          =   360
      Left            =   4920
      Picture         =   "FormBP.frx":0000
      Top             =   360
      Width           =   240
   End
   Begin VB.Image KN_RES 
      Height          =   240
      Left            =   120
      Picture         =   "FormBP.frx":04C2
      Top             =   720
      Width           =   240
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "AF"
      Height          =   195
      Index           =   3
      Left            =   2280
      TabIndex        =   3
      Top             =   0
      Width           =   195
   End
   Begin VB.Image L_AF 
      Height          =   240
      Left            =   2280
      Picture         =   "FormBP.frx":0804
      Top             =   240
      Width           =   240
   End
   Begin VB.Image SCH_AF 
      Height          =   360
      Left            =   2280
      Picture         =   "FormBP.frx":0C46
      Top             =   600
      Width           =   240
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "SL"
      Height          =   195
      Index           =   2
      Left            =   1800
      TabIndex        =   2
      Top             =   0
      Width           =   195
   End
   Begin VB.Image L_SL 
      Height          =   240
      Left            =   1800
      Picture         =   "FormBP.frx":1108
      Top             =   240
      Width           =   240
   End
   Begin VB.Image SCH_SL 
      Height          =   360
      Left            =   1800
      Picture         =   "FormBP.frx":154A
      Top             =   600
      Width           =   240
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "HD"
      Height          =   195
      Index           =   1
      Left            =   1320
      TabIndex        =   1
      Top             =   0
      Width           =   240
   End
   Begin VB.Image L_HD 
      Height          =   240
      Left            =   1320
      Picture         =   "FormBP.frx":1A0C
      Top             =   240
      Width           =   240
   End
   Begin VB.Image L_SP 
      Height          =   240
      Left            =   840
      Picture         =   "FormBP.frx":1E4E
      Top             =   240
      Width           =   240
   End
   Begin VB.Image SCH_HD 
      Height          =   360
      Left            =   1320
      Picture         =   "FormBP.frx":2290
      Top             =   600
      Width           =   240
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "span."
      Height          =   195
      Index           =   0
      Left            =   720
      TabIndex        =   0
      Top             =   0
      Width           =   390
   End
   Begin VB.Image SPAAN 
      Height          =   360
      Left            =   840
      Picture         =   "FormBP.frx":2752
      Top             =   600
      Width           =   240
   End
   Begin VB.Image NS 
      Height          =   240
      Left            =   120
      Picture         =   "FormBP.frx":2C14
      Top             =   240
      Width           =   240
   End
End
Attribute VB_Name = "FormBP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    SPAAN.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
    NS.Picture = LoadPicture(CurDir & "\bmps\ns_uit.bmp")
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
Private Sub Timer1_Timer()
    Dim ReturnValue As Long
    Dim Data As Variant

    
End Sub

