; ensure this script is in the same directory as the ps script.
; compile this script with ahk64 v2
Persistent

^!L:: ; Ctrl + Alt + L
{ 
    ; Define the path to the PowerShell script
    PowerShellScriptPath := "soft-sleep.ps1"

    ; Run the PowerShell script
    Run("powershell.exe -File `"" PowerShellScriptPath "`"")
}
