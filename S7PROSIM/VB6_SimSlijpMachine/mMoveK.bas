Attribute VB_Name = "mMoveK"
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
    mMoveK.Moving = True
    Set mMoveK.control = control
    mMoveK.lastX = X
    mMoveK.lastY = Y
End Sub
Public Sub InProgress(X As Single, Y As Single)
    If Not mMoveK.Moving Then Exit Sub
    timer.Enabled = True
    
    mMoveK.curX = X - mMoveK.lastX
    mMoveK.curY = Y - mMoveK.lastY
End Sub
Public Sub EndIt()
    mMoveK.Moving = False
    timer.Enabled = False
End Sub
Public Sub ToNewPosition()
    Dim X As Single
    Dim Y As Single
    
    'Set it to the new position.
    X = mMoveK.control.Left + mMoveK.curX
    Y = mMoveK.control.Top + mMoveK.curY
    
    'Make sure we don't drag it off the screen...
    If X < 0 Then
        X = 0
    ElseIf X > Form1.ScaleWidth - mMoveK.control.Width Then
        X = Form1.ScaleWidth - mMoveK.control.Width
    End If
    If mMoveK.control.Top + mMoveK.curY < 0 Then
        Y = 0
    ElseIf Y > Form1.ScaleHeight - mMoveK.control.Height Then
        Y = Form1.ScaleHeight - mMoveK.control.Height
    End If

    mMoveK.control.Move X, Y
End Sub
Public Sub Initialize(tmr As timer)
    tmr.Enabled = False
    tmr.Interval = 30
    Set timer = tmr
End Sub

