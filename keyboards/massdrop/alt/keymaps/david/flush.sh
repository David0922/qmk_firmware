#!/bin/bash

set -e -x

KEYBOARD='massdrop/alt'
KEYMAP='david'

qmk compile -kb $KEYBOARD -km $KEYMAP

# HEX=$(realpath ../../../../../.build/massdrop_alt_david.hex)
HEX=$(realpath ../../../../../.build/massdrop_alt_david.bin)

sudo ./mdloader_linux --first --download $HEX --restart
