export LSTF="/data/data/com.termux/files/usr/var/lib/kkz/LRoot"
clear
read -p "Continue press enter exit do ^C: "
clear
echo "[!] Alert: If you really want to use it, there's a danger: it messes with the system's shell."

echo "[*] Creating environment..."
# O -p cria a hierarquia completa sem dar erro se já existir
mkdir -p "$LSTF/sys" "$LSTF/system" "$LSTF/system_ext" "$LSTF/vendor"
mkdir -p "$LSTF/bin" "$LSTF/dev" "$LSTF/home" "$LSTF/usr"
mkdir -p "$LSTF/boot/init"
mkdir -p "$LSTF/root/uid/0"
mkdir -p "$LSTF/root/gid/0"

sleep 2
echo "[*] Finally, customizing the Shell..."

# Adicionando ao .bashrc apenas se não existir a marcação do LRoot
if ! grep -q "LRoot" ~/.bashrc; then
cat <<EOF >> ~/.bashrc

# LRoot Shell Config
cd $LSTF
export PS1="LRoot@Root # "
EOF
fi

echo "[!] New Section! Restart Termux to apply."
sleep 2
echo [*] Finally, customizing the Shell...
cat <<EOF>> ~/.bashrc
cd /data/data/com.termux/files/usr/var/lib/kkz/LRoot
export PS1="LRoot@Root # "
EOF
Echo [!] New Seccion!
