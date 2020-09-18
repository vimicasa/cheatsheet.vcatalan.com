#!/bin/bash
# by https://spaceraccoon.dev

i=1
while :
do
    file=$(file compressed$i.unk);
    echo $file;
    let "next = i + 1";
    if [[ "$file" == *zlib* ]] || [[ "$file" == *TeX* ]]; then
        echo "compressed$i.unk is zlib";
        pigz -d < compressed$i.unk > compressed$next.unk;
    elif [[ "$file" == *bzip2* ]]; then
        echo "compressed$i.unk is bzip2";
        bzip2 -dc compressed$i.unk > compressed$next.unk;
    elif [[ "$file" == *gzip* ]]; then
        echo "compressed$i.unk is gzip";
        gunzip -c compressed$i.unk > compressed$next.unk;
    elif [[ "$file" == *XZ* ]]; then
        echo "compressed$i.unk is XZ";
        unxz compressed$i.unk -S unk -c > compressed$next.unk;
    elif grep -q -E "^([0-9A-Fa-f]{2})+$" "compressed$i.unk"; then
        echo "compressed$i.unk is hex"; 
        cat compressed$i.unk | xxd -r -p > compressed$next.unk;
    elif grep -q -E "(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?" "compressed$i.unk"; then
        echo "compressed$i.unk is base64";
        base64 -d compressed$i.unk > compressed$next.unk;
    else
        exit 1;
    fi
    let "i+=1";
done