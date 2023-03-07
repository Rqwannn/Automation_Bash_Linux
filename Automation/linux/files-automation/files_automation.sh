
# touch files_automation.sh => buat file di wsl
# chmod +x files_automation.sh
# bash files_automation.sh jalanin filenya /files_automation.sh

FOLDER="certificates"
NAMES_FILE="names.txt"

if [[ ! -d $FOLDER ]]; then
    echo "Creating certificates folder..."
    mkdir $FOLDER
fi

while read -r names; do
    echo Creating "$names".html
    sed -e "s/NAMA_DISINI/$names/" cert_template.html > $FOLDER/"$names".html
done < "$NAMES_FILE"