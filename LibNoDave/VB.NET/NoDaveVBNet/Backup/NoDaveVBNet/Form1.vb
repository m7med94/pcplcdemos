Public Class Form1

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ToolStripStatusLabel1.Text = "Disconnected."
        ComboBox1.SelectedItem = 0

    End Sub

    Private Sub ExitToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ExitToolStripMenuItem.Click
        If Connection Then
            dc.disconnectPLC()
        End If
        Me.Close()
    End Sub

    Private Sub ConnectPLCToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ConnectPLCToolStripMenuItem.Click
        fds.rfd = libnodave.openSocket(102, IP)
        fds.wfd = fds.rfd
        If fds.rfd > 0 Then       ' if step 1 is ok
            di = New libnodave.daveInterface(fds, "IF1", 0, libnodave.daveProtoISOTCP, libnodave.daveSpeed187k)
            di.setTimeout(1000000)  ' Make this longer if you have a very long response time
            res = di.initAdapter
            '
            If res = 0 Then       ' init Adapter is ok
                dc = New libnodave.daveConnection(di, 0, rack, slot)  ' rack amd slot don't matter in case of MPI
                res = dc.connectPLC()
                If res = 0 Then
                    Connection = True
                    ToolStripStatusLabel1.Text = "Connected " + IP
                End If
            End If
        End If
    End Sub

    Private Sub DisconnectPLCToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DisconnectPLCToolStripMenuItem.Click
        dc.disconnectPLC()
        ToolStripStatusLabel1.Text = "Disconnected."
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        'd As Single
        Dim b As Integer
        Dim a, c As Byte

        If Connection Then
            res = dc.readBytes(libnodave.daveFlags, 0, 0, 16, buf)
            If res = 0 Then
                Data1.Text = Str(dc.getS32)
                Data2.Text = Str(dc.getS32)
                Data3.Text = Str(dc.getS32)
                Data4.Text = Str(dc.getFloat)
            Else
                ToolStripStatusLabel1.Text = "Read data. " + libnodave.daveStrerror(res)
            End If
            res = dc.readBytes(libnodave.daveInputs, 0, 0, 1, buf)
            If res = 0 Then
                a = Str(dc.getS8)
                If IsBitSet(a, 0) Then
                    Panel1.BackColor = Color.Lime
                Else
                    Panel1.BackColor = Color.DarkGreen
                End If
                If IsBitSet(a, 1) Then
                    Panel2.BackColor = Color.Lime
                Else
                    Panel2.BackColor = Color.DarkGreen
                End If
                If IsBitSet(a, 2) Then
                    Panel3.BackColor = Color.Lime
                Else
                    Panel3.BackColor = Color.DarkGreen
                End If
                If IsBitSet(a, 3) Then
                    Panel4.BackColor = Color.Lime
                Else
                    Panel4.BackColor = Color.DarkGreen
                End If
            Else
                ToolStripStatusLabel1.Text = "Read data. " + libnodave.daveStrerror(res)
            End If
            res = dc.readBytes(libnodave.daveOutputs, 0, 0, 1, buf)
            If res = 0 Then
                a = Str(dc.getS8)
                If IsBitSet(a, 0) Then
                    Panel5.BackColor = Color.Lime
                Else
                    Panel5.BackColor = Color.DarkGreen
                End If
                If IsBitSet(a, 1) Then
                    Panel6.BackColor = Color.Lime
                Else
                    Panel6.BackColor = Color.DarkGreen
                End If
                If IsBitSet(a, 2) Then
                    Panel7.BackColor = Color.Lime
                Else
                    Panel7.BackColor = Color.DarkGreen
                End If
                If IsBitSet(a, 3) Then
                    Panel8.BackColor = Color.Lime
                Else
                    Panel8.BackColor = Color.DarkGreen
                End If

            Else
                ToolStripStatusLabel1.Text = "Read data. " + libnodave.daveStrerror(res)
            End If
            res = dc.readBytes(libnodave.daveFlags, 0, 0, 1, buf)
            If res = 0 Then
                c = Str(dc.getS8)
                If IsBitSet(c, 0) Then
                    Panel9.BackColor = Color.Lime
                Else
                    Panel9.BackColor = Color.DarkGreen
                End If
                If IsBitSet(c, 1) Then
                    Panel10.BackColor = Color.Lime
                Else
                    Panel10.BackColor = Color.DarkGreen
                End If
                If IsBitSet(c, 2) Then
                    Panel11.BackColor = Color.Lime
                Else
                    Panel11.BackColor = Color.DarkGreen
                End If
                If IsBitSet(c, 3) Then
                    Panel12.BackColor = Color.Lime
                Else
                    Panel12.BackColor = Color.DarkGreen
                End If

            Else
                ToolStripStatusLabel1.Text = "Read data. " + libnodave.daveStrerror(res)
            End If
        Else
            Data1.Text = "****"
            Data2.Text = "****"
            Data3.Text = "****"
            Data4.Text = "****"
            Panel1.BackColor = Color.Gray
            Panel2.BackColor = Color.Gray
            Panel3.BackColor = Color.Gray
            Panel4.BackColor = Color.Gray
            Panel5.BackColor = Color.Gray
            Panel6.BackColor = Color.Gray
            Panel7.BackColor = Color.Gray
            Panel8.BackColor = Color.Gray
            Panel9.BackColor = Color.Gray
            Panel10.BackColor = Color.Gray
            Panel11.BackColor = Color.Gray
            Panel12.BackColor = Color.Gray
        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim a As Integer
        a = Int(TextBox1.Text)
        buf(0) = Int(TextBox2.Text)
        If ComboBox1.SelectedItem = "Inputs" Then
            res = dc.writeBytes(libnodave.daveInputs, 0, a, 1, buf)
        End If
        If ComboBox1.SelectedItem = "Outputs" Then
            res = dc.writeBytes(libnodave.daveOutputs, 0, a, 1, buf)
        End If
        If ComboBox1.SelectedItem = "Flags" Then
            res = dc.writeBytes(libnodave.daveFlags, 0, a, 1, buf)
        End If
    End Sub

End Class
