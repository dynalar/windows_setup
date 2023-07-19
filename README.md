# Windows Dependencies

## Objective
Dependencies I use when installing Windows 11. Mostly used for gaming, but also for C# development.

## Dependencies
Requires Chocolatey.

To install, open a powershell prompt and run these commands

Opens up the policy a bit
```powershell
Set-ExecutionPolicy AllSigned
```

Installs the Chocolatey package manager
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

And that's it! Instructions came from here:
https://chocolatey.org/install

## Installing Windows 11 Apps
Open a new terminal as administrator

Change directory into this repo, and run the comand below on a new machine.

`run.bat`

And all dependencies should install!