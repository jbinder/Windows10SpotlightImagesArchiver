#!/bin/sh

minimumsize=1500

userprofile=$1
target=$2

if [ -z "$userprofile" ]; then
    echo "Please provide your username as argument!"
    exit 1
fi
if [ -z "$target" ]; then
    target='/c/users/'${userprofile}'/Pictures/Windows10SpotlightImages'
fi

files='/c/users/'${userprofile}'/AppData/Local/Packages/Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy/LocalState/Assets/*'

mkdir -p $target

echo "Archiving images to " $target...

for f in $files
do
    ext=$(file -b $f  |  awk '{print $1;}')
    name=$(basename $f)
    filesize=$(wc -c <"$f")
    if [ "$ext" == "XML" ] || [ $filesize -lt $minimumsize ]; then
        echo "Skipping $name"
        continue
    fi
    filename=$name.$ext
    fullname=$target/$filename
    if [ -f "$fullname" ]; then
        echo "Already exists: $filename"
        continue
    fi
    echo "Processing $filename"
    cp -n $f $fullname
done

echo "Done."
