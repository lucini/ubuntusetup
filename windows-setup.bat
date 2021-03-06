#!/bin/bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install openssl.light -y
choco install 7zip -y

choco install firefox -y
choco install spotify -y
choco install telegram -y
choco install microsoft-teams -y

#>DEV
choco install git -y
#>>FRONTEND
choco install nodejs -y
choco install vscode -y
#>>BACKEND-JAVA
choco install openjdk11 -y
choco install maven -y
choco install intellijidea-community -y
#>>DATABASE
choco install postgresql13 --params '/Password:test' --ia '--serverport 5433' -y
choco install dbeaver -y

