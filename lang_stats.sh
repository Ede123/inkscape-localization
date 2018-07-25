#!/bin/sh

lang_add=(de he)

for lang in ${lang_arr[@]}
do
msgfmt --statistics -cv 0.91/$lang.po
msgfmt --statistics -cv 0.92/$lang.po
msgfmt --statistics -cv master/$lang.po
rm -f messages.mo
done
