Attribute VB_Name = "Variabelen"
Option Explicit

Public Const COLOR_ON As String = &HFF00&
Public Const COLOR_OUT As String = &H80000013
Public Const COLOR_OFF As String = &H80000013
Public Const ALARM As String = &HC0C0FF

Public Const F_ON As String = "bmp\maak.bmp"
Public Const F_OUT As String = "bmp\verb.bmp"
Public Const F_OFF As String = "bmp\uit.bmp"


Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public connection As Boolean
Public Result As Long
Public Message As String

Public flagsA(20) As Byte
Public flagsK(2) As Byte

Public Regs(20) As Long

