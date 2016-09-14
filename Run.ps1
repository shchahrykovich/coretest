#!/usr/bin/powershell

& "$PSScriptRoot/Publish.ps1"
cd "$PSScriptRoot/artifacts"
dotnet WebApp.dll > log.txt