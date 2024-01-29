# use constant from user32.dll
# make sure this script is in the same directory as the ahk script.

Add-Type @"
    using System;
    using System.Runtime.InteropServices;
    public class User32 {
        [DllImport("user32.dll")]
        public static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);
    }
"@

# monitor power message addresses
$WM_SYSCOMMAND = 0x0112
$SC_MONITORPOWER = 0xF170
$MonitorPowerOff = 2

# lock the screen first
rundll32.exe user32.dll,LockWorkStation

# add a small delay just enough so that it shows the lock screen first
Start-Sleep -Seconds 1

# send message to computer to turn off monitor power/input
[User32]::SendMessage(0xFFFF, $WM_SYSCOMMAND, $SC_MONITORPOWER, $MonitorPowerOff)
