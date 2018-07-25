#!/bin/sh

lang_arr=(de he)
for lang in ${lang_arr[@]}
do
msgfmt 0.91/$lang.po -o 0.91/inkscape.mo
msgfmt 0.92/$lang.po -o 0.92/inkscape.mo
msgfmt master/$lang.po -o master/inkscape.mo
done
