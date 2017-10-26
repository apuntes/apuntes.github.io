#!/bin/bash
echo Borro directorios ltxpng
find . -type d -name ltxpng -exec rm -r {} + 
./org/publish.el
PNGS_DIRS=($(find . -type d -name ltxpng)) 


for olddir in ${PNGS_DIRS[@]}; do
    newdir=${olddir/org\//}
    echo Copiando ${olddir} a ${newdir}
    cp -r ${olddir} ${newdir}
done

    
