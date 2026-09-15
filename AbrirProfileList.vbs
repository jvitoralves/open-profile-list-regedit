Option Explicit
Dim WshShell, regPath, targetKey, resposta

resposta = MsgBox("Deseja abrir a pasta Profile List no Editor do Registro?", 4 + 32, "Abrir ProfileList")

If resposta = 6 Then
    Set WshShell = CreateObject("WScript.Shell")

    WshShell.Run "taskkill /F /IM regedit.exe", 0, True
    WScript.Sleep 500

    regPath = "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit\LastKey"
    targetKey = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\"

    WshShell.RegWrite regPath, targetKey, "REG_SZ"
    WScript.Sleep 500

    WshShell.Run "regedit.exe", 1, False
End If