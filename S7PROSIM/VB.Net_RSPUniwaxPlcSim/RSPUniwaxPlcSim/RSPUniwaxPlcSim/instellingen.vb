Public Class instellingen

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
End Class