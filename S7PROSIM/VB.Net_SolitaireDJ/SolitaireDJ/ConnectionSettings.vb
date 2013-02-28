Imports System.Windows.Forms

Imports System
Imports System.Xml
Public Class ConnectionSettings
    Private Sub OK_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK_Button.Click
        If CheckProto(ComboBoxProtocol.SelectedItem) Then
            Protocol = NameProtocol(False, ComboBoxProtocol.SelectedItem)
            IP = TextBoxIPaddress.Text
            Port = ComboBoxPort.SelectedItem
            Speed = NameSpeed(False, ComboBoxSpeed.SelectedItem)
            rack = CStr(NumericEditRack.Value)
            slot = CStr(NumericEditSlot.Value)

            Me.DialogResult = System.Windows.Forms.DialogResult.OK
            Me.Close()
        End If

    End Sub

    Private Sub Cancel_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel_Button.Click
        Me.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Close()
    End Sub

    Private Sub ConnectionSettings_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        VullSettingen(ConnectionsName)
    End Sub
    Private Function NameSpeed(ByVal direction As Boolean, ByVal value As String) As String
        NameSpeed = ""
        If direction Then
            Select Case value
                Case 0
                    NameSpeed = "9k" 'daveSpeed9k
                Case 1
                    NameSpeed = "19k" 'daveSpeed19k
                Case 2
                    NameSpeed = "187k" 'daveSpeed187k
                Case 3
                    NameSpeed = "500k" 'daveSpeed500k
                Case 4
                    NameSpeed = "1500k" 'daveSpeed1500k
                Case 5
                    NameSpeed = "45k" 'daveSpeed45k
                Case 6
                    NameSpeed = "93k" 'daveSpeed93k 
                Case Else
                    NameSpeed = "187k" 'daveSpeed187k
            End Select
        Else
            Select Case value
                Case "9k"
                    NameSpeed = "0" 'daveSpeed9k
                Case "19k"
                    NameSpeed = "1" 'daveSpeed19k
                Case "187k"
                    NameSpeed = "2" 'daveSpeed187k
                Case "500k"
                    NameSpeed = "3" 'daveSpeed500k
                Case "1500k"
                    NameSpeed = "4" 'daveSpeed1500k
                Case "45k"
                    NameSpeed = "5" 'daveSpeed45k
                Case "93k"
                    NameSpeed = "6" 'daveSpeed93k 
                Case Else
                    NameSpeed = "2" 'daveSpeed187k
            End Select

        End If
        Return NameSpeed
    End Function
    Private Function NameProtocol(ByVal direction As Boolean, ByVal value As String) As String
        'Protocol types to be used with newInterface:
        NameProtocol = ""
        If direction Then
            Select Case value
                Case 0
                    NameProtocol = "MPI" 'MPI for S7 300/400   daveProtoMPI    = 0
                Case 1
                    NameProtocol = "MPI1" 'MPI for S7 300/400  daveProtoMPI2   = 1  Andrew's version
                Case 2
                    NameProtocol = "MPI2" 'MPI for S7 300/400  daveProtoMPI3   = 2  what Step7 speaks, experimental
                Case 3
                    NameProtocol = "MPI3" 'MPI for S7 300/400, daveProtoMPI4   = 3  Andrew's version" with additional STX
                Case 4
                    NameProtocol = "MPI4" 'MPI for S7 300/400
                Case 10
                    NameProtocol = "PPI" 'PPI for S7 200       daveProtoPPI    = 10
                Case 20
                    NameProtocol = "AS511" 'S5 via programmer port daveProtoAS511  = 20
                Case 50
                    NameProtocol = "S7online" 'S7Onlinx.dll  daveProtoS7Online = 50  use for transport
                Case 122
                    NameProtocol = "ISOTCP" 'ISO over TCP     daveProtoISOTCP = 122;
                Case 123
                    NameProtocol = "ISOTCP243" 'ISO over TC daveProtoISOTCP243 = 123  with CP243
                Case 223
                    NameProtocol = "MPI_IBH" 'MPI with IBH NetLink MPI to ethernet gateway   daveProtoMPI_IBH = 223
                Case 224
                    NameProtocol = "PPI_IBH" 'PPI with IBH NetLink MPI to ethernet gateway daveProtoPPI_IBH = 224
                Case 230
                    NameProtocol = "MPINetLink" 'PI with NetLink Pro MPI to ethernet gateway daveProtoNLpro = 230
                Case 255
                    NameProtocol = "UserTransport" 'user defined transport protocol  daveProtoUserTransport = 255
                Case Else
                    NameProtocol = "ISOTCP"
            End Select
        Else
            Select Case value
                Case "MPI"
                    NameProtocol = "0" 'MPI for S7 300/400   daveProtoMPI    = 0
                Case "MPI1"
                    NameProtocol = "1" 'MPI for S7 300/400  daveProtoMPI2   = 1  Andrew's version
                Case "MPI2"
                    NameProtocol = "2" 'MPI for S7 300/400  daveProtoMPI3   = 2  what Step7 speaks, experimental
                Case "MPI3"
                    NameProtocol = "3" 'MPI for S7 300/400, daveProtoMPI4   = 3  Andrew's version" with additional STX
                Case "MPI4"
                    NameProtocol = "4" 'MPI for S7 300/400
                Case "PPI"
                    NameProtocol = "10" 'PPI for S7 200       daveProtoPPI    = 10
                Case "AS511"
                    NameProtocol = "20" 'S5 via programmer port daveProtoAS511  = 20
                Case "S7online"
                    NameProtocol = "50" 'S7Onlinx.dll  daveProtoS7Online = 50  use for transport
                Case "ISOTCP"
                    NameProtocol = "122" 'ISO over TCP daveProtoISOTCP = 122;
                Case "ISOTCP243"
                    NameProtocol = "123" 'ISO over TCP daveProtoISOTCP243 = 123  with CP243
                Case "ISOTCPR"
                    NameProtocol = "124" 'ISO over TCP with Routing
                Case "MPI_IBH"
                    NameProtocol = "223" 'MPI with IBH NetLink MPI to ethernet gateway   daveProtoMPI_IBH = 223
                Case "PPI_IBH"
                    NameProtocol = "224" 'PPI with IBH NetLink MPI to ethernet gateway daveProtoPPI_IBH = 224
                Case "MPINetLink"
                    NameProtocol = "230" 'PPI with NetLink Pro MPI to ethernet gateway daveProtoNLpro = 230
                Case "UserTransport"
                    NameProtocol = "255" 'user defined transport protocol  daveProtoUserTransport = 255
                Case Else
                    NameProtocol = "122"
            End Select
        End If
        Return NameProtocol
    End Function
    Private Sub ComboBoxProtocol_SelectedValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ComboBoxProtocol.SelectedValueChanged
        Dim value As String = ComboBoxProtocol.SelectedItem()
        Select Case value
            Case "MPI"
                LabelProtocol.Text = "MPI for S7 300/400"
            Case "MPI1"
                LabelProtocol.Text = "MPI for S7 300/400 Andrew's version"
            Case "MPI2"
                LabelProtocol.Text = "MPI for S7 300/400 what Step7 speaks, experimental"
            Case "MPI3"
                LabelProtocol.Text = "MPI for S7 300/400 Andrew's version with additional STX"
            Case "MPI4"
                LabelProtocol.Text = "MPI for S7 300/400 "
            Case "PPI"
                LabelProtocol.Text = "for S7 200"
            Case "AS511"
                LabelProtocol.Text = "S5 via programmer port AS511"
            Case "S7online"
                LabelProtocol.Text = "S7Onlinx.dll use for transport"
            Case "ISOTCP"
                LabelProtocol.Text = "ISO over TCP"
            Case "ISOTCP243"
                LabelProtocol.Text = "ISO over TCP with CP243"
            Case "ISOTCPR"
                LabelProtocol.Text = "ISO over TCP with Routing"
            Case "MPI_IBH"
                LabelProtocol.Text = "MPI with IBH NetLink MPI to ethernet gateway"
            Case "PPI_IBH"
                LabelProtocol.Text = "PPI with IBH NetLink MPI to ethernet gateway"
            Case "MPINetLink"
                LabelProtocol.Text = "PI with NetLink Pro MPI to ethernet gateway"
            Case "UserTransport"
                LabelProtocol.Text = "user defined transport protocol"
            Case Else
                LabelProtocol.Text = ""
        End Select
    End Sub


    Private Sub NewXMLDoc()
        Dim doc As New Xml.XmlDocument
        doc = New XmlDataDocument
        doc.LoadXml("<?xml version=""1.0"" encoding=""utf-8""?>" + _
            "<Connections>" + _
            "<Settings name='Default'>" & _
            "<Protocol>122</Protocol>" + _
            "<IP>192.168.1.100</IP>" + _
            "<ComPort>COM1</ComPort>" + _
            "<Speed>2</Speed>" + _
            "<Rack>0</Rack>" + _
            "<Slot>2</Slot>" + _
            "<Active>Default</Active>" + _
            "</Settings>" & _
            "</Connections>")
        doc.Save(NameXmlFile)
    End Sub

    Private Sub VullSettingen(ByVal name As String)
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList
        If Not System.IO.File.Exists(NameXmlFile) Then
            NewXMLDoc()
        End If
        doc.Load(NameXmlFile)
        m_SettList = doc.SelectNodes("/Connections/Settings")
        For Each m_node In m_SettList
            ComboBoxSelectSettings.Items.Add(m_node.Attributes.GetNamedItem("name").Value)
        Next
        ComboBoxSelectSettings.SelectedItem = name
        ComboBoxSelectSettings.Select()
    End Sub

    Private Sub LoadSettingen(ByVal name As String)
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList

        If name = "" Then
            name = "Default"
        End If
        doc.Load(NameXmlFile)

        m_SettList = doc.SelectNodes("/Connections/Settings")

        For Each m_node In m_SettList
            Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
            If n_Attribute = name Then
                ComboBoxProtocol.SelectedItem = NameProtocol(True, m_node.ChildNodes.Item(0).InnerText)
                ComboBoxProtocol.Select()
                TextBoxIPaddress.Text = m_node.ChildNodes.Item(1).InnerText
                ComboBoxPort.SelectedItem = m_node.ChildNodes.Item(2).InnerText
                ComboBoxPort.Select()
                ComboBoxSpeed.SelectedItem = NameSpeed(True, m_node.ChildNodes.Item(3).InnerText)
                ComboBoxSpeed.Select()
                NumericEditRack.Value = CInt(m_node.ChildNodes.Item(4).InnerText)
                NumericEditSlot.Value = CInt(m_node.ChildNodes.Item(5).InnerText)
            End If
        Next
        ConnectionsName = name
    End Sub

    Private Sub ButtonNewSettings_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ButtonNewSettings.Click
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList

        If TextBoxNewSettings.Text = "" Then
            MsgBox("Empty name connections is not allowed!")
        Else
            If CheckProto(ComboBoxProtocol.SelectedItem) Then
                doc.Load(NameXmlFile)
                m_SettList = doc.SelectNodes("/Connections/Settings")

                Dim elmXML As XmlElement = doc.CreateElement("Settings")
                elmXML.SetAttribute("name", TextBoxNewSettings.Text)
                Dim strNewPart As String = "<Protocol>" + NameProtocol(False, ComboBoxProtocol.SelectedItem) + "</Protocol>" + _
                        "<IP>" + TextBoxIPaddress.Text + "</IP>" + _
                        "<ComPort>" + ComboBoxPort.SelectedItem + "</ComPort>" + _
                        "<Speed>" + NameSpeed(False, ComboBoxSpeed.SelectedItem) + "</Speed>" + _
                        "<Rack>" + CStr(NumericEditRack.Value) + "</Rack>" + _
                        "<Slot>" + CStr(NumericEditSlot.Value) + "</Slot>"

                elmXML.InnerXml = strNewPart
                doc.DocumentElement.AppendChild(elmXML)
                'MessageBox.Show(doc.OuterXml)
                doc.Save(NameXmlFile)
                ComboBoxSelectSettings.Items.Add(TextBoxNewSettings.Text)
                ComboBoxSelectSettings.SelectedItem = TextBoxNewSettings.Text
                ComboBoxSelectSettings.Select()
                LoadSettingen(TextBoxNewSettings.Text)
            End If
        End If
    End Sub


    Private Sub ButtonShowFile_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ButtonShowFile.Click
        Dim doc As New Xml.XmlDocument
        doc.Load(NameXmlFile)
        MessageBox.Show(doc.OuterXml)

    End Sub

    Private Sub ComboBoxSelectSettings_SelectedValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ComboBoxSelectSettings.SelectedValueChanged
        Dim name As String = ComboBoxSelectSettings.SelectedItem
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList

        If name = "" Then
            name = "Default"
        End If
        doc.Load(NameXmlFile)

        m_SettList = doc.SelectNodes("/Connections/Settings")

        For Each m_node In m_SettList
            Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
            If n_Attribute = "Default" Then
                m_node.ChildNodes.Item(6).InnerText = name
            End If
        Next
        ConnectionsName = name
        doc.Save(NameXmlFile)
        LoadSettingen(name)

    End Sub
    Private Function CheckProto(ByVal a As String) As Boolean
        If a = "ISOTCP" Or a = "MPI1" Or a = "MPI2" Or a = "MPI3" Or a = "MPI4" Then
            Return True
        Else
            MsgBox("Sorry protocol: " + ComboBoxProtocol.SelectedItem + " - is not implemented!")
            Return False
        End If
    End Function

End Class