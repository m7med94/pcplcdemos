Imports System.Xml
Module ModuleOpn
    Public Sub NewXMLDocP()
        Dim doc As New Xml.XmlDocument
        doc = New XmlDataDocument
        doc.LoadXml("<?xml version=""1.0"" encoding=""utf-8""?>" + _
            "<DBtype>" + _
            "<Settings name='P0'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
           "<Settings name='P1'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
           "<Settings name='P2'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P3'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P4'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P5'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P6'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P7'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P8'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P9'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P10'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P11'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P12'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P13'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "<Settings name='P14'>" & _
            "<DBnum>860</DBnum>" + _
            "<Adr>10</Adr>" + _
            "</Settings>" & _
            "</DBtype>")
        doc.Save(NameOpnXmlFile)
    End Sub
    Private Sub LoaDDataP()
        Dim doc As New Xml.XmlDocument
        Dim m_SettList As XmlNodeList
        Dim name As String
        Dim i As Integer

        doc.Load(NameOpnXmlFile)

        m_SettList = doc.SelectNodes("/DBtype/Settings")

        For i = 0 To 10
            For Each m_node In m_SettList
                name = "P" + CStr(i)
                Dim n_Attribute = m_node.Attributes.GetNamedItem("name").Value
                If n_Attribute = name Then
                    PNum(i) = CInt(m_node.ChildNodes.Item(0).InnerText)
                    PAdr(i) = CInt(m_node.ChildNodes.Item(1).InnerText)
                End If
            Next
        Next
    End Sub
End Module
