
# touch sort_books.sh => buat file di wsl
# chmod +x sort_books.sh
# bash sort_books.sh jalanin filenya /sort_books.sh

# mengarah ke folder di dalam sort-books

# run bash sort_books.sh ./catalog/biography.txt OUT_BIOGRAPHY

CATALOG=$1 # harus ketik echo pertama di terminal
TARGET_FOLDER=$2 # echo kedua
SOURCE_FOLDER="books"

if [[ -z $1 ]]; then
    echo "Please input Catalog Text"
    exit 1
fi

if [[ -z $2 ]]; then
    echo "Please input Target Folder"
    exit 1
fi

if [[ ! -d $TARGET_FOLDER ]]; then
    echo "Creating $TARGET_FOLDER..."
    mkdir $TARGET_FOLDER
fi

while read -r line; do
    SOURCE_FILE="$SOURCE_FOLDER/$line.pdf"
    TARGET_FILE="$TARGET_FOLDER/$line.pdf"
    cp "$SOURCE_FILE" "$TARGET_FILE"
    echo Copying From "$SOURCE_FILE" to "$TARGET_FILE"
done < "$CATALOG"