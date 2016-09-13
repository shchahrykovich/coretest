#!/usr/bin/powershell

$projects = get-childitem "$PSScriptRoot/src" -Filter "project.json" -Recurse
foreach($p in $projects)
{
    Write-Output "Building $($p.DirectoryName)"

    cd $p.DirectoryName
    dotnet restore .
    dotnet build -c Release .
}
