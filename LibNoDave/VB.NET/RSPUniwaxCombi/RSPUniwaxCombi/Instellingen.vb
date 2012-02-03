Imports System
Imports System.Xml


Public Class Settings
    Private display110b As Byte
    Private motorD As Int16
    Private fitback As Byte


    Private Sub instellingen_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        sm_belt = NumericEdit_belt.Value
        sm_scr02 = NumericEdit_M02.Value
        sm_scr04 = NumericEdit_M04.Value
        sm_scr06 = NumericEdit_M06.Value
        sm_scr08 = NumericEdit_M08.Value
    End Sub

    Private Sub instellingen_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        NumericEdit_belt.Value = sm_belt
        NumericEdit_M02.Value = sm_scr02
        NumericEdit_M04.Value = sm_scr04
        NumericEdit_M06.Value = sm_scr06
        NumericEdit_M08.Value = sm_scr08
    End Sub


    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim res1 As Boolean
        If DriveMode And Connection Then
            res1 = dc.readBytes(libnodave.daveDB, 110, 0, 12, buf)
            If res1 = 0 Then
                LabelD1.Text = String.Format("{0:f}", dc.getFloat)
                LabelD2.Text = String.Format("{0:f}", dc.getFloat)
                LabelD3.Text = String.Format("{0:f}", dc.getFloat)
            Else
                MsgBox("no")
            End If
            res1 = dc.readBytes(libnodave.daveDB, 110, 20, 4, buf)
            If res1 = 0 Then
                LabelD4.Text = String.Format("{0:f}", dc.getFloat)
            End If
            res1 = dc.readBytes(libnodave.daveDB, 110, 24, 1, buf)
            If res1 = 0 Then
                display110b = dc.getU8
                If IsBitSet(display110b, 0) Then
                    LabelD5.Text = "Automatique"
                Else
                    LabelD5.Text = "Manuel"
                End If
            End If
            res1 = dc.readBytes(libnodave.daveDB, 100, 108, 2, buf)
            If res1 = 0 Then
                motorD = dc.getU16
                Select Case motorD
                    Case 0
                        PanelMotor1.BackColor = Color.Red
                        PanelMotor2.BackColor = Color.Red
                        PanelMotor3.BackColor = Color.Red
                        PanelMotor4.BackColor = Color.Red
                    Case 1
                        PanelMotor1.BackColor = Color.Lime
                        PanelMotor2.BackColor = Color.Red
                        PanelMotor3.BackColor = Color.Red
                        PanelMotor4.BackColor = Color.Red
                    Case 2
                        PanelMotor1.BackColor = Color.Lime
                        PanelMotor2.BackColor = Color.Lime
                        PanelMotor3.BackColor = Color.Red
                        PanelMotor4.BackColor = Color.Red
                    Case 3
                        PanelMotor1.BackColor = Color.Lime
                        PanelMotor2.BackColor = Color.Lime
                        PanelMotor3.BackColor = Color.Lime
                        PanelMotor4.BackColor = Color.Red
                    Case 4
                        PanelMotor1.BackColor = Color.Lime
                        PanelMotor2.BackColor = Color.Lime
                        PanelMotor3.BackColor = Color.Lime
                        PanelMotor4.BackColor = Color.Lime
                    Case Else
                        PanelMotor1.BackColor = Color.Red
                        PanelMotor2.BackColor = Color.Red
                        PanelMotor3.BackColor = Color.Red
                        PanelMotor4.BackColor = Color.Blue
                End Select
            End If
            res1 = dc.readBytes(libnodave.daveFlags, 0, 24, 1, buf)
            If res1 = 0 Then
                fitback = dc.getU8
                If IsBitSet(fitback, 4) Then
                    PanelFB.BackColor = Color.Lime
                Else
                    PanelFB.BackColor = Color.White
                End If
            End If

            Display()
            Label35.Text = ""

        Else
            LabelD1.Text = "*****"
            LabelD2.Text = "*****"
            LabelD3.Text = "*****"
            LabelD4.Text = "*****"
            LabelD5.Text = "*****"
            PanelMotor1.BackColor = Color.LightGray
            PanelMotor2.BackColor = Color.LightGray
            PanelMotor3.BackColor = Color.LightGray
            PanelMotor4.BackColor = Color.LightGray
            PanelFB.BackColor = Color.LightGray

            LabelB1.Text = "*****"
            LabelB2.Text = "*****"
            LabelB3.Text = "*****"
            LabelB4.Text = "*****"
            LabelB5.Text = "*****"
            LabelB6.Text = "*****"
            LabelB7.Text = "*****"
            LabelC1.Text = "*****"
            LabelC2.Text = "*****"
            LabelC3.Text = "*****"
            LabelC4.Text = "*****"
            LabelC5.Text = "*****"
            LabelC6.Text = "*****"
            LabelC7.Text = "*****"
            LabelE1.Text = "*****"
            LabelE2.Text = "*****"
            LabelE3.Text = "*****"
            LabelE4.Text = "*****"
            LabelE5.Text = "*****"

            Label35.Text = "Simulation of the RSP Display only with PlcS7"
        End If
    End Sub
    Private Sub Display()
        Dim res1 As Boolean
        res1 = dc.readBytes(libnodave.daveDB, 100, 0, 12, buf)
        If res1 = 0 Then
            LabelB1.Text = CStr(dc.getU32)
            LabelB2.Text = CStr(dc.getU32)
            LabelB3.Text = CStr(dc.getU32)
        End If
        res1 = dc.readBytes(libnodave.daveDB, 100, 16, 4, buf)
        If res1 = 0 Then
            LabelB4.Text = String.Format("{0:f}", dc.getFloat)
        End If
        res1 = dc.readBytes(libnodave.daveDB, 100, 24, 40, buf)
        If res1 = 0 Then
            LabelB5.Text = String.Format("{0:f}", dc.getFloat)
            LabelB6.Text = String.Format("{0:f}", dc.getFloat)
            LabelB7.Text = String.Format("{0:f}", dc.getFloat)
            LabelC1.Text = String.Format("{0:f}", dc.getFloat)
            LabelC2.Text = String.Format("{0:f}", dc.getFloat)
            LabelC3.Text = String.Format("{0:f}", dc.getFloat)
            LabelC4.Text = String.Format("{0:f}", dc.getFloat)
            LabelC5.Text = String.Format("{0:f}", dc.getFloat)
            LabelC6.Text = String.Format("{0:f}", dc.getFloat)
            LabelC7.Text = String.Format("{0:f}", dc.getFloat)
        End If
        res1 = dc.readBytes(libnodave.daveDB, 100, 68, 4, buf)
        If res1 = 0 Then
            LabelE1.Text = String.Format("{0:f}", dc.getFloat)
        End If
        res1 = dc.readBytes(libnodave.daveDB, 100, 72, 4, buf)
        If res1 = 0 Then
            LabelE2.Text = CStr(dc.getU32)
        End If
        res1 = dc.readBytes(libnodave.daveDB, 100, 120, 4, buf)
        If res1 = 0 Then
            LabelE3.Text = String.Format("{0:f}", dc.getFloat)
        End If
        res1 = dc.readBytes(libnodave.daveDB, 100, 76, 4, buf)
        If res1 = 0 Then
            LabelE4.Text = CStr(dc.getU32)
        End If
        res1 = dc.readBytes(libnodave.daveDB, 100, 184, 2, buf)
        If res1 = 0 Then
            LabelE5.Text = CStr(dc.getU16)
        End If
    End Sub
    Private Sub PanelMotor1_MouseClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PanelMotor1.MouseClick
        Dim res1 As Boolean
        Dim buff(2) As Byte
        buff(0) = 0
        buff(1) = 1
        res1 = dc.writeBytes(libnodave.daveDB, 100, 108, 2, buff)
    End Sub

    Private Sub PanelMotor2_MouseClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PanelMotor2.MouseClick
        Dim res1 As Boolean
        Dim buff(2) As Byte
        buff(0) = 0
        buff(1) = 2
        res1 = dc.writeBytes(libnodave.daveDB, 100, 108, 2, buff)
    End Sub

    Private Sub PanelMotor3_MouseClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PanelMotor3.MouseClick
        Dim res1 As Boolean
        Dim buff(2) As Byte
        buff(0) = 0
        buff(1) = 3
        res1 = dc.writeBytes(libnodave.daveDB, 100, 108, 2, buff)
    End Sub

    Private Sub PanelMotor4_MouseClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PanelMotor4.MouseClick
        Dim res1 As Boolean
        Dim buff(2) As Byte
        buff(0) = 0
        buff(1) = 4
        res1 = dc.writeBytes(libnodave.daveDB, 100, 108, 2, buff)
    End Sub

    Private Sub PanelFB_MouseClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles PanelFB.MouseClick
        Dim res1 As Boolean
        Dim buff(2) As Byte
        If IsBitSet(fitback, 4) Then
            ChangeBit(fitback, 4, False)
        Else
            ChangeBit(fitback, 4, True)
        End If
        buff(0) = fitback
        res1 = dc.writeBytes(libnodave.daveFlags, 0, 24, 1, buff)

    End Sub
End Class