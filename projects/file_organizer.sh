#!/bin/bash

TARGET_DIR=${1:-.}

# check for directory
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: directory $TARGET_DIR doesnot exist."
  exit 1
fi

#create folder and move files
function organize_files() {
  ext=$1
  folder_name=$2

  #check extensions
  if ls *."$ext" 1>/dev/null 2>&1; then
    mkdir -p "$folder_name"

    mv *."$ext" "$folder_name"/
    echo "Moved all .$ext file to $folder_name/"
  fi
}

cd "$TARGET_DIR" || exit

organize_files "cpp" "c++"
organize_files "css" "style"
organize_files "js" "script"

# unknown file types
mkdir -p "others"
for file in *; do
  if [ -f "$file" ]; then
    mv "$file" "others/"
    echo "Moved $file to others/"
  fi
done

echo "Done Organizing!"
