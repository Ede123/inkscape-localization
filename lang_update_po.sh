#!/bin/sh

lang_arr=(de he)

for lang in ${lang_arr[@]}
do
if msgmerge --version > /dev/null; then
	for folder in 0.91 0.92 master; do
		cd $folder
		if msgmerge $lang.po inkscape.pot > $lang_new.po; then
			mv -f ${lang}_new.po $lang.po
		else
			rm ${lang}_new.po
		fi
		cd ..
	done
fi
done
