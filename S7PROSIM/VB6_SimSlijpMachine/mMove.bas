Attribute VB_Name = "mMove"
Option Explicit

'the Current X and Y position
Public curX As Single
Public curY As Single

'the last recorded X and Y position
Private lastX As Single
Private lastY As Single

'the control being moved
Private control As control

'Whether the control is in the middle of being moved
Private Moving As Boolean
Private timer As timer
' Being the move
Public Sub Begin(control As control, X As Single, Y As Single)
    mMove.Moving = True
    Set mMove.control = control
    mMove.lastX = X
    mMove.lastY = Y
End Sub
Public Sub InProgress(X As Single, Y As Single)
    If Not mMove.Moving Then Exit Sub
    timer.Enabled = True
    
    mMove.curX = X - mMove.lastX
    mMove.curY = Y - mMove.lastY
End Sub
Public Sub EndIt()
    mMove.Moving = False
    timer.Enabled = False
End Sub
Public Sub ToNewPosition()
    Dim X As Single
    Dim Y As Single
    
    'Set it to the new position.
    X = mMove.control.Left + mMove.curX
    Y = mMove.control.Top ' + mMove.curY
    
    'Make sure we don't drag it off the screen...
    If X < 0 Then
        X = 0
    ElseIf X > Form1.ScaleWidth - mMove.control.Width Then
        X = Form1.ScaleWidth - mMove.control.Width
    End If
    If mMove.control.Top + mMove.curY < 0 Then
        Y = 0
    ElseIf Y > Form1.ScaleHeight - mMove.control.Height Then
        Y = Form1.ScaleHeight - mMove.control.Height
    End If

    mMove.control.Move X, Y
End Sub
Public Sub Initialize(tmr As timer)
    tmr.Enabled = False
    tmr.Interval = 30
    Set timer = tmr
End Sub
