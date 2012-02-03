VERSION 5.00
Begin VB.Form frmSplash 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5475
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   7635
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5475
   ScaleWidth      =   7635
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Frame fraMainFrame 
      Height          =   5055
      Left            =   165
      TabIndex        =   0
      Top             =   0
      Width           =   7380
      Begin VB.CommandButton Sluiten 
         Caption         =   "Sluiten"
         Height          =   495
         Left            =   480
         TabIndex        =   6
         Top             =   4320
         Width           =   1215
      End
      Begin VB.Label lblTitle 
         Caption         =   "Simulatie:Bedieningspaneel Beltbrug"
         ForeColor       =   &H00000000&
         Height          =   240
         Left            =   600
         TabIndex        =   5
         Tag             =   "Application Title"
         Top             =   1320
         Width           =   3495
      End
      Begin VB.Label lblLicenseTo 
         Alignment       =   1  'Right Justify
         Caption         =   "LicenseTo"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Tag             =   "LicenseTo"
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label lblPlatform 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Windows XP"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   5400
         TabIndex        =   4
         Tag             =   "Platform"
         Top             =   2640
         Width           =   1800
      End
      Begin VB.Label lblVersion 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Version: 1.1"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   5760
         TabIndex        =   3
         Tag             =   "Version"
         Top             =   3000
         Width           =   1455
      End
      Begin VB.Label lblCopyright 
         Alignment       =   1  'Right Justify
         Caption         =   "Copyright: 2007"
         Height          =   255
         Left            =   4680
         TabIndex        =   2
         Tag             =   "Copyright"
         Top             =   3360
         Width           =   2415
      End
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Sluiten_Click()
    frmSplash.Hide
End Sub

