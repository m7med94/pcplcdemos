Attribute VB_Name = "mMoveS"
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
    mMoveS.Moving = True
    Set mMoveS.control = control
    mMoveS.lastX = X
    mMoveS.lastY = Y
End Sub
Public Sub InProgress(X As Single, Y As Single)
    If Not mMoveS.Moving Then Exit Sub
    timer.Enabled = True
    
    mMoveS.curX = X - mMoveS.lastX
    mMoveS.curY = Y - mMoveS.lastY
End Sub
Public Sub EndIt()
    mMoveS.Moving = False
    timer.Enabled = False
End Sub
Public Sub ToNewPosition()
    Dim X As Single
    Dim Y As Single
    
    'Set it to the new position.
    X = mMoveS.control.Left + mMoveS.curX
    Y = mMoveS.control.Top + mMoveS.curY
    
    'Make sure we don't drag it off the screen...
    If X < 0 Then
        X = 0
    ElseIf X > Form1.ScaleWidth - mMoveS.control.Width Then
           X = Form1.ScaleWidth - mMoveS.control.Width
    End If
    If mMoveS.control.Top + mMoveS.curY < 0 Then
        Y = 0
    ElseIf Y > Form1.ScaleHeight - mMoveS.control.Height Then
           Y = Form1.ScaleHeight - mMoveS.control.Height
    End If

    mMoveS.control.Move X, Y
End Sub
Public Sub Initialize(tmr As timer)
    tmr.Enabled = False
    tmr.Interval = 30
    Set timer = tmr
End Sub

