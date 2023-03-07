if grep -q "microsoft" /proc/version > /dev/null 2>&1; then
    if service docker status 2>&1 | grep -q "is not running"; then
        wsl.exe --distribution "Ubuntu" --user root             --exec /usr/sbin/service docker start > /dev/null 2>&1
    fi
fi
if grep -q "microsoft" /proc/version > /dev/null 2>&1; then
    if service docker status 2>&1 | grep -q "is not running"; then
        wsl.exe --distribution "Ubuntu" --user root             --exec /usr/sbin/service docker start > /dev/null 2>&1
    fi
fi
if grep -q "microsoft" /proc/version > /dev/null 2>&1; then
    if service docker status 2>&1 | grep -q "is not running"; then
        wsl.exe --distribution "Ubuntu" --user root             --exec /usr/sbin/service docker start > /dev/null 2>&1
    fi
fi
if grep -q "microsoft" /proc/version > /dev/null 2>&1; then
    if service docker status 2>&1 | grep -q "is not running"; then
        wsl.exe --distribution "Ubuntu" --user root             --exec /usr/sbin/service docker start > /dev/null 2>&1
    fi
fi
