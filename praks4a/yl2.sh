#!/bin/bash
#
#
echo -n "Sisesta oma ringi raadius (sentimeetrites): "; read pindala
pi='3,14'
pindal=$(( $pi * $pindala * $pindala ))
echo "Ringi pindala on $pindal cm2."
umbermoo=$(( 2 * 3,14 * $pindala ))
echo "Ringi umbermoot on $umbermoo cm."
