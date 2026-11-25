#!/bin/bash
set -eu

cd "$(dirname "$0")/scores"

lilypond --pdf -o Cant_Buy_Me_Love_Organ Cant_Buy_Me_Love_Organ.ly
lilypond --pdf -o I_Should_Have_Known_Better_Keyboard I_Should_Have_Known_Better_Keyboard.ly
lilypond --pdf -o If_I_Fell_Piano If_I_Fell_Piano.ly
