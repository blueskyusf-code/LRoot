export LSTF="/data/data/com.termux/files/usr/var/lib/kkz/LRoot"
clear
read -p "Continue press enter exit do ^C: "
clear
echo [!] Alert: If you really want to use it, there's a danger: it messes with the system's shell. 
echo [*] Creating kkz local...
mkdir /data/data/com.termux/files/usr/var/lib/kkz
sleep 2
echo [*] Creating LRoot...
mkdir /data/data/com.termux/files/usr/var/lib/kkz/LRoot
sleep 2
echo [*] creating important files...
mkdir $LSTF/sys
mkdir $LSTF/system
mkdir $LSTF/system_ext
mkdir $LSTF/vendor
sleep 2
echo [*] Creating the binaries folder...
mkdir $LSTF/bin
sleep 2
echo [*] Creating the dev folder...
mkdir $LSTF/dev
sleep 2
echo [*] Creating the home folder...
mkdir $LSTF/home
sleep 2
echo [*] Creating the usr folder...
mkdir $LSTF/usr
echo [*] Creating the boot folder...
mkdir $LSTF/boot
mkdir $LSTF/boot/init
sleep 2
echo [*] Creating the root in pass...
mkdir $LSTF/root
mkdir $LSTF/root/uid/0
mkdir $LSTF/root/gid/0
sleep 2
echo [*] Finally, customizing the Shell...
cat <<EOF>> ~/.bashrc
cd /data/data/com.termux/files/usr/var/lib/kkz/LRoot
export PS1="LRoot@Root # "
EOF
Echo [!] New Seccion!
