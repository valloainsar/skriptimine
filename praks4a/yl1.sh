#!/bin/bash
#
#
echo -n "Sisesta oma nimi: "; read nimi
echo "Tere tulemast, $nimi!"
echo -n "Sisesta oma synniaasta: "; read aasta
vanus=$((2019 - $aasta))

echo "$nimi, sina oled $vanus aastat vana..."

