#!/usr/bin/powershell

if ( $IsLinux ) {
    kill -p `ps -A -o pid,cmd|grep dotnet|head -n 1|cut -f 1 -d " "`
    kill -p `ps -A -o pid,cmd|grep Run.ps1|head -n 1|cut -f 1 -d " "`
}