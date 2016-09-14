#!/usr/bin/powershell

if ( $IsLinux ) {
    $id = ps -A -o pid,cmd|grep dotnet|head -n 1|cut -f 1 -d " "
    $sos = "/opt/dotnet/shared/Microsoft.NETCore.App/1.0.0/libsosplugin.so"
    sudo lldb-3.6 -o "plugin load $sos" -o "process attach --pid ` $id ` "
}
else {
    
}