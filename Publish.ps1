#!/usr/bin/powershell

$outputFolder = "$PSScriptRoot/artifacts"
$webDir = "$PSScriptRoot/WebApp"

Remove-Item -Force -Recurse $outputFolder

dotnet publish -c Release -o $outputFolder "$webDir/WebApp.csproj"

Copy-Item "$webDir/appsettings*.json" $outputFolder

