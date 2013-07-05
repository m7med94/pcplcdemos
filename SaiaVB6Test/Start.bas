Attribute VB_Name = "Start"
Public fMainForm As frmMain


Sub Main()
    frmSplash.Show
    frmSplash.Refresh
    Sleep 1000
    Set fMainForm = New frmMain
    Load fMainForm
    Unload frmSplash

    verbinding = False
    'ChDir "C:\Documents and Settings\Katja\Mijn documenten\Visual Studio Projects\VB6\Test2"
    ChDir "C:\Program Files\SAIA-Burgess\PG5 1_4"
    fMainForm.Show
    frmMain.sbStatusBar.Panels(1).Text = ConnectPCD.connect
End Sub

