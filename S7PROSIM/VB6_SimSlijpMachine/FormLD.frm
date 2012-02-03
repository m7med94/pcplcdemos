VERSION 5.00
Object = "{83CC0D70-FEDA-11D1-BE76-0060B06816CF}#1.2#0"; "S7WSPSMX.OCX"
Begin VB.Form FormLD 
   Caption         =   "Form2"
   ClientHeight    =   3990
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5985
   LinkTopic       =   "Form2"
   ScaleHeight     =   3990
   ScaleWidth      =   5985
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox HOOR 
      Caption         =   "Tafel in  hoor.Pos."
      Height          =   255
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   26
      Top             =   360
      Width           =   1695
   End
   Begin VB.Timer Timer2 
      Interval        =   500
      Left            =   120
      Top             =   960
   End
   Begin VB.CheckBox oTfFoto 
      Caption         =   "foto"
      Height          =   255
      Left            =   4680
      Style           =   1  'Graphical
      TabIndex        =   25
      Top             =   3000
      Width           =   615
   End
   Begin VB.CheckBox oTfHoog 
      Caption         =   "hoog"
      Height          =   255
      Left            =   4680
      Style           =   1  'Graphical
      TabIndex        =   24
      Top             =   2280
      Width           =   615
   End
   Begin VB.CheckBox oTfOnder 
      Caption         =   "onder"
      Height          =   255
      Left            =   4680
      Style           =   1  'Graphical
      TabIndex        =   23
      Top             =   3360
      Width           =   615
   End
   Begin VB.CheckBox oTfBoven 
      Caption         =   "boven"
      Height          =   255
      Left            =   4680
      Style           =   1  'Graphical
      TabIndex        =   22
      Top             =   2640
      Width           =   615
   End
   Begin VB.CheckBox oZwTerug 
      Caption         =   "terug"
      Height          =   255
      Left            =   3960
      Style           =   1  'Graphical
      TabIndex        =   21
      Top             =   2520
      Width           =   495
   End
   Begin VB.CheckBox oZwVoor 
      Caption         =   "voor"
      Height          =   255
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   2520
      Width           =   495
   End
   Begin VB.CheckBox oGrArmNeer 
      Caption         =   "neer"
      Height          =   255
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   2760
      Width           =   495
   End
   Begin VB.CheckBox oGrArmOp 
      Caption         =   "op"
      Height          =   255
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   2280
      Width           =   495
   End
   Begin VB.CheckBox oKlArmIn2 
      Caption         =   "in2"
      Height          =   255
      Left            =   1080
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   2760
      Width           =   615
   End
   Begin VB.CheckBox oKlArmIn1 
      Caption         =   "in1"
      Height          =   255
      Left            =   1080
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   2520
      Width           =   615
   End
   Begin VB.CheckBox oKlArmUit2 
      Caption         =   "uit2"
      Height          =   255
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   2760
      Width           =   615
   End
   Begin VB.CheckBox oKlArmUit1 
      Caption         =   "uit1"
      Height          =   255
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   2520
      Width           =   615
   End
   Begin VB.Frame Frame8 
      Caption         =   "laag"
      Height          =   495
      Left            =   960
      TabIndex        =   4
      Top             =   720
      Width           =   495
      Begin VB.OptionButton LAAG1 
         Caption         =   "1"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   240
         Width           =   255
      End
      Begin VB.OptionButton LAAG2 
         Caption         =   "2"
         Height          =   255
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   240
         Value           =   -1  'True
         Width           =   255
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "maat"
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   120
      Width           =   735
      Begin VB.OptionButton M105 
         Caption         =   "1"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   240
         Width           =   255
      End
      Begin VB.OptionButton M125 
         Caption         =   "2"
         Height          =   255
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   240
         Value           =   -1  'True
         Width           =   255
      End
      Begin VB.OptionButton M140 
         Caption         =   "3"
         Height          =   255
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   240
         Width           =   255
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   120
      Top             =   480
   End
   Begin VB.Label Label2Label2 
      Caption         =   "Tafel"
      Height          =   255
      Index           =   0
      Left            =   4800
      TabIndex        =   13
      Top             =   1920
      Width           =   375
   End
   Begin VB.Image TFneer 
      Height          =   120
      Left            =   5400
      Picture         =   "FormLD.frx":0000
      Top             =   3480
      Width           =   240
   End
   Begin VB.Image TFop 
      Height          =   120
      Left            =   5400
      Picture         =   "FormLD.frx":01C2
      Top             =   2280
      Width           =   240
   End
   Begin VB.Label Label2Label2 
      Caption         =   "Zwaarden"
      Height          =   255
      Index           =   2
      Left            =   3600
      TabIndex        =   12
      Top             =   1920
      Width           =   735
   End
   Begin VB.Image ZWterug 
      Height          =   120
      Left            =   4080
      Picture         =   "FormLD.frx":0384
      Top             =   2280
      Width           =   240
   End
   Begin VB.Image ZWvoor 
      Height          =   120
      Left            =   3480
      Picture         =   "FormLD.frx":0546
      Top             =   2280
      Width           =   240
   End
   Begin VB.Label Label2 
      Caption         =   "Grote armen"
      Height          =   255
      Index           =   1
      Left            =   1920
      TabIndex        =   11
      Top             =   1920
      Width           =   1095
   End
   Begin VB.Image ARMneer 
      Height          =   120
      Left            =   2520
      Picture         =   "FormLD.frx":0708
      Top             =   2880
      Width           =   240
   End
   Begin VB.Image ARMop 
      Height          =   120
      Left            =   2520
      Picture         =   "FormLD.frx":08CA
      Top             =   2280
      Width           =   240
   End
   Begin VB.Label Label2 
      Caption         =   "kleine armen"
      Height          =   255
      Index           =   0
      Left            =   600
      TabIndex        =   10
      Top             =   1920
      Width           =   975
   End
   Begin VB.Image ZWin 
      Height          =   120
      Left            =   600
      Picture         =   "FormLD.frx":0A8C
      Top             =   2280
      Width           =   240
   End
   Begin VB.Image ZWuit 
      Height          =   120
      Left            =   1320
      Picture         =   "FormLD.frx":0C4E
      Top             =   2280
      Width           =   240
   End
   Begin VB.Label Label1 
      Caption         =   "reset"
      Height          =   255
      Index           =   2
      Left            =   2640
      TabIndex        =   9
      Top             =   960
      Width           =   495
   End
   Begin VB.Image KN_GEREED 
      Height          =   240
      Left            =   2640
      Picture         =   "FormLD.frx":0E10
      Top             =   1320
      Width           =   240
   End
   Begin VB.Label Label1 
      Caption         =   "start"
      Height          =   255
      Index           =   1
      Left            =   2040
      TabIndex        =   8
      Top             =   960
      Width           =   495
   End
   Begin VB.Image KN_START 
      Height          =   240
      Left            =   2040
      Picture         =   "FormLD.frx":1152
      Top             =   1320
      Width           =   240
   End
   Begin VB.Image SCH_HA 
      Height          =   360
      Left            =   3960
      Picture         =   "FormLD.frx":1494
      Top             =   480
      Width           =   240
   End
   Begin S7PROSIMLib.S7ProSim S7ProSimX1 
      Left            =   0
      Top             =   0
      _Version        =   65538
      _ExtentX        =   635
      _ExtentY        =   688
      _StockProps     =   64
      Enabled         =   0   'False
   End
   Begin VB.Label Label1 
      Caption         =   "H - A"
      Height          =   255
      Index           =   0
      Left            =   3960
      TabIndex        =   7
      Top             =   240
      Width           =   495
   End
End
Attribute VB_Name = "FormLD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    
    oKlArmUit1 = 1
    oKlArmUit2 = 1
    oKlArmIn1 = 0
    oKlArmIn2 = 0
    oGrArmOp = 1
    oGrArmNeer = 0
    oZwVoor = 1
    oZwTerug = 0
    oTfBoven = 1
    oTfHoog = 0
    oTfFoto = 0
    oTfOnder = 0
    HOOR = 1
End Sub


Private Sub KN_START_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX1.WriteInputPoint(10, 1, True)
        KN_START.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_START_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX1.WriteInputPoint(10, 1, False)
        KN_START.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub
Private Sub KN_GEREED_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX1.WriteInputPoint(18, 5, True)
        KN_GEREED.Picture = LoadPicture(CurDir & "\bmps\druk_aan.bmp")
End Sub
Private Sub KN_GEREED_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
        ReturnValue = S7ProSimX1.WriteInputPoint(18, 5, False)
        KN_GEREED.Picture = LoadPicture(CurDir & "\bmps\druk_uit.bmp")
End Sub

Private Sub SCH_HA_Click()
    If UitladenAuto Then
        UitladenAuto = False
        SCH_HA.Picture = LoadPicture(CurDir & "\bmps\sch_uit.bmp")
        ReturnValue = S7ProSimX1.WriteInputPoint(9, 2, False)
    Else
        UitladenAuto = True
        SCH_HA.Picture = LoadPicture(CurDir & "\bmps\sch_aan.bmp")
        ReturnValue = S7ProSimX1.WriteInputPoint(9, 2, True)
    End If
End Sub


Private Sub Timer2_Timer()
'Schakelaars
 ReturnValue = S7ProSimX1.WriteInputPoint(9, 3, M105.Value)
 ReturnValue = S7ProSimX1.WriteInputPoint(9, 4, M125.Value)
 ReturnValue = S7ProSimX1.WriteInputPoint(9, 5, M140.Value)
 ReturnValue = S7ProSimX1.WriteInputPoint(9, 6, LAAG1.Value)
 ReturnValue = S7ProSimX1.WriteInputPoint(9, 7, LAAG2.Value)

'klep kl.armen
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 0, S7_Bit, Data)
    If Data Then
        oKlArmUit1.Value = 1
        oKlArmUit2.Value = 1
        oKlArmIn1.Value = 0
        oKlArmIn2.Value = 0
    End If
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 1, S7_Bit, Data)
    If Data Then
        oKlArmUit1.Value = 0
        oKlArmUit2.Value = 0
        oKlArmIn1.Value = 1
        oKlArmIn2.Value = 1
    End If
'klep grote armen
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 3, S7_Bit, Data)
    If Data Then
         oGrArmOp.Value = 1
         oGrArmNeer.Value = 0
     End If
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 2, S7_Bit, Data)
    If Data Then
         oGrArmOp.Value = 0
         oGrArmNeer.Value = 1
    End If
'klep zwaarder
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 6, S7_Bit, Data)
    If Data Then
        oZwVoor.Value = 1
        oZwTerug.Value = 0
    End If
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 7, S7_Bit, Data)
    If Data Then
        oZwVoor.Value = 0
        oZwTerug.Value = 1
    End If
'klep tafel
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 5, S7_Bit, Data)
    If Data Then
        oTfOnder.Value = 1
        oTfFoto.Value = 0
        oTfBoven.Value = 0
        oTfHoog.Value = 0
    End If


'klep kl.armen
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 0, S7_Bit, Data)
    If Data Then
        ZWuit.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
     Else
        ZWuit.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 1, S7_Bit, Data)
    If Data Then
        ZWin.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        ZWin.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep grote armen
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 3, S7_Bit, Data)
    If Data Then
        ARMop.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        ARMop.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 2, S7_Bit, Data)
    If Data Then
        ARMneer.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        ARMneer.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep zwaarder
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 6, S7_Bit, Data)
    If Data Then
        ZWvoor.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
   Else
        ZWvoor.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 7, S7_Bit, Data)
    If Data Then
        ZWterug.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
   Else
        ZWterug.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
'klep tafel
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 4, S7_Bit, Data)
    If Data Then
        TFop.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        TFop.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If
    ReturnValue = S7ProSimX1.ReadOutputPoint(39, 5, S7_Bit, Data)
    If Data Then
        TFneer.Picture = LoadPicture(CurDir & "\bmps\kl_aan.bmp")
    Else
        TFneer.Picture = LoadPicture(CurDir & "\bmps\kl_uit.bmp")
    End If

End Sub
Private Sub Timer1_Timer()
'tafel in hor positie
    If HOOR.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(13, 0, True)
        HOOR.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(13, 0, False)
        HOOR.BackColor = vbRed
    End If


'opnemers kleine armen
    If oKlArmUit1.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 2, True)
        oKlArmUit1.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 2, False)
        oKlArmUit1.BackColor = vbRed
    End If
    If oKlArmUit2.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 3, True)
        oKlArmUit2.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 3, False)
        oKlArmUit2.BackColor = vbRed
    End If
    If oKlArmIn1.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 4, True)
        oKlArmIn1.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 4, False)
        oKlArmIn1.BackColor = vbRed
    End If
    If oKlArmIn2.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 5, True)
        oKlArmIn2.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 5, False)
        oKlArmIn2.BackColor = vbRed
    End If
'opnemers grote armen
    If oGrArmOp.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 1, True)
        oGrArmOp.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 1, False)
        oGrArmOp.BackColor = vbRed
    End If
    If oGrArmNeer.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 0, True)
        oGrArmNeer.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 0, False)
        oGrArmNeer.BackColor = vbRed
    End If
'opnemers zwaarden
    If oZwVoor.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 6, True)
        oZwVoor.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 6, False)
        oZwVoor.BackColor = vbRed
    End If
    If oZwTerug.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 7, True)
        oZwTerug.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(15, 7, False)
        oZwTerug.BackColor = vbRed
    End If
'opnemers tafel
    If oTfHoog.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(16, 2, True)
        oTfHoog.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(16, 2, False)
        oTfHoog.BackColor = vbRed
    End If
    If oTfBoven.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(16, 0, True)
        oTfBoven.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(16, 0, False)
        oTfBoven.BackColor = vbRed
    End If
    If oTfOnder.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(16, 1, True)
        oTfOnder.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(16, 1, False)
        oTfOnder.BackColor = vbRed
    End If
    If oTfFoto.Value = 1 Then
        ReturnValue = S7ProSimX1.WriteInputPoint(16, 3, True)
        oTfFoto.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX1.WriteInputPoint(16, 3, False)
        oTfFoto.BackColor = vbRed
    End If
End Sub

