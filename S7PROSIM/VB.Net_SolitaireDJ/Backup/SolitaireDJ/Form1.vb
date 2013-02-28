Imports System.Xml
Public Class Form1
    Private WithEvents S7ProSim As New S7PROSIMLib.S7ProSim
    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Init
        DriveMode = False
        If DriveMode Then
            ToolStripComboBox1.SelectedIndex = 1
        Else
            ToolStripComboBox1.SelectedIndex = 0
        End If
        ToolStripComboBox1.Select()
        ToolStripStatusLabel2.Text = " PLC mode = " + ToolStripComboBox1.SelectedItem
        If System.IO.File.Exists(NameXmlFile) Then
            ReadConnSettings()
        End If
        ChangeToolBar()
        DoConnection()
    End Sub
    Private Sub ReadConnSettings()
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList
        Dim name As String = "Default"

        doc.Load(NameXmlFile)
        m_SettList = doc.SelectNodes("/Connections/Settings")

        For Each m_node In m_SettList
            Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
            If n_Attribute = Name Then
                Protocol = m_node.ChildNodes.Item(0).InnerText
                IP = m_node.ChildNodes.Item(1).InnerText
                Port = m_node.ChildNodes.Item(2).InnerText
                Speed = m_node.ChildNodes.Item(3).InnerText
                rack = CInt(m_node.ChildNodes.Item(4).InnerText)
                slot = CInt(m_node.ChildNodes.Item(5).InnerText)
                ConnectionsName = m_node.ChildNodes.Item(6).InnerText
            End If
        Next
        name = ConnectionsName
        doc.Load(NameXmlFile)
        m_SettList = doc.SelectNodes("/Connections/Settings")

        For Each m_node In m_SettList
            Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
            If n_Attribute = name Then
                Protocol = m_node.ChildNodes.Item(0).InnerText
                IP = m_node.ChildNodes.Item(1).InnerText
                Port = m_node.ChildNodes.Item(2).InnerText
                Speed = m_node.ChildNodes.Item(3).InnerText
                rack = CInt(m_node.ChildNodes.Item(4).InnerText)
                slot = CInt(m_node.ChildNodes.Item(5).InnerText)
            End If
        Next

    End Sub
    Private Sub Form1_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        DoDisconnection()
    End Sub
    Private Sub ToolStripButton4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonUpdate.Click
        UpdateGUI()
    End Sub
    Private Sub ToolStripComboBox1_DropDownClosed(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripComboBox1.DropDownClosed
        If ToolStripComboBox1.SelectedItem = "PLCSIM" Then
            If DriveMode = True Then
                If Connection Then
                    DoDisconnection()
                End If
                ConnectionSim = True
            End If
            DriveMode = False
            DoConnection()
        ElseIf ToolStripComboBox1.SelectedItem = "PlcS7" Then
            If DriveMode = False Then
                DoDisconnection()
                ConnectionSim = False
            End If
            DriveMode = True
            ToolStripStatusLabel1.Text = "PlcS7 disconnected "
        End If
        UpdateGUI()
        ToolStripStatusLabel2.Text = " PLC mode = " + ToolStripComboBox1.SelectedItem
        ChangeToolBar()

    End Sub
    Private Sub ChangeToolBar()
        If Connection Or ConnectionSim Then
            TSBConnect.Visible = False
            TSBDisconnect.Visible = True
            ToolStripButtonConn.Enabled = False
        Else
            TSBConnect.Visible = True
            TSBDisconnect.Visible = False
            ToolStripButtonConn.Enabled = True
        End If
        If SimOn Then
            ToolStripButtonSimOn.Visible = False
            ToolStripButtonSimOff.Visible = True
            ToolStripStatusLabel3.Text = "Simulation ON "
        Else
            ToolStripButtonSimOn.Visible = True
            ToolStripButtonSimOff.Visible = False
            ToolStripStatusLabel3.Text = "Simulation OFF "
        End If
    End Sub
    Private Sub TSBDisconnect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TSBDisconnect.Click
        DoDisconnection()
    End Sub
    Private Sub DoConnection()
        If DriveMode Then
            NoDaveConnect()
        Else
            S7ProSim.Connect()
            Console.DoConnection()
            ToolStripStatusLabel1.Text = "PLCSIM connected "
            'inschakelen simulatie
            'S7ProSim.WriteFlagValue(1050, 0, True)
            'inschakelen Scan Mode ContinuousScan
            S7ProSim.SetScanMode(1)
            ConnectionSim = True
        End If
        ChangeToolBar()
    End Sub
    Private Sub TSBConnect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TSBConnect.Click
        DoConnection()
    End Sub
    Private Sub DataToGui()
        'Outputs


    End Sub
    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick

        If DriveMode Then
            'NoDave
            If Connection Then

            End If
            DataToGui()
        Else
            'PLCSIM

            DataToGui()
        End If

    End Sub
    Private Sub NoDaveConnect()
        Dim localMPI As Integer = 0, plcMPI As Integer = 2

        'NoDave
        'ISO over PCP
        If DriveMode Then
            If Protocol = 122 Then
                fds.rfd = libnodave.openSocket(102, IP)
                fds.wfd = fds.rfd
                If fds.rfd > 0 Then       ' if step 1 is ok
                    di = New libnodave.daveInterface(fds, "IF1", 0, Protocol, Speed)
                    di.setTimeout(1000000)  ' Make this longer if you have a very long response time
                    res = di.initAdapter
                    If res = 0 Then       ' init Adapter is ok
                        dc = New libnodave.daveConnection(di, 0, rack, slot)
                        res = dc.connectPLC()
                        If res = 0 Then
                            Connection = True
                            ToolStripStatusLabel1.Text = "PlcS7 connected " + IP
                        Else
                            ToolStripStatusLabel1.Text = "Not successful attempt of connection!"
                        End If
                    Else
                        ToolStripStatusLabel1.Text = "Not successful attempt to initialize  the adapter!"
                    End If
                Else
                    ToolStripStatusLabel1.Text = "Not successful attempt of creation of the interface!"
                End If
            ElseIf Protocol = 1 Or Protocol = 2 Or Protocol = 3 Or Protocol = 4 Then

                fds.rfd = libnodave.setPort(Port, useBaud, AscW("O"))
                fds.wfd = fds.rfd
                If fds.rfd > 0 Then       ' if step 1 is ok
                    di = New libnodave.daveInterface(fds, "IF1", localMPI, Protocol, Speed)
                    di.setTimeout(1000000)  ' Make this longer if you have a very long response time
                    res = di.initAdapter
                    If res = 0 Then       ' init Adapter is ok
                        dc = New libnodave.daveConnection(di, plcMPI, 0, 0)  ' rack amd slot don't matter in case of MPI
                        res = dc.connectPLC()
                        If res = 0 Then
                            Connection = True
                            ToolStripStatusLabel1.Text = "PlcS7 connected " + Port + " " + useBaud
                        Else
                            ToolStripStatusLabel1.Text = "Not successful attempt of connection!"
                        End If
                    Else
                        ToolStripStatusLabel1.Text = "Not successful attempt to initialize  the adapter!"
                    End If
                Else
                    ToolStripStatusLabel1.Text = "Couldn't open serial port " + Port
                End If
            End If
        End If

        ChangeToolBar()
    End Sub
    Private Sub DoDisconnection()
        If DriveMode Then
            If Connection Then
                dc.disconnectPLC()
                di.disconnectAdapter()
                If Protocol = 122 Then
                    ' libnodave.closeSocket(102)
                ElseIf Protocol = 1 Or Protocol = 2 Or Protocol = 3 Or Protocol = 4 Then
                    libnodave.closePort(fds.rfd)    ' Clean up
                End If
                ToolStripStatusLabel1.Text = "PlcS7 disconnected "
            End If
            ToolStripStatusLabel1.Text = "PlcS7 disconnected "
        Else
            S7ProSim.Disconnect()
            ConnectionSim = False
            ToolStripStatusLabel1.Text = "PLCSIM disconnected "
        End If
        Connection = False
        ChangeToolBar()
    End Sub
    Private Sub ToolStripButtonSimOn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonSimOn.Click
        SimOn = True
        ChangeToolBar()
    End Sub
    Private Sub ToolStripButtonSimOff_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonSimOff.Click
        SimOn = False
        ChangeToolBar()
    End Sub
    Private Sub ToolStripButtonConn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonConn.Click
        ConnectionSettings.Show()
    End Sub
    Private Sub ToolStripButtonDisplay_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButtonDisplay.Click
        Console.Show()
    End Sub

    Private Sub UpdateGUI()
        If DriveMode Then
            'NoDave
            If SimOn Then
                'ChangeBit(pDataInW(0), 0, SwitchNoodStork.Value)
                If Connection Then
                    res = dc.writeBytes(libnodave.daveInputs, 0, 0, 4, pDataInW)
                    res = dc.writeBits(libnodave.daveInputs, 0, 0, 4, pDataInW)
                Else
                    MsgBox("No connection with PLC!")
                End If
                ToolStripStatusLabel3.Text = "Inputs are written "
            Else
                ToolStripStatusLabel3.Text = "Simulation is OFF "
            End If
        Else
            'PLCSIM
            If ConnectionSim Then
                S7ProSim.WriteInputPoint(20, 0, p26.Checked)
                S7ProSim.WriteInputPoint(20, 1, p31.Checked)
                S7ProSim.WriteInputPoint(20, 2, p32.Checked)
                S7ProSim.WriteInputPoint(20, 3, p33.Checked)
                S7ProSim.WriteInputPoint(20, 4, p57.Checked)
                S7ProSim.WriteInputPoint(20, 5, p58.Checked)
                S7ProSim.WriteInputPoint(20, 6, p121.Checked)
                S7ProSim.WriteInputPoint(20, 7, p122.Checked)

                S7ProSim.WriteInputPoint(21, 0, p100.Checked)
                S7ProSim.WriteInputPoint(21, 1, p101.Checked)
                S7ProSim.WriteInputPoint(21, 2, p102.Checked)
                S7ProSim.WriteInputPoint(21, 3, p11.Checked)
                S7ProSim.WriteInputPoint(21, 4, p40.Checked)
                S7ProSim.WriteInputPoint(21, 5, p61.Checked)
                S7ProSim.WriteInputPoint(21, 6, p44.Checked)
                S7ProSim.WriteInputPoint(21, 7, p113.Checked)

                S7ProSim.WriteInputPoint(22, 0, p125.Checked)
                S7ProSim.WriteInputPoint(22, 1, p109.Checked)
                S7ProSim.WriteInputPoint(22, 2, p41.Checked)
                S7ProSim.WriteInputPoint(22, 3, p45.Checked)
                S7ProSim.WriteInputPoint(22, 4, p114.Checked)
                S7ProSim.WriteInputPoint(22, 5, p110.Checked)
                S7ProSim.WriteInputPoint(22, 6, p34.Checked)
                S7ProSim.WriteInputPoint(22, 7, p35.Checked)

                S7ProSim.WriteInputPoint(23, 6, p36.Checked)
            End If

        End If
    End Sub

 End Class
