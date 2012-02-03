VERSION 5.00
Object = "{83CC0D70-FEDA-11D1-BE76-0060B06816CF}#1.2#0"; "S7WSPSMX.OCX"
Begin VB.Form FormSIM 
   Caption         =   "Form2"
   ClientHeight    =   3990
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5985
   LinkTopic       =   "Form2"
   ScaleHeight     =   3990
   ScaleWidth      =   5985
   StartUpPosition =   3  'Windows Default
   Begin S7PROSIMLib.S7ProSim S7ProSimX1 
      Left            =   120
      Top             =   120
      _Version        =   65538
      _ExtentX        =   635
      _ExtentY        =   688
      _StockProps     =   64
      Enabled         =   0   'False
   End
End
Attribute VB_Name = "FormSIM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

