#!/bin/bash
#
echo -n "Millist kataloogi soovite backuppida? Sisesta kataloogi nimi (terve teega): "; read kataloog
date | cut -b 3,4,5
read aeg
tar -czvf $aeg.tar.zip $kataloog
mv $aeg.tar.zip /home/user/skriptimine/praks4a/backup/
