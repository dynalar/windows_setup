# Windows Dependencies

## Objective
Dependencies I use when installing Windows 11. Mostly used for gaming, but also for C# development.

## Dependencies
Requires Chocolatey.

To install, open a powershell prompt and run these commands:

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

## Notes
If you add more dependencies through chocolatey, make sure to export them using this:
```
choco export
```

It will create an updated packages.config file with your newly added packages. Then move the file into this repo. Do NOT edit packages.config! Make all changes through the choco command when installing, upgrading, deleting, etc.