#!/usr/bin/powershell

& "$PSScriptRoot/Build.ps1"

cd "$PSScriptRoot/src/WebApp"
dotnet publish -o "$PSScriptRoot/artifacts" -c Release .