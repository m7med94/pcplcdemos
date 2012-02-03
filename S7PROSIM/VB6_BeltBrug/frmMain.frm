VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{83CC0D70-FEDA-11D1-BE76-0060B06816CF}#1.2#0"; "S7WSPSMX.OCX"
Object = "{B22FECA4-C517-11D3-81C9-00C04F72F100}#1.0#0"; "S7WSPSPX.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   4770
   ClientLeft      =   150
   ClientTop       =   435
   ClientWidth     =   9540
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   318
   ScaleMode       =   0  'User
   ScaleWidth      =   722.729
   StartUpPosition =   1  'CenterOwner
   Begin VB.CheckBox VSU 
      Caption         =   "VSU"
      Height          =   255
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   131
      Top             =   3000
      Width           =   615
   End
   Begin VB.CheckBox TWK2Aan 
      Caption         =   "On"
      Height          =   195
      Left            =   8280
      Style           =   1  'Graphical
      TabIndex        =   125
      Top             =   3000
      Width           =   375
   End
   Begin VB.CheckBox TWK1Aan 
      Caption         =   "On"
      Height          =   195
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   124
      Top             =   3000
      Width           =   375
   End
   Begin VB.CheckBox Br1Hneer 
      Caption         =   "Hneer"
      Height          =   195
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   123
      Top             =   2520
      Width           =   615
   End
   Begin VB.CheckBox Br1Neer 
      Caption         =   " neer"
      Height          =   195
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   122
      Top             =   2280
      Width           =   615
   End
   Begin VB.CheckBox Br1Vneer 
      Caption         =   "Vneer"
      Height          =   195
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   121
      ToolTipText     =   "Handbediening"
      Top             =   2040
      Width           =   615
   End
   Begin VB.CheckBox Br1Vop 
      Caption         =   "VOP"
      Height          =   195
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   120
      Top             =   1800
      Width           =   615
   End
   Begin VB.CheckBox Br1Op 
      Caption         =   " OP"
      Height          =   195
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   119
      Top             =   1560
      Width           =   615
   End
   Begin VB.CheckBox Br1Hop 
      Caption         =   "HOP"
      Height          =   195
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   118
      ToolTipText     =   "Handbediening"
      Top             =   1320
      Width           =   615
   End
   Begin VB.CheckBox Br2Hneer 
      Caption         =   "Hneer"
      Height          =   195
      Left            =   6120
      Style           =   1  'Graphical
      TabIndex        =   117
      Top             =   2520
      Width           =   615
   End
   Begin VB.CheckBox Br2Neer 
      Caption         =   " neer"
      Height          =   195
      Left            =   6120
      Style           =   1  'Graphical
      TabIndex        =   116
      Top             =   2280
      Width           =   615
   End
   Begin VB.CheckBox Br2Vneer 
      Caption         =   "Vneer"
      Height          =   195
      Left            =   6120
      Style           =   1  'Graphical
      TabIndex        =   115
      ToolTipText     =   "Handbediening"
      Top             =   2040
      Width           =   615
   End
   Begin VB.CheckBox Br2Vop 
      Caption         =   "VOP"
      Height          =   195
      Left            =   6120
      Style           =   1  'Graphical
      TabIndex        =   114
      Top             =   1800
      Width           =   615
   End
   Begin VB.CheckBox Br2Op 
      Caption         =   " OP"
      Height          =   195
      Left            =   6120
      Style           =   1  'Graphical
      TabIndex        =   113
      Top             =   1560
      Width           =   615
   End
   Begin VB.CheckBox Br2Hop 
      Caption         =   "HOP"
      Height          =   195
      Left            =   6120
      Style           =   1  'Graphical
      TabIndex        =   112
      ToolTipText     =   "Handbediening"
      Top             =   1320
      Width           =   615
   End
   Begin VB.CheckBox TWK2th 
      Caption         =   "THF"
      Height          =   195
      Left            =   8280
      Style           =   1  'Graphical
      TabIndex        =   111
      Top             =   2760
      Width           =   375
   End
   Begin VB.CheckBox TWK1th 
      Caption         =   "TH"
      Height          =   195
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   110
      Top             =   2760
      Width           =   375
   End
   Begin VB.CheckBox AlleNEER 
      Caption         =   "alle NEER"
      Height          =   315
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   109
      Top             =   4200
      Width           =   855
   End
   Begin VB.CheckBox AlleOP 
      Caption         =   "alle OP"
      Height          =   315
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   108
      Top             =   4200
      Width           =   855
   End
   Begin VB.CheckBox SMPU2d 
      Caption         =   "D"
      Height          =   195
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   105
      Top             =   3000
      Width           =   375
   End
   Begin VB.CheckBox SMPU2f 
      Caption         =   "F"
      Height          =   195
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   104
      Top             =   2760
      Width           =   375
   End
   Begin VB.CheckBox SMPU2w 
      Caption         =   "W"
      Height          =   195
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   103
      Top             =   3000
      Width           =   375
   End
   Begin VB.CheckBox SMPU2th 
      Caption         =   "TH"
      Height          =   195
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   102
      Top             =   2760
      Width           =   375
   End
   Begin VB.CheckBox SMPU1d 
      Caption         =   "D"
      Height          =   195
      Left            =   3240
      Style           =   1  'Graphical
      TabIndex        =   101
      Top             =   3000
      Width           =   375
   End
   Begin VB.CheckBox SMPU1f 
      Caption         =   "F"
      Height          =   195
      Left            =   3240
      Style           =   1  'Graphical
      TabIndex        =   100
      Top             =   2760
      Width           =   375
   End
   Begin VB.CheckBox SMPU1w 
      Caption         =   "W"
      Height          =   195
      Left            =   2760
      Style           =   1  'Graphical
      TabIndex        =   99
      Top             =   3000
      Width           =   375
   End
   Begin VB.CheckBox SMPU1th 
      Caption         =   "TH"
      Height          =   195
      Left            =   2760
      Style           =   1  'Graphical
      TabIndex        =   98
      Top             =   2760
      Width           =   375
   End
   Begin VB.CheckBox FO2 
      Caption         =   "FO"
      Height          =   195
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   95
      Top             =   1800
      Width           =   375
   End
   Begin VB.CheckBox M2th 
      Caption         =   "TH"
      Height          =   195
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   94
      Top             =   2040
      Width           =   375
   End
   Begin VB.CheckBox R1hand 
      Caption         =   "Hand"
      Height          =   195
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   93
      ToolTipText     =   "Handbediening"
      Top             =   1560
      Width           =   735
   End
   Begin VB.CheckBox R1gelicht 
      Caption         =   "Gelicht"
      Height          =   195
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   92
      Top             =   1800
      Width           =   735
   End
   Begin VB.CheckBox R1gevalen 
      Caption         =   "Gevalen"
      Height          =   195
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   91
      Top             =   2040
      Width           =   735
   End
   Begin VB.CheckBox R2hand 
      Caption         =   "Hand"
      Height          =   195
      Left            =   8160
      Style           =   1  'Graphical
      TabIndex        =   90
      ToolTipText     =   "Handbediening"
      Top             =   1560
      Width           =   735
   End
   Begin VB.CheckBox R2gelicht 
      Caption         =   "Gelicht"
      Height          =   195
      Left            =   8160
      Style           =   1  'Graphical
      TabIndex        =   89
      Top             =   1800
      Width           =   735
   End
   Begin VB.CheckBox R2gevalen 
      Caption         =   "Gevalen"
      Height          =   195
      Left            =   8160
      Style           =   1  'Graphical
      TabIndex        =   88
      Top             =   2040
      Width           =   735
   End
   Begin VB.CheckBox M1Hsl 
      Caption         =   "Slinger"
      Height          =   255
      Left            =   6120
      Style           =   1  'Graphical
      TabIndex        =   87
      ToolTipText     =   "Handbediening"
      Top             =   3000
      Width           =   615
   End
   Begin VB.CheckBox FO1 
      Caption         =   "FO"
      Height          =   195
      Left            =   2880
      Style           =   1  'Graphical
      TabIndex        =   86
      Top             =   1800
      Width           =   375
   End
   Begin VB.CheckBox M1th 
      Caption         =   "TH"
      Height          =   195
      Left            =   2880
      Style           =   1  'Graphical
      TabIndex        =   85
      Top             =   2040
      Width           =   375
   End
   Begin VB.CheckBox ASBth12 
      Caption         =   "TH"
      Height          =   195
      Left            =   8400
      Style           =   1  'Graphical
      TabIndex        =   84
      Top             =   3840
      Width           =   375
   End
   Begin VB.CheckBox ASBw12 
      Caption         =   "W"
      Height          =   195
      Left            =   8400
      Style           =   1  'Graphical
      TabIndex        =   83
      Top             =   3600
      Width           =   375
   End
   Begin VB.CheckBox ASBh12 
      Caption         =   "H"
      Height          =   195
      Left            =   8400
      Style           =   1  'Graphical
      TabIndex        =   82
      ToolTipText     =   "Handbediening"
      Top             =   3360
      Width           =   375
   End
   Begin VB.CheckBox ASBth11 
      Caption         =   "TH"
      Height          =   195
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   81
      Top             =   3840
      Width           =   375
   End
   Begin VB.CheckBox ASBw11 
      Caption         =   "W"
      Height          =   195
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   80
      Top             =   3600
      Width           =   375
   End
   Begin VB.CheckBox ASBh11 
      Caption         =   "H"
      Height          =   195
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   79
      ToolTipText     =   "Handbediening"
      Top             =   3360
      Width           =   375
   End
   Begin VB.CheckBox ASBth10 
      Caption         =   "TH"
      Height          =   195
      Left            =   8400
      Style           =   1  'Graphical
      TabIndex        =   78
      Top             =   960
      Width           =   375
   End
   Begin VB.CheckBox ASBw10 
      Caption         =   "W"
      Height          =   195
      Left            =   8400
      Style           =   1  'Graphical
      TabIndex        =   77
      Top             =   720
      Width           =   375
   End
   Begin VB.CheckBox ASBh10 
      Caption         =   "H"
      Height          =   195
      Left            =   8400
      Style           =   1  'Graphical
      TabIndex        =   76
      ToolTipText     =   "Handbediening"
      Top             =   480
      Width           =   375
   End
   Begin VB.CheckBox ASBth8 
      Caption         =   "TH"
      Height          =   195
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   75
      Top             =   960
      Width           =   375
   End
   Begin VB.CheckBox ASBw8 
      Caption         =   "W"
      Height          =   195
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   74
      Top             =   720
      Width           =   375
   End
   Begin VB.CheckBox ASBh8 
      Caption         =   "H"
      Height          =   195
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   73
      ToolTipText     =   "Handbediening"
      Top             =   480
      Width           =   375
   End
   Begin VB.CheckBox ASBth9 
      Caption         =   "TH"
      Height          =   195
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   72
      Top             =   3840
      Width           =   375
   End
   Begin VB.CheckBox ASBw9 
      Caption         =   "W"
      Height          =   195
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   71
      Top             =   3600
      Width           =   375
   End
   Begin VB.CheckBox ASBh9 
      Caption         =   "H"
      Height          =   195
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   70
      ToolTipText     =   "Handbediening"
      Top             =   3360
      Width           =   375
   End
   Begin VB.CheckBox ASBth7 
      Caption         =   "TH"
      Height          =   195
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   69
      Top             =   960
      Width           =   375
   End
   Begin VB.CheckBox ASBw7 
      Caption         =   "W"
      Height          =   195
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   68
      Top             =   720
      Width           =   375
   End
   Begin VB.CheckBox ASBh7 
      Caption         =   "H"
      Height          =   195
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   67
      ToolTipText     =   "Handbediening"
      Top             =   480
      Width           =   375
   End
   Begin VB.CheckBox ASBth6 
      Caption         =   "TH"
      Height          =   195
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   66
      Top             =   960
      Width           =   375
   End
   Begin VB.CheckBox ASBw6 
      Caption         =   "W"
      Height          =   195
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   65
      Top             =   720
      Width           =   375
   End
   Begin VB.CheckBox ASBh6 
      Caption         =   "H"
      Height          =   195
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   64
      ToolTipText     =   "Handbediening"
      Top             =   480
      Width           =   375
   End
   Begin VB.CheckBox ASBth5 
      Caption         =   "TH"
      Height          =   195
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   63
      Top             =   960
      Width           =   375
   End
   Begin VB.CheckBox ASBw5 
      Caption         =   "W"
      Height          =   195
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   62
      Top             =   720
      Width           =   375
   End
   Begin VB.CheckBox ASBh5 
      Caption         =   "H"
      Height          =   195
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   61
      ToolTipText     =   "Handbediening"
      Top             =   480
      Width           =   375
   End
   Begin VB.CheckBox ASBh3 
      Caption         =   "H"
      Height          =   195
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   60
      ToolTipText     =   "Handbediening"
      Top             =   480
      Width           =   375
   End
   Begin VB.CheckBox ASBw3 
      Caption         =   "W"
      Height          =   195
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   59
      Top             =   720
      Width           =   375
   End
   Begin VB.CheckBox ASBth3 
      Caption         =   "TH"
      Height          =   195
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   58
      Top             =   960
      Width           =   375
   End
   Begin VB.CheckBox ASBh4 
      Caption         =   "H"
      Height          =   195
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   57
      ToolTipText     =   "Handbediening"
      Top             =   3360
      Width           =   375
   End
   Begin VB.CheckBox ASBw4 
      Caption         =   "W"
      Height          =   195
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   56
      Top             =   3600
      Width           =   375
   End
   Begin VB.CheckBox ASBth4 
      Caption         =   "TH"
      Height          =   195
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   55
      Top             =   3840
      Width           =   375
   End
   Begin VB.CheckBox ASBh2 
      Caption         =   "H"
      Height          =   195
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   54
      ToolTipText     =   "Handbediening"
      Top             =   3360
      Width           =   375
   End
   Begin VB.CheckBox ASBw2 
      Caption         =   "W"
      Height          =   195
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   53
      Top             =   3600
      Width           =   375
   End
   Begin VB.CheckBox ASBth2 
      Caption         =   "TH"
      Height          =   195
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   52
      Top             =   3840
      Width           =   375
   End
   Begin VB.CheckBox ASBth1 
      Caption         =   "TH"
      Height          =   195
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   51
      Top             =   3840
      Width           =   375
   End
   Begin VB.CheckBox ASBw1 
      Caption         =   "W"
      Height          =   195
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   50
      Top             =   3600
      Width           =   375
   End
   Begin VB.CheckBox ASBh1 
      Caption         =   "H"
      Height          =   195
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   49
      ToolTipText     =   "Handbediening"
      Top             =   3360
      Width           =   375
   End
   Begin VB.Frame Frame12 
      Height          =   375
      Left            =   8400
      TabIndex        =   46
      Top             =   0
      Width           =   735
      Begin VB.OptionButton ASBneer10 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBop10 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame11 
      Height          =   375
      Left            =   7320
      TabIndex        =   43
      Top             =   0
      Width           =   735
      Begin VB.OptionButton ASBneer8 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBop8 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   44
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame10 
      Height          =   375
      Left            =   6480
      TabIndex        =   40
      Top             =   0
      Width           =   735
      Begin VB.OptionButton ASBneer7 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBop7 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame9 
      Height          =   375
      Left            =   4440
      TabIndex        =   37
      Top             =   0
      Width           =   735
      Begin VB.OptionButton ASBneer6 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   39
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBop6 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame8 
      Height          =   375
      Left            =   3480
      TabIndex        =   34
      Top             =   0
      Width           =   735
      Begin VB.OptionButton ASBneer5 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBop5 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame7 
      Height          =   375
      Left            =   2520
      TabIndex        =   31
      Top             =   0
      Width           =   735
      Begin VB.OptionButton ASBop3 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBneer3 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame6 
      Height          =   375
      Left            =   8400
      TabIndex        =   28
      Top             =   4080
      Width           =   735
      Begin VB.OptionButton ASBop12 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBneer12 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame5 
      Height          =   375
      Left            =   7440
      TabIndex        =   25
      Top             =   4080
      Width           =   735
      Begin VB.OptionButton ASBop11 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBneer11 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame4 
      Height          =   375
      Left            =   6480
      TabIndex        =   22
      Top             =   4080
      Width           =   735
      Begin VB.OptionButton ASBneer9 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBop9 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame3 
      Height          =   375
      Left            =   4440
      TabIndex        =   19
      Top             =   4080
      Width           =   735
      Begin VB.OptionButton ASBneer4 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBop4 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame2 
      Height          =   375
      Left            =   3480
      TabIndex        =   16
      Top             =   4080
      Width           =   735
      Begin VB.OptionButton ASBneer2 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBop2 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   120
         Width           =   375
      End
   End
   Begin VB.Frame Frame1 
      Height          =   375
      Left            =   2520
      TabIndex        =   13
      Top             =   4080
      Width           =   735
      Begin VB.OptionButton ASBop1 
         Caption         =   "OP"
         Height          =   255
         Left            =   0
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   120
         Width           =   375
      End
      Begin VB.OptionButton ASBneer1 
         Caption         =   "NR"
         Height          =   255
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   14
         Top             =   120
         Width           =   375
      End
   End
   Begin S7WSPSPXLib.S7ProSimPanel S7ProSimPanel 
      Height          =   3390
      Left            =   0
      TabIndex        =   2
      Top             =   120
      Width           =   2250
      _Version        =   65536
      _ExtentX        =   3969
      _ExtentY        =   5980
      _StockProps     =   0
   End
   Begin VB.Frame Installatie 
      Caption         =   "Installatie"
      Height          =   4215
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   2295
      Begin VB.CommandButton ButtonDiversen 
         Caption         =   "Bedieningspaneel"
         Height          =   375
         Left            =   360
         TabIndex        =   3
         Top             =   3720
         Width           =   1575
      End
   End
   Begin MSComctlLib.StatusBar sbStatusBar 
      Align           =   2  'Align Bottom
      Height          =   270
      Left            =   0
      TabIndex        =   0
      Top             =   4500
      Width           =   9540
      _ExtentX        =   16828
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   11642
            Text            =   "Status"
            TextSave        =   "Status"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            AutoSize        =   2
            TextSave        =   "2-10-2007"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            AutoSize        =   2
            TextSave        =   "15:00"
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   120
      Top             =   840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList imlToolbarIcons 
      Left            =   120
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   13
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0000
            Key             =   "New"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0112
            Key             =   "Open"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0224
            Key             =   "Save"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0336
            Key             =   "Print"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0448
            Key             =   "Cut"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":055A
            Key             =   "Copy"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":066C
            Key             =   "Paste"
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":077E
            Key             =   "Bold"
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0890
            Key             =   "Italic"
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":09A2
            Key             =   "Underline"
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0AB4
            Key             =   "Align Left"
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0BC6
            Key             =   "Center"
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0CD8
            Key             =   "Align Right"
         EndProperty
      EndProperty
   End
   Begin VB.Timer Timer 
      Interval        =   200
      Left            =   120
      Top             =   2040
   End
   Begin VB.Label Label10 
      Caption         =   "9"
      Height          =   255
      Left            =   7200
      TabIndex        =   130
      Top             =   3480
      Width           =   135
   End
   Begin VB.Label Label9 
      Caption         =   "4"
      Height          =   255
      Left            =   5160
      TabIndex        =   129
      Top             =   3480
      Width           =   135
   End
   Begin VB.Label Label8 
      Caption         =   "2"
      Height          =   255
      Left            =   4200
      TabIndex        =   128
      Top             =   3480
      Width           =   135
   End
   Begin VB.Label Label6 
      Caption         =   "ZUID W"
      Height          =   255
      Left            =   5520
      TabIndex        =   127
      Top             =   960
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "NOORD H"
      Height          =   255
      Left            =   5520
      TabIndex        =   126
      Top             =   3360
      Width           =   855
   End
   Begin VB.Shape Motor2Op 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7440
      Shape           =   3  'Circle
      Top             =   1800
      Width           =   300
   End
   Begin VB.Shape Motor2Neer 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7440
      Shape           =   3  'Circle
      Top             =   2040
      Width           =   300
   End
   Begin VB.Shape Motor1Neer 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   2040
      Width           =   300
   End
   Begin VB.Shape Motor1Op 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   1800
      Width           =   300
   End
   Begin VB.Shape TWK2 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   8760
      Shape           =   3  'Circle
      Top             =   2760
      Width           =   300
   End
   Begin VB.Shape TWK1 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   4560
      Shape           =   3  'Circle
      Top             =   2760
      Width           =   300
   End
   Begin VB.Label Label4 
      Caption         =   "SMPU2              TWK2"
      Height          =   255
      Left            =   7080
      TabIndex        =   107
      Top             =   2400
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "SMPU1              TWK1"
      Height          =   255
      Left            =   3000
      TabIndex        =   106
      Top             =   2400
      Width           =   1815
   End
   Begin VB.Shape SMPU2 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7920
      Shape           =   3  'Circle
      Top             =   2760
      Width           =   300
   End
   Begin VB.Shape SMPU1 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3720
      Shape           =   3  'Circle
      Top             =   2760
      Width           =   300
   End
   Begin VB.Label Label2 
      Caption         =   "M2    R2"
      Height          =   255
      Left            =   7440
      TabIndex        =   97
      Top             =   1440
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "M1    R1"
      Height          =   255
      Left            =   3360
      TabIndex        =   96
      Top             =   1440
      Width           =   615
   End
   Begin VB.Shape Motor2 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   255
      Left            =   7080
      Top             =   1440
      Width           =   300
   End
   Begin VB.Shape Rem1 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3720
      Shape           =   3  'Circle
      Top             =   1800
      Width           =   300
   End
   Begin VB.Shape Rem2 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7800
      Shape           =   3  'Circle
      Top             =   1800
      Width           =   300
   End
   Begin VB.Shape Motor1 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   255
      Left            =   2880
      Top             =   1440
      Width           =   300
   End
   Begin VB.Image LVS6rood 
      Height          =   240
      Left            =   9000
      Picture         =   "frmMain.frx":0DEA
      Top             =   2520
      Width           =   240
   End
   Begin VB.Image LVS5rood 
      Height          =   240
      Left            =   9000
      Picture         =   "frmMain.frx":112C
      Top             =   2160
      Width           =   240
   End
   Begin VB.Image LVS4geel 
      Height          =   240
      Left            =   9240
      Picture         =   "frmMain.frx":146E
      Top             =   1800
      Width           =   240
   End
   Begin VB.Image LVS4rood 
      Height          =   240
      Left            =   9000
      Picture         =   "frmMain.frx":17B0
      Top             =   1800
      Width           =   240
   End
   Begin VB.Image LVS3rood 
      Height          =   240
      Left            =   2520
      Picture         =   "frmMain.frx":1AF2
      Top             =   2520
      Width           =   240
   End
   Begin VB.Image LVS2rood 
      Height          =   240
      Left            =   2520
      Picture         =   "frmMain.frx":1E34
      Top             =   2160
      Width           =   240
   End
   Begin VB.Image LVS1geel 
      Height          =   240
      Left            =   2280
      Picture         =   "frmMain.frx":2176
      Top             =   1800
      Width           =   240
   End
   Begin VB.Image LVS1rood 
      Height          =   240
      Left            =   2520
      Picture         =   "frmMain.frx":24B8
      Top             =   1800
      Width           =   240
   End
   Begin VB.Image Image14 
      Height          =   240
      Left            =   6120
      Picture         =   "frmMain.frx":27FA
      Top             =   360
      Width           =   240
   End
   Begin VB.Image Image13 
      Height          =   240
      Left            =   6120
      Picture         =   "frmMain.frx":2B3C
      Top             =   600
      Width           =   240
   End
   Begin VB.Image Image12 
      Height          =   240
      Left            =   6120
      Picture         =   "frmMain.frx":2E7E
      Top             =   120
      Width           =   240
   End
   Begin VB.Image Image11 
      Height          =   240
      Left            =   5400
      Picture         =   "frmMain.frx":31C0
      Top             =   360
      Width           =   240
   End
   Begin VB.Image Image10 
      Height          =   240
      Left            =   5400
      Picture         =   "frmMain.frx":3502
      Top             =   600
      Width           =   240
   End
   Begin VB.Image Image9 
      Height          =   240
      Left            =   5400
      Picture         =   "frmMain.frx":3844
      Top             =   120
      Width           =   240
   End
   Begin VB.Image Image8 
      Height          =   240
      Left            =   5760
      Picture         =   "frmMain.frx":3B86
      Top             =   600
      Width           =   240
   End
   Begin VB.Image Image7 
      Height          =   240
      Left            =   6120
      Picture         =   "frmMain.frx":3EC8
      Top             =   3960
      Width           =   240
   End
   Begin VB.Image Image6 
      Height          =   240
      Left            =   6120
      Picture         =   "frmMain.frx":420A
      Top             =   4200
      Width           =   240
   End
   Begin VB.Image Image5 
      Height          =   240
      Left            =   6120
      Picture         =   "frmMain.frx":454C
      Top             =   3720
      Width           =   240
   End
   Begin VB.Image Image4 
      Height          =   240
      Left            =   5400
      Picture         =   "frmMain.frx":488E
      Top             =   3960
      Width           =   240
   End
   Begin VB.Image Image3 
      Height          =   240
      Left            =   5400
      Picture         =   "frmMain.frx":4BD0
      Top             =   4200
      Width           =   240
   End
   Begin VB.Image Image2 
      Height          =   240
      Left            =   5400
      Picture         =   "frmMain.frx":4F12
      Top             =   3720
      Width           =   240
   End
   Begin VB.Image Image1 
      Height          =   240
      Left            =   5760
      Picture         =   "frmMain.frx":5254
      Top             =   4200
      Width           =   240
   End
   Begin VB.Shape ASBmop6 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   4800
      Shape           =   3  'Circle
      Top             =   480
      Width           =   300
   End
   Begin VB.Shape ASBmop9 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   6840
      Shape           =   3  'Circle
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape ASBmop1 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   2880
      Shape           =   3  'Circle
      Top             =   3600
      Width           =   300
   End
   Begin VB.Label Label7 
      Caption         =   "1"
      Height          =   255
      Left            =   3240
      TabIndex        =   12
      Top             =   3480
      Width           =   135
   End
   Begin VB.Shape ASBmop2 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3840
      Shape           =   3  'Circle
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape ASBmop4 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   4800
      Shape           =   3  'Circle
      Top             =   3600
      Width           =   300
   End
   Begin VB.Label Label15 
      Caption         =   "12"
      Height          =   255
      Left            =   9120
      TabIndex        =   11
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape ASBmop11 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7800
      Shape           =   3  'Circle
      Top             =   3600
      Width           =   300
   End
   Begin VB.Label Label16 
      Caption         =   "11"
      Height          =   255
      Left            =   8160
      TabIndex        =   10
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape ASBmop12 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   8760
      Shape           =   3  'Circle
      Top             =   3600
      Width           =   300
   End
   Begin VB.Shape ASBmop7 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   6840
      Shape           =   3  'Circle
      Top             =   480
      Width           =   300
   End
   Begin VB.Label Label18 
      Caption         =   "7"
      Height          =   255
      Left            =   7200
      TabIndex        =   9
      Top             =   840
      Width           =   135
   End
   Begin VB.Shape ASBmop8 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7800
      Shape           =   3  'Circle
      Top             =   480
      Width           =   300
   End
   Begin VB.Label Label19 
      Caption         =   "8"
      Height          =   255
      Left            =   8160
      TabIndex        =   8
      Top             =   840
      Width           =   135
   End
   Begin VB.Shape ASBmop10 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   8760
      Shape           =   3  'Circle
      Top             =   480
      Width           =   300
   End
   Begin VB.Label Label20 
      Caption         =   "10"
      Height          =   255
      Left            =   9120
      TabIndex        =   7
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape ASBmop3 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   2880
      Shape           =   3  'Circle
      Top             =   480
      Width           =   300
   End
   Begin VB.Label Label21 
      Caption         =   "3"
      Height          =   255
      Left            =   3240
      TabIndex        =   6
      Top             =   840
      Width           =   135
   End
   Begin VB.Shape ASBmop5 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3840
      Shape           =   3  'Circle
      Top             =   480
      Width           =   300
   End
   Begin VB.Label Label22 
      Caption         =   "5"
      Height          =   255
      Left            =   4200
      TabIndex        =   5
      Top             =   840
      Width           =   135
   End
   Begin VB.Label Label23 
      Caption         =   "6"
      Height          =   255
      Left            =   5160
      TabIndex        =   4
      Top             =   840
      Width           =   135
   End
   Begin VB.Shape ASBmneer1 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   2880
      Shape           =   3  'Circle
      Top             =   3840
      Width           =   300
   End
   Begin VB.Shape ASBmneer2 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3840
      Shape           =   3  'Circle
      Top             =   3840
      Width           =   300
   End
   Begin VB.Shape ASBmneer4 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   4800
      Shape           =   3  'Circle
      Top             =   3840
      Width           =   300
   End
   Begin VB.Shape ASBmneer9 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   6840
      Shape           =   3  'Circle
      Top             =   3840
      Width           =   300
   End
   Begin VB.Shape ASBmneer11 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7800
      Shape           =   3  'Circle
      Top             =   3840
      Width           =   300
   End
   Begin VB.Shape ASBmneer12 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   8760
      Shape           =   3  'Circle
      Top             =   3840
      Width           =   300
   End
   Begin VB.Shape ASBmneer7 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   6840
      Shape           =   3  'Circle
      Top             =   720
      Width           =   300
   End
   Begin VB.Shape ASBmneer8 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   7800
      Shape           =   3  'Circle
      Top             =   720
      Width           =   300
   End
   Begin VB.Shape ASBmneer10 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   8760
      Shape           =   3  'Circle
      Top             =   720
      Width           =   300
   End
   Begin VB.Shape ASBmneer3 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   2880
      Shape           =   3  'Circle
      Top             =   720
      Width           =   300
   End
   Begin VB.Shape ASBmneer5 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   3840
      Shape           =   3  'Circle
      Top             =   720
      Width           =   300
   End
   Begin VB.Shape ASBmneer6 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      FillColor       =   &H0000FF00&
      Height          =   240
      Left            =   4800
      Shape           =   3  'Circle
      Top             =   720
      Width           =   300
   End
   Begin S7PROSIMLib.S7ProSim S7ProSim1 
      Left            =   120
      Top             =   2640
      _Version        =   65538
      _ExtentX        =   635
      _ExtentY        =   688
      _StockProps     =   64
      Enabled         =   -1  'True
      Enabled         =   -1  'True
      ScanMode        =   1
   End
   Begin S7PROSIMLib.S7ProSim S7ProSimX 
      Left            =   120
      Top             =   1440
      _Version        =   65538
      _ExtentX        =   635
      _ExtentY        =   688
      _StockProps     =   64
      Enabled         =   -1  'True
      Enabled         =   -1  'True
      ScanMode        =   1
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
   Begin VB.Menu mnuTools 
      Caption         =   "&Tools"
      Begin VB.Menu mnuToolsOptions 
         Caption         =   "&Options..."
      End
   End
   Begin VB.Menu mnuWindow 
      Caption         =   "&Window"
      WindowList      =   -1  'True
      Begin VB.Menu mnuWindowNewWindow 
         Caption         =   "&New Window"
      End
      Begin VB.Menu mnuWindowBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuWindowCascade 
         Caption         =   "&Cascade"
      End
      Begin VB.Menu mnuWindowTileHorizontal 
         Caption         =   "Tile &Horizontal"
      End
      Begin VB.Menu mnuWindowTileVertical 
         Caption         =   "Tile &Vertical"
      End
      Begin VB.Menu mnuWindowArrangeIcons 
         Caption         =   "&Arrange Icons"
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
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function OSWinHelp% Lib "user32" Alias "WinHelpA" (ByVal hwnd&, ByVal HelpFile$, ByVal wCommand%, dwData As Any)




Private Sub ButtonDiversen_Click()
    frmProcesvoering.Show
End Sub
Private Sub Form_Load()
    ''MsgBox "The current directory is " & CurDir

    SVSnoSPER = False
    SVSnoDOOR = False
    SVSnoSTOP = False
    SVSnwSPER = False
    SVSnwDOOR = False
    SVSnwSTOP = False
    SVSnONDER = False
    SVSzoSPER = False
    SVSzoDOOR = False
    SVSzoSTOP = False
    SVSzwSPER = False
    SVSzwDOOR = False
    SVSzwSTOP = False
    SVSzONDER = False
    
    'werkschakelaars
       ASBw1.Value = 1
       ASBw2.Value = 1
       ASBw3.Value = 1
       ASBw4.Value = 1
       ASBw5.Value = 1
       ASBw6.Value = 1
       ASBw7.Value = 1
       ASBw8.Value = 1
       ASBw9.Value = 1
       ASBw10.Value = 1
       ASBw11.Value = 1
       ASBw12.Value = 1
        
    'thermisch
       ASBth1.Value = 1
       ASBth2.Value = 1
       ASBth3.Value = 1
       ASBth4.Value = 1
       ASBth5.Value = 1
       ASBth6.Value = 1
       ASBth7.Value = 1
       ASBth8.Value = 1
       ASBth9.Value = 1
       ASBth10.Value = 1
       ASBth11.Value = 1
       ASBth12.Value = 1
    
    'hand
       ASBh1.Value = 1
       ASBh2.Value = 1
       ASBh3.Value = 1
       ASBh4.Value = 1
       ASBh5.Value = 1
       ASBh6.Value = 1
       ASBh7.Value = 1
       ASBh8.Value = 1
       ASBh9.Value = 1
       ASBh10.Value = 1
       ASBh11.Value = 1
       ASBh12.Value = 1
       
     'op
     ASBop1.Value = 1
     ASBop2.Value = 1
     ASBop3.Value = 1
     ASBop4.Value = 1
     ASBop5.Value = 1
     ASBop6.Value = 1
     ASBop7.Value = 1
     ASBop8.Value = 1
     ASBop9.Value = 1
     ASBop10.Value = 1
     ASBop11.Value = 1
     ASBop12.Value = 1
     
       
    'motoren
       M1th.Value = 1
       M2th.Value = 1
       FO1.Value = 1
       FO2.Value = 1
       M1Hsl.Value = 0
    'Rem
       R1gevalen.Value = 1
       R2gevalen.Value = 1
    'Brug
       Br1Neer.Value = 1
       Br2Neer.Value = 1
     ' M1Hsl.Value = 1
    'SMPU
       SMPU1th.Value = 1
       'SMPU1f.Value = 1
       'SMPU1d.Value = 1
       SMPU1w.Value = 1
       SMPU2th.Value = 1
       'SMPU2f.Value = 1
       'SMPU2d.Value = 1
       SMPU2w.Value = 1
    'TWK
       TWK1th.Value = 1
       TWK2th.Value = 1
       TWK1Aan.Value = 1
       TWK2Aan.Value = 1
    'VSU 1 en 2
       VSU.Value = 1
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

Private Sub Image3_Click()
    If SVSnoSPER Then
        Image3.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSnoSPER = False
    Else
        Image3.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        SVSnoSPER = True
    End If
End Sub
Private Sub Image4_Click()
    If SVSnoDOOR Then
        Image4.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSnoDOOR = False
    Else
        Image4.Picture = LoadPicture(CurDir & "\bmps\groen.bmp")
        SVSnoDOOR = True
    End If
End Sub
Private Sub Image2_Click()
    If SVSnoSTOP Then
        Image2.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSnoSTOP = False
    Else
        Image2.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        SVSnoSTOP = True
    End If
End Sub
Private Sub Image6_Click()
    If SVSnwSPER Then
        Image6.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSnwSPER = False
    Else
        Image6.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        SVSnwSPER = True
    End If
End Sub

Private Sub Image7_Click()
    If SVSnwDOOR Then
        Image7.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSnwDOOR = False
    Else
        Image7.Picture = LoadPicture(CurDir & "\bmps\groen.bmp")
        SVSnwDOOR = True
    End If
End Sub
Private Sub Image5_Click()
    If SVSnwSTOP Then
        Image5.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSnwSTOP = False
    Else
        Image5.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        SVSnwSTOP = True
    End If
End Sub
Private Sub Image1_Click()
    If SVSnONDER Then
        Image1.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSnONDER = False
    Else
        Image1.Picture = LoadPicture(CurDir & "\bmps\geel.bmp")
        SVSnONDER = True
    End If
End Sub
Private Sub Image10_Click()
    If SVSzoSPER Then
        Image10.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSzoSPER = False
    Else
        Image10.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        SVSzoSPER = True
    End If
End Sub
Private Sub Image11_Click()
    If SVSzoDOOR Then
        Image11.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSzoDOOR = False
    Else
        Image11.Picture = LoadPicture(CurDir & "\bmps\groen.bmp")
        SVSzoDOOR = True
    End If
End Sub
Private Sub Image9_Click()
    If SVSzoSTOP Then
        Image9.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSzoSTOP = False
    Else
        Image9.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        SVSzoSTOP = True
    End If
End Sub
Private Sub Image13_Click()
    If SVSzwSPER Then
        Image13.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSzwSPER = False
    Else
        Image13.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        SVSzwSPER = True
    End If
End Sub
Private Sub Image14_Click()
    If SVSzwDOOR Then
        Image14.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSzwDOOR = False
    Else
        Image14.Picture = LoadPicture(CurDir & "\bmps\groen.bmp")
        SVSzwDOOR = True
    End If
End Sub
Private Sub Image12_Click()
    If SVSzwSTOP Then
        Image12.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSzwSTOP = False
    Else
        Image12.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        SVSzwSTOP = True
    End If

End Sub
Private Sub Image8_Click()
    If SVSzONDER Then
        Image8.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        SVSzONDER = False
    Else
        Image8.Picture = LoadPicture(CurDir & "\bmps\geel.bmp")
        SVSzONDER = True
    End If
End Sub

Private Sub LVS1geel_Click()
    If LVS1g Then
        LVS1geel.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS1g = False
        LVS2g = False
        LVS3g = False
    Else
        LVS1geel.Picture = LoadPicture(CurDir & "\bmps\geel.bmp")
        LVS1g = True
        LVS2g = True
        LVS3g = True
    End If
End Sub

Private Sub LVS1rood_Click()
    If LVS1r Then
        LVS1rood.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS1r = False
    Else
        LVS1rood.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        LVS1r = True
    End If
End Sub

Private Sub LVS2rood_Click()
    If LVS2r Then
        LVS2rood.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS2r = False
    Else
        LVS2rood.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        LVS2r = True
    End If
End Sub

Private Sub LVS3rood_Click()
    If LVS3r Then
        LVS3rood.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS3r = False
    Else
        LVS3rood.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        LVS3r = True
    End If
End Sub

Private Sub LVS4geel_Click()
    If LVS4g Then
        LVS4geel.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS4g = False
        LVS5g = False
        LVS6g = False
    Else
        LVS4geel.Picture = LoadPicture(CurDir & "\bmps\geel.bmp")
        LVS4g = True
        LVS5g = True
        LVS6g = True
    End If
End Sub

Private Sub LVS4rood_Click()
    If LVS4r Then
        LVS4rood.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS4r = False
    Else
        LVS4rood.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        LVS4r = True
    End If
End Sub

Private Sub LVS5rood_Click()
    If LVS5r Then
        LVS5rood.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS5r = False
    Else
        LVS5rood.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        LVS5r = True
    End If
End Sub

Private Sub LVS6geel_Click()
    If LVS6g Then
        LVS6geel.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS6g = False
    Else
        LVS6geel.Picture = LoadPicture(CurDir & "\bmps\geel.bmp")
        LVS6g = True
    End If
End Sub

Private Sub LVS6rood_Click()
    If LVS6r Then
        LVS6rood.Picture = LoadPicture(CurDir & "\bmps\grijs.bmp")
        LVS6r = False
    Else
        LVS6rood.Picture = LoadPicture(CurDir & "\bmps\rood.bmp")
        LVS6r = True
    End If
End Sub
Private Sub mnuHelpAbout_Click()
    frmSplash.Show
End Sub

Private Sub mnuHelpSearchForHelpOn_Click()
    Dim nRet As Integer


    'if there is no helpfile for this project display a message to the user
    'you can set the HelpFile for your application in the
    'Project Properties dialog
    If Len(App.HelpFile) = 0 Then
        MsgBox "Unable to display Help Contents. There is no Help associated with this project.", vbInformation, Me.Caption
    Else
        On Error Resume Next
        nRet = OSWinHelp(Me.hwnd, App.HelpFile, 261, 0)
        If Err Then
            MsgBox Err.Description
        End If
    End If

End Sub

Private Sub mnuHelpContents_Click()
    Dim nRet As Integer


    'if there is no helpfile for this project display a message to the user
    'you can set the HelpFile for your application in the
    'Project Properties dialog
    If Len(App.HelpFile) = 0 Then
        MsgBox "Unable to display Help Contents. There is no Help associated with this project.", vbInformation, Me.Caption
    Else
        On Error Resume Next
        nRet = OSWinHelp(Me.hwnd, App.HelpFile, 3, 0)
        If Err Then
            MsgBox Err.Description
        End If
    End If

End Sub


Private Sub mnuWindowArrangeIcons_Click()
    'ToDo: Add 'mnuWindowArrangeIcons_Click' code.
    MsgBox "Add 'mnuWindowArrangeIcons_Click' code."
End Sub

Private Sub mnuWindowTileVertical_Click()
    'ToDo: Add 'mnuWindowTileVertical_Click' code.
    MsgBox "Add 'mnuWindowTileVertical_Click' code."
End Sub

Private Sub mnuWindowTileHorizontal_Click()
    'ToDo: Add 'mnuWindowTileHorizontal_Click' code.
    MsgBox "Add 'mnuWindowTileHorizontal_Click' code."
End Sub

Private Sub mnuWindowCascade_Click()
    'ToDo: Add 'mnuWindowCascade_Click' code.
    MsgBox "Add 'mnuWindowCascade_Click' code."
End Sub

Private Sub mnuWindowNewWindow_Click()
    'ToDo: Add 'mnuWindowNewWindow_Click' code.
    MsgBox "Add 'mnuWindowNewWindow_Click' code."
End Sub

Private Sub mnuToolsOptions_Click()
    'ToDo: Add 'mnuToolsOptions_Click' code.
    MsgBox "Add 'mnuToolsOptions_Click' code."
End Sub

Private Sub mnuViewWebBrowser_Click()
    'ToDo: Add 'mnuViewWebBrowser_Click' code.
    MsgBox "Add 'mnuViewWebBrowser_Click' code."
End Sub

Private Sub mnuViewOptions_Click()
    'ToDo: Add 'mnuViewOptions_Click' code.
    MsgBox "Add 'mnuViewOptions_Click' code."
End Sub

Private Sub mnuViewRefresh_Click()
    'ToDo: Add 'mnuViewRefresh_Click' code.
    MsgBox "Add 'mnuViewRefresh_Click' code."
End Sub

Private Sub mnuViewStatusBar_Click()
    mnuViewStatusBar.Checked = Not mnuViewStatusBar.Checked
    sbStatusBar.Visible = mnuViewStatusBar.Checked
End Sub

Private Sub mnuViewToolbar_Click()
    mnuViewToolbar.Checked = Not mnuViewToolbar.Checked
    tbToolBar.Visible = mnuViewToolbar.Checked
End Sub

Private Sub mnuEditPasteSpecial_Click()
    'ToDo: Add 'mnuEditPasteSpecial_Click' code.
    MsgBox "Add 'mnuEditPasteSpecial_Click' code."
End Sub

Private Sub mnuEditPaste_Click()
    'ToDo: Add 'mnuEditPaste_Click' code.
    MsgBox "Add 'mnuEditPaste_Click' code."
End Sub

Private Sub mnuEditCopy_Click()
    'ToDo: Add 'mnuEditCopy_Click' code.
    MsgBox "Add 'mnuEditCopy_Click' code."
End Sub

Private Sub mnuEditCut_Click()
    'ToDo: Add 'mnuEditCut_Click' code.
    MsgBox "Add 'mnuEditCut_Click' code."
End Sub

Private Sub mnuEditUndo_Click()
    'ToDo: Add 'mnuEditUndo_Click' code.
    MsgBox "Add 'mnuEditUndo_Click' code."
End Sub

Private Sub mnuFileExit_Click()
    'unload the form
    Unload Me

End Sub

Private Sub mnuFileSend_Click()
    'ToDo: Add 'mnuFileSend_Click' code.
    MsgBox "Add 'mnuFileSend_Click' code."
End Sub

Private Sub mnuFilePrint_Click()
    'ToDo: Add 'mnuFilePrint_Click' code.
    MsgBox "Add 'mnuFilePrint_Click' code."
End Sub

Private Sub mnuFilePrintPreview_Click()
    'ToDo: Add 'mnuFilePrintPreview_Click' code.
    MsgBox "Add 'mnuFilePrintPreview_Click' code."
End Sub

Private Sub mnuFilePageSetup_Click()
    On Error Resume Next
    With dlgCommonDialog
        .DialogTitle = "Page Setup"
        .CancelError = True
        .ShowPrinter
    End With

End Sub

Private Sub mnuFileProperties_Click()
    'ToDo: Add 'mnuFileProperties_Click' code.
    MsgBox "Add 'mnuFileProperties_Click' code."
End Sub

Private Sub mnuFileSaveAll_Click()
    'ToDo: Add 'mnuFileSaveAll_Click' code.
    MsgBox "Add 'mnuFileSaveAll_Click' code."
End Sub

Private Sub mnuFileSaveAs_Click()
    'ToDo: Add 'mnuFileSaveAs_Click' code.
    MsgBox "Add 'mnuFileSaveAs_Click' code."
End Sub

Private Sub mnuFileSave_Click()
    'ToDo: Add 'mnuFileSave_Click' code.
    MsgBox "Add 'mnuFileSave_Click' code."
End Sub

Private Sub mnuFileClose_Click()
    'ToDo: Add 'mnuFileClose_Click' code.
    MsgBox "Add 'mnuFileClose_Click' code."
End Sub

Private Sub mnuFileOpen_Click()
    Dim sFile As String


    With dlgCommonDialog
        .DialogTitle = "Open"
        .CancelError = False
        'ToDo: set the flags and attributes of the common dialog control
        .Filter = "All Files (*.*)|*.*"
        .ShowOpen
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        sFile = .FileName
    End With
    'ToDo: add code to process the opened file

End Sub

Private Sub mnuFileNew_Click()
    'ToDo: Add 'mnuFileNew_Click' code.
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
'*************************************************************************
'BRUG
 '---------------------------------------------------------
    'Alles OP of NEER
    If AlleOP.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(64, 7, True)
        AlleOP.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(64, 7, False)
        AlleOP.BackColor = vbButtonFace
    End If
    If AlleNEER.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(64, 6, True)
        AlleNEER.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(64, 6, False)
        AlleNEER.BackColor = vbButtonFace
    End If
    
    'SMPU1
    ReturnValue = S7ProSimX.ReadOutputPoint(117, 1, S7_Bit, Data)
    If Data Then
        SMPU1.BackColor = ColorGreen
    Else
        SMPU1.BackColor = ColorGray
    End If
    If SMPU1th.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(32, 1, True)
        SMPU1th.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(32, 1, False)
        SMPU1th.BackColor = vbButtonFace
    End If
    If SMPU1f.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(32, 2, True)
        SMPU1f.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(32, 2, False)
        SMPU1f.BackColor = vbButtonFace
    End If
    If SMPU1d.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(32, 3, True)
        SMPU1d.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(32, 3, False)
        SMPU1d.BackColor = vbButtonFace
    End If
    If SMPU1w.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(32, 4, True)
        SMPU1w.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(32, 4, False)
        SMPU1w.BackColor = vbButtonFace
    End If
    
    'SMPU2
    ReturnValue = S7ProSimX.ReadOutputPoint(117, 3, S7_Bit, Data)
    If Data Then
        SMPU2.BackColor = ColorGreen
    Else
        SMPU2.BackColor = ColorGray
    End If
    If SMPU2th.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(32, 7, True)
        SMPU2th.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(32, 7, False)
        SMPU2th.BackColor = vbButtonFace
    End If
    If SMPU2f.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(33, 0, True)
        SMPU2f.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(33, 0, False)
        SMPU2f.BackColor = vbButtonFace
    End If
    If SMPU2d.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(33, 1, True)
        SMPU2d.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(33, 1, False)
        SMPU2d.BackColor = vbButtonFace
    End If
    If SMPU2w.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(33, 2, True)
        SMPU2w.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(33, 2, False)
        SMPU2w.BackColor = vbButtonFace
    End If
    
    'TWK1
    ReturnValue = S7ProSimX.ReadOutputPoint(117, 2, S7_Bit, Data)
    If Data Then
        TWK1.BackColor = ColorGreen
    Else
        TWK1.BackColor = ColorGray
    End If
    If TWK1th.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(32, 5, True)
        TWK1th.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(32, 5, False)
        TWK1th.BackColor = vbButtonFace
    End If
    If TWK1Aan.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(32, 6, True)
        TWK1Aan.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(32, 6, False)
        TWK1Aan.BackColor = vbButtonFace
    End If
    'TWK2
    ReturnValue = S7ProSimX.ReadOutputPoint(117, 4, S7_Bit, Data)
    If Data Then
        TWK2.BackColor = ColorGreen
    Else
        TWK2.BackColor = ColorGray
    End If
    If TWK2th.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(33, 3, True)
        TWK2th.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(33, 3, False)
        TWK2th.BackColor = vbButtonFace
    End If
    If TWK2Aan.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(33, 4, True)
        TWK2Aan.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(33, 4, False)
        TWK2Aan.BackColor = vbButtonFace
    End If
'WSU 1 en 2
    If VSU.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(29, 6, True)
        ReturnValue = S7ProSimX.WriteInputPoint(29, 7, True)
        VSU.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(29, 6, False)
        ReturnValue = S7ProSimX.WriteInputPoint(29, 7, False)
        VSU.BackColor = vbButtonFace
    End If

'*********************************************************
    'Brug1
    If Br1Hop.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(28, 3, True)
        Br1Hop.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(28, 3, False)
        Br1Hop.BackColor = vbButtonFace
    End If
    If Br1Op.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(65, 4, True)
        Br1Op.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(65, 4, False)
        Br1Op.BackColor = vbButtonFace
    End If
    If Br1Vop.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(28, 1, True)
        Br1Vop.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(28, 1, False)
        Br1Vop.BackColor = vbButtonFace
    End If
    If Br1Vneer.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(28, 2, True)
        Br1Vneer.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(28, 2, False)
        Br1Vneer.BackColor = vbButtonFace
    End If
    If Br1Neer.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(65, 5, True)
        Br1Neer.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(65, 5, False)
        Br1Neer.BackColor = vbButtonFace
    End If
    If Br1Hneer.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(28, 4, True)
        Br1Hneer.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(28, 4, False)
        Br1Hneer.BackColor = vbButtonFace
    End If
'**************************************************
    'Brug2
    If Br2Hop.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(28, 7, True)
        Br2Hop.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(28, 7, False)
        Br2Hop.BackColor = vbButtonFace
    End If
    If Br2Op.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(65, 6, True)
        Br2Op.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(65, 6, False)
        Br2Op.BackColor = vbButtonFace
    End If
    If Br2Vop.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(28, 5, True)
        Br2Vop.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(28, 5, False)
        Br2Vop.BackColor = vbButtonFace
    End If
    If Br2Vneer.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(28, 6, True)
        Br2Vneer.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(28, 6, False)
        Br2Vneer.BackColor = vbButtonFace
    End If
    If Br2Neer.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(65, 7, True)
        Br2Neer.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(65, 7, False)
        Br2Neer.BackColor = vbButtonFace
    End If
    If Br2Hneer.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(29, 0, True)
        Br2Hneer.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(29, 0, False)
        Br2Hneer.BackColor = vbButtonFace
    End If
'*********************************************************************
    'Rem 1r
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 6, S7_Bit, Data)
    If Data Then
        Rem1.BackColor = ColorGreen
    Else
        Rem1.BackColor = ColorGray
    End If
    If R1hand.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(29, 4, True)
        R1hand.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(29, 4, False)
        R1hand.BackColor = vbButtonFace
    End If
    If R1gelicht.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(29, 3, True)
        R1gelicht.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(29, 3, False)
        R1gelicht.BackColor = vbButtonFace
    End If
    If R1gevalen.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(29, 2, True)
        R1gevalen.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(29, 2, False)
        R1gevalen.BackColor = vbButtonFace
    End If
    
    'Rem 2
    ReturnValue = S7ProSimX.ReadOutputPoint(113, 7, S7_Bit, Data)
    If Data Then
        Rem2.BackColor = ColorGreen
    Else
        Rem2.BackColor = ColorGray
    End If
    If R2hand.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(21, 7, True)
        R2hand.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(21, 7, False)
        R2hand.BackColor = vbButtonFace
    End If
    If R2gelicht.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(21, 6, True)
        R2gelicht.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(21, 6, False)
        R2gelicht.BackColor = vbButtonFace
    End If
    If R2gevalen.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(21, 5, True)
        R2gevalen.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(21, 5, False)
        R2gevalen.BackColor = vbButtonFace
    End If
     
    'Motor 1
    ReturnValue = S7ProSimX.ReadOutputPoint(116, 0, S7_Bit, Data)
    If Data Then
        Motor1Op.BackColor = ColorGreen
    Else
        Motor1Op.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(116, 1, S7_Bit, Data)
    If Data Then
        Motor1Neer.BackColor = ColorGreen
    Else
        Motor1Neer.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(168, 3, S7_Bit, Data)
    If Data Then
        Motor1.BackColor = ColorGreen
    Else
        Motor1.BackColor = ColorGray
    End If
    If M1th.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(0, 5, True)
        M1th.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(0, 5, False)
        M1th.BackColor = vbButtonFace
    End If
    If FO1.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(25, 6, True)
        FO1.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(25, 6, False)
        FO1.BackColor = vbButtonFace
    End If
     If M1Hsl.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(28, 0, True)
        M1Hsl.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(28, 0, False)
        M1Hsl.BackColor = vbButtonFace
    End If
   '---------------------------------------------------------
    'M2
    ReturnValue = S7ProSimX.ReadOutputPoint(168, 4, S7_Bit, Data)
    If Data Then
        Motor2.BackColor = ColorGreen
    Else
        Motor2.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(116, 2, S7_Bit, Data)
    If Data Then
        Motor2Op.BackColor = ColorGreen
    Else
        Motor2Op.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(116, 3, S7_Bit, Data)
    If Data Then
        Motor2Neer.BackColor = ColorGreen
    Else
        Motor2Neer.BackColor = ColorGray
    End If
    If M2th.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(0, 6, True)
        M2th.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(0, 6, False)
        M2th.BackColor = vbButtonFace
    End If
    If FO2.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(25, 7, True)
        FO2.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(25, 7, False)
        FO2.BackColor = vbButtonFace
    End If
 '*************************************************************************
    'ASB1
    ReturnValue = S7ProSimX.WriteInputPoint(4, 1, ASBop1.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(4, 2, ASBneer1.Value)
    If ASBh1.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(4, 3, True)
        ASBh1.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(4, 3, False)
        ASBh1.BackColor = vbButtonFace
    End If
        If ASBw1.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(4, 4, True)
        ASBw1.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(4, 4, False)
        ASBw1.BackColor = vbButtonFace
    End If
    If ASBth1.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(4, 5, True)
        ASBth1.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(4, 5, False)
        ASBth1.BackColor = vbButtonFace
    End If
    
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 0, S7_Bit, Data)
    If Data Then
        ASBmop1.BackColor = ColorGreen
    Else
        ASBmop1.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 1, S7_Bit, Data)
    If Data Then
        ASBmneer1.BackColor = ColorGreen
    Else
        ASBmneer1.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB2
    ReturnValue = S7ProSimX.WriteInputPoint(4, 6, ASBop2.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(4, 7, ASBneer2.Value)
    If ASBh2.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(5, 0, True)
        ASBh2.BackColor = vbBlue
   Else
        ReturnValue = S7ProSimX.WriteInputPoint(5, 0, False)
        ASBh2.BackColor = vbButtonFace
    End If
    If ASBw2.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(5, 1, True)
        ASBw2.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(5, 1, False)
        ASBw2.BackColor = vbButtonFace
    End If
    If ASBth2.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(5, 2, True)
        ASBth2.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(5, 2, False)
        ASBth2.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 2, S7_Bit, Data)
    If Data Then
        ASBmop2.BackColor = ColorGreen
    Else
        ASBmop2.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 3, S7_Bit, Data)
    If Data Then
        ASBmneer2.BackColor = ColorGreen
    Else
        ASBmneer2.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB3
    ReturnValue = S7ProSimX.WriteInputPoint(5, 3, ASBop3.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(5, 4, ASBneer3.Value)
    If ASBh3.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(5, 5, True)
        ASBh3.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(5, 5, False)
        ASBh3.BackColor = vbButtonFace
    End If
    If ASBw3.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(5, 6, True)
        ASBw3.BackColor = vbGreen
   Else
        ReturnValue = S7ProSimX.WriteInputPoint(5, 6, False)
        ASBw3.BackColor = vbButtonFace
    End If
    If ASBth3.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(5, 7, True)
        ASBth3.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(5, 7, False)
        ASBth3.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 2, S7_Bit, Data)
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 4, S7_Bit, Data)
    If Data Then
        ASBmop3.BackColor = ColorGreen
    Else
        ASBmop3.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 5, S7_Bit, Data)
    If Data Then
        ASBmneer3.BackColor = ColorGreen
    Else
        ASBmneer3.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB4
    ReturnValue = S7ProSimX.WriteInputPoint(8, 0, ASBop4.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(8, 1, ASBneer4.Value)
    If ASBh4.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(8, 2, True)
        ASBh4.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(8, 2, False)
        ASBh4.BackColor = vbButtonFace
    End If
    If ASBw4.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(8, 3, True)
        ASBw4.BackColor = vbGreen
   Else
        ReturnValue = S7ProSimX.WriteInputPoint(8, 3, False)
         ASBw4.BackColor = vbButtonFace
    End If
    If ASBth4.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(8, 4, True)
        ASBth4.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(8, 4, False)
        ASBth4.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 6, S7_Bit, Data)
    If Data Then
        ASBmop4.BackColor = ColorGreen
    Else
        ASBmop4.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 7, S7_Bit, Data)
    If Data Then
        ASBmneer4.BackColor = ColorGreen
    Else
        ASBmneer4.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB5
    ReturnValue = S7ProSimX.WriteInputPoint(8, 5, ASBop5.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(8, 6, ASBneer5.Value)
    If ASBh5.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(8, 7, True)
        ASBh5.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(8, 7, False)
        ASBh5.BackColor = vbButtonFace
    End If
    If ASBw5.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(9, 0, True)
        ASBw5.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(9, 0, False)
        ASBw5.BackColor = vbButtonFace
    End If
    If ASBth5.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(9, 1, True)
        ASBth5.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(9, 1, False)
        ASBth5.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(100, 6, S7_Bit, Data)
    ReturnValue = S7ProSimX.ReadOutputPoint(104, 0, S7_Bit, Data)
    If Data Then
        ASBmop5.BackColor = ColorGreen
    Else
        ASBmop5.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(104, 1, S7_Bit, Data)
    If Data Then
        ASBmneer5.BackColor = ColorGreen
    Else
        ASBmneer5.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB6
    ReturnValue = S7ProSimX.WriteInputPoint(9, 2, ASBop6.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(9, 3, ASBneer6.Value)
    If ASBh6.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(9, 4, True)
        ASBh6.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(9, 4, False)
        ASBh6.BackColor = vbButtonFace
    End If
    If ASBw6.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(9, 5, True)
        ASBw6.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(9, 5, False)
        ASBw6.BackColor = vbButtonFace
    End If
    If ASBth6.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(9, 6, True)
        ASBth6.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(9, 6, False)
        ASBth6.BackColor = vbButtonFace
    End If
     ReturnValue = S7ProSimX.ReadOutputPoint(100, 6, S7_Bit, Data)
    ReturnValue = S7ProSimX.ReadOutputPoint(104, 2, S7_Bit, Data)
    If Data Then
        ASBmop6.BackColor = ColorGreen
    Else
        ASBmop6.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(104, 3, S7_Bit, Data)
    If Data Then
        ASBmneer6.BackColor = ColorGreen
    Else
        ASBmneer6.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB7
    ReturnValue = S7ProSimX.WriteInputPoint(9, 7, ASBop7.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(12, 0, ASBneer7.Value)
    If ASBh7.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 1, True)
        ASBh7.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 1, False)
        ASBh7.BackColor = vbButtonFace
    End If
    If ASBw7.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 2, True)
        ASBw7.BackColor = vbGreen
   Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 2, False)
        ASBw7.BackColor = vbButtonFace
    End If
    If ASBth7.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 3, True)
        ASBth7.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 3, False)
        ASBth7.BackColor = vbButtonFace
    End If
     ReturnValue = S7ProSimX.ReadOutputPoint(104, 4, S7_Bit, Data)
    If Data Then
        ASBmop7.BackColor = ColorGreen
    Else
        ASBmop7.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(104, 5, S7_Bit, Data)
    If Data Then
        ASBmneer7.BackColor = ColorGreen
    Else
        ASBmneer7.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB8
    ReturnValue = S7ProSimX.WriteInputPoint(12, 4, ASBop8.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(12, 5, ASBneer8.Value)
    If ASBh8.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 6, True)
        ASBh8.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 6, False)
        ASBh8.BackColor = vbButtonFace
    End If
    If ASBw8.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(12, 7, True)
        ASBw8.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(12, 7, False)
        ASBw8.BackColor = vbButtonFace
    End If
    If ASBth8.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(13, 0, True)
        ASBth8.BackColor = vbRed
   Else
        ReturnValue = S7ProSimX.WriteInputPoint(13, 0, False)
         ASBth8.BackColor = vbButtonFace
    End If
  ReturnValue = S7ProSimX.ReadOutputPoint(104, 6, S7_Bit, Data)
    If Data Then
        ASBmop8.BackColor = ColorGreen
    Else
        ASBmop8.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(104, 7, S7_Bit, Data)
    If Data Then
        ASBmneer8.BackColor = ColorGreen
    Else
        ASBmneer8.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB9
    ReturnValue = S7ProSimX.WriteInputPoint(13, 1, ASBop9.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(13, 2, ASBneer9.Value)
    If ASBh9.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(13, 3, True)
        ASBh9.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(13, 3, False)
        ASBh9.BackColor = vbButtonFace
    End If
    If ASBw9.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(13, 4, True)
        ASBw9.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(13, 4, False)
        ASBw9.BackColor = vbButtonFace
    End If
    If ASBth9.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(13, 5, True)
        ASBth9.BackColor = vbRed
   Else
        ReturnValue = S7ProSimX.WriteInputPoint(13, 5, False)
         ASBth9.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(108, 0, S7_Bit, Data)
    If Data Then
        ASBmop9.BackColor = ColorGreen
    Else
        ASBmop9.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(108, 1, S7_Bit, Data)
    If Data Then
        ASBmneer9.BackColor = ColorGreen
    Else
        ASBmneer9.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB10
    ReturnValue = S7ProSimX.WriteInputPoint(13, 6, ASBop10.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(13, 7, ASBneer10.Value)
    If ASBh10.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(16, 0, True)
        ASBh10.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(16, 0, False)
        ASBh10.BackColor = vbButtonFace
    End If
    If ASBw10.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(16, 1, True)
        ASBw10.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(16, 1, False)
        ASBw10.BackColor = vbButtonFace
    End If
    If ASBth10.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(16, 2, True)
        ASBth10.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(16, 2, False)
        ASBth10.BackColor = vbButtonFace
   End If
    ReturnValue = S7ProSimX.ReadOutputPoint(108, 2, S7_Bit, Data)
    If Data Then
        ASBmop10.BackColor = ColorGreen
    Else
        ASBmop10.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(108, 3, S7_Bit, Data)
    If Data Then
        ASBmneer10.BackColor = ColorGreen
    Else
        ASBmneer10.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB11
    ReturnValue = S7ProSimX.WriteInputPoint(16, 3, ASBop11.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(16, 4, ASBneer11.Value)
    If ASBh11.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(16, 5, True)
        ASBh11.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(16, 5, False)
        ASBh11.BackColor = vbButtonFace
    End If
    If ASBw11.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(16, 6, True)
        ASBw11.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(16, 6, False)
        ASBw11.BackColor = vbButtonFace
    End If
    If ASBth11.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(16, 7, True)
        ASBth11.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(16, 7, False)
        ASBth11.BackColor = vbButtonFace
   End If
    ReturnValue = S7ProSimX.ReadOutputPoint(108, 4, S7_Bit, Data)
    If Data Then
        ASBmop11.BackColor = ColorGreen
    Else
        ASBmop11.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(108, 5, S7_Bit, Data)
    If Data Then
        ASBmneer11.BackColor = ColorGreen
    Else
        ASBmneer11.BackColor = ColorGray
    End If

'*************************************************************************
   'ASB12
    ReturnValue = S7ProSimX.WriteInputPoint(17, 0, ASBop12.Value)
    ReturnValue = S7ProSimX.WriteInputPoint(17, 1, ASBneer12.Value)
    If ASBh12.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(17, 2, True)
        ASBh12.BackColor = vbBlue
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(17, 2, False)
        ASBh12.BackColor = vbButtonFace
    End If
    If ASBw12.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(17, 3, True)
        ASBw12.BackColor = vbGreen
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(17, 3, False)
        ASBw12.BackColor = vbButtonFace
    End If
    If ASBth12.Value = 1 Then
        ReturnValue = S7ProSimX.WriteInputPoint(17, 4, True)
        ASBth12.BackColor = vbRed
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(17, 4, False)
        ASBth12.BackColor = vbButtonFace
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(108, 6, S7_Bit, Data)
    If Data Then
        ASBmop12.BackColor = ColorGreen
    Else
        ASBmop12.BackColor = ColorGray
    End If
    ReturnValue = S7ProSimX.ReadOutputPoint(108, 7, S7_Bit, Data)
    If Data Then
        ASBmneer12.BackColor = ColorGreen
    Else
        ASBmneer12.BackColor = ColorGray
    End If

'*************************************************************************
   'SVS noord
    If SVSnoSPER Then
        ReturnValue = S7ProSimX.WriteInputPoint(24, 0, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(24, 0, False)
    End If
    If SVSnoDOOR Then
        ReturnValue = S7ProSimX.WriteInputPoint(24, 1, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(24, 1, False)
    End If
    If SVSnoSTOP Then
        ReturnValue = S7ProSimX.WriteInputPoint(24, 2, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(24, 2, False)
    End If
 
    If SVSnwSPER Then
        ReturnValue = S7ProSimX.WriteInputPoint(24, 3, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(24, 3, False)
    End If
    If SVSnwDOOR Then
        ReturnValue = S7ProSimX.WriteInputPoint(24, 4, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(24, 4, False)
    End If
    If SVSnwSTOP Then
        ReturnValue = S7ProSimX.WriteInputPoint(24, 5, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(24, 5, False)
    End If
    If SVSnONDER Then
        ReturnValue = S7ProSimX.WriteInputPoint(24, 6, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(24, 6, False)
    End If
 
    If SVSzoSPER Then
        ReturnValue = S7ProSimX.WriteInputPoint(24, 7, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(24, 7, False)
    End If
    If SVSzoDOOR Then
        ReturnValue = S7ProSimX.WriteInputPoint(25, 0, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(25, 0, False)
    End If
    If SVSzoSTOP Then
        ReturnValue = S7ProSimX.WriteInputPoint(25, 1, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(25, 1, False)
    End If
 
    If SVSzwSPER Then
        ReturnValue = S7ProSimX.WriteInputPoint(25, 2, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(25, 2, False)
    End If
    If SVSzwDOOR Then
        ReturnValue = S7ProSimX.WriteInputPoint(25, 3, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(25, 3, False)
    End If
    If SVSzwSTOP Then
        ReturnValue = S7ProSimX.WriteInputPoint(25, 4, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(25, 4, False)
    End If
    If SVSzONDER Then
        ReturnValue = S7ProSimX.WriteInputPoint(25, 5, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(25, 5, False)
    End If
 
    'LVS
    If LVS1g Then
        ReturnValue = S7ProSimX.WriteInputPoint(20, 0, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(20, 0, False)
    End If
    If LVS1r Then
        ReturnValue = S7ProSimX.WriteInputPoint(20, 1, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(20, 1, False)
    End If
    If LVS2g Then
        ReturnValue = S7ProSimX.WriteInputPoint(20, 2, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(20, 2, False)
    End If
    If LVS2r Then
        ReturnValue = S7ProSimX.WriteInputPoint(20, 3, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(20, 3, False)
    End If
    If LVS3g Then
        ReturnValue = S7ProSimX.WriteInputPoint(20, 4, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(20, 4, False)
    End If
    If LVS3r Then
        ReturnValue = S7ProSimX.WriteInputPoint(20, 5, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(20, 5, False)
    End If
    If LVS4g Then
        ReturnValue = S7ProSimX.WriteInputPoint(20, 6, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(20, 6, False)
    End If
    If LVS4r Then
        ReturnValue = S7ProSimX.WriteInputPoint(20, 7, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(20, 7, False)
    End If
    If LVS5g Then
        ReturnValue = S7ProSimX.WriteInputPoint(21, 0, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(21, 0, False)
    End If
    If LVS5r Then
        ReturnValue = S7ProSimX.WriteInputPoint(21, 1, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(21, 1, False)
    End If
    If LVS6g Then
        ReturnValue = S7ProSimX.WriteInputPoint(21, 2, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(21, 2, False)
    End If
    If LVS6r Then
        ReturnValue = S7ProSimX.WriteInputPoint(21, 3, True)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(21, 3, False)
    End If
    
    'Alle lampen rood AAN
    If (LVS1r) And (LVS2r) And (LVS3r) And (LVS4r) And (LVS5r) And (LVS6r) Then
        ReturnValue = S7ProSimX.WriteInputPoint(66, 0, False)
    Else
        ReturnValue = S7ProSimX.WriteInputPoint(66, 0, True)
    End If
    
End Sub
