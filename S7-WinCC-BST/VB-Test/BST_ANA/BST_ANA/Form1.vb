Public Class Form1
    Private WithEvents S7ProSim As New S7PROSIMLib.S7ProSim
    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        S7ProSim.Connect()
        S7ProSim.SetScanMode(1)
        ChangeRange()
    End Sub
    Private Sub UpdateGUI()
        'analog sugnalen Potmeters 2x16bit
        TrackBar1.Maximum = RangeMax.Value
        TrackBar1.Minimum = RangeMin.Value
        pDataAna(0) = TrackBar1.Value
        S7ProSim.WriteInputPoint(IOadres.Value, 0, pDataAna(0))
        LabelValue.Text = String.Format("{0,5}  {1,14:P1}", TrackBar1.Value, TrackBar1.Value / 27648)

        'Value ANA
        S7ProSim.ReadDataBlockValue(DBadres1.Value, 64, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataFlValue)
        bytes = BitConverter.GetBytes(pDataFlValue)
        ValueAna.Text = String.Format("{0,10:N2}", CDbl(BitConverter.ToSingle(bytes, 0)))

        'LEDs Fault
        S7ProSim.ReadDataBlockValue(DBadres1.Value, 98, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(0))
        Led_OK_ON.Visible = Not (IsBitSet(pDataCons(0), 4))
        Led_OK_OFF.Visible = IsBitSet(pDataCons(0), 4)
        Led_WireFault_ON.Visible = IsBitSet(pDataCons(0), 6)
        Led_WireFault_OFF.Visible = Not (IsBitSet(pDataCons(0), 6))
        Led_OverRunFault_ON.Visible = IsBitSet(pDataCons(0), 7)
        Led_OverRunFault_OFF.Visible = Not (IsBitSet(pDataCons(0), 7))
        S7ProSim.ReadDataBlockValue(DBadres1.Value, 99, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(0))
        Led_LowRangeFault_ON.Visible = IsBitSet(pDataCons(0), 0)
        Led_LowRangeFault_OFF.Visible = Not (IsBitSet(pDataCons(0), 0))
        Led_HighRangeFault_ON.Visible = IsBitSet(pDataCons(0), 1)
        Led_HighRangeFault_OFF.Visible = Not (IsBitSet(pDataCons(0), 1))

        'Value Cvalve
        S7ProSim.ReadDataBlockValue(DBadres2.Value, 52, 0, S7PROSIMLib.PointDataTypeConstants.S7_DoubleWord, pDataFlValue)
        bytes = BitConverter.GetBytes(pDataFlValue)
        ValueCvalve.Text = String.Format("{0,10:N2}", CDbl(BitConverter.ToSingle(bytes, 0)))

        'LEDs Fault
        S7ProSim.ReadDataBlockValue(DBadres2.Value, 50, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(0))
        Led_OK_ON2.Visible = Not (IsBitSet(pDataCons(0), 7))
        Led_OK_OFF2.Visible = IsBitSet(pDataCons(0), 7)
        S7ProSim.ReadDataBlockValue(DBadres2.Value, 66, 0, S7PROSIMLib.PointDataTypeConstants.S7_Byte, pDataCons(0))
        Led_WireFault_ON2.Visible = IsBitSet(pDataCons(0), 0)
        Led_WireFault_OFF2.Visible = Not (IsBitSet(pDataCons(0), 0))
        Led_OverRunFault_ON2.Visible = IsBitSet(pDataCons(0), 1)
        Led_OverRunFault_OFF2.Visible = Not (IsBitSet(pDataCons(0), 1))
        Led_LowRangeFault_ON2.Visible = IsBitSet(pDataCons(0), 2)
        Led_LowRangeFault_OFF2.Visible = Not (IsBitSet(pDataCons(0), 2))
        Led_HighRangeFault_ON2.Visible = IsBitSet(pDataCons(0), 3)
        Led_HighRangeFault_OFF2.Visible = Not (IsBitSet(pDataCons(0), 3))


    End Sub

    Private Sub ButtonReset_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ButtonReset.MouseDown
        S7ProSim.WriteInputPoint(0, 1, True)
    End Sub

    Private Sub ButtonReset_MouseUp(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ButtonReset.MouseUp
        S7ProSim.WriteInputPoint(0, 1, False)
    End Sub

    Private Sub RadioButton1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged
        ChangeRange()
    End Sub

    Private Sub RadioButton2_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadioButton2.CheckedChanged
        ChangeRange()
    End Sub

    Sub ChangeRange()
        If RadioButton1.Checked Then
            RangeMax.Value = 27648
            RangeMin.Value = 0
        Else
            RangeMax.Value = 32700
            RangeMin.Value = -6000
            UpdateGUI()
        End If
    End Sub

    Private Sub TrackBar1_Scroll(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TrackBar1.Scroll
        UpdateGUI()
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        UpdateGUI()
    End Sub
End Class
