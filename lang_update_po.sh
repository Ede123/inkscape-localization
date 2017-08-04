#!/bin/sh

if msgmerge --version > /dev/null; then
	for folder in 0.91 0.92 master; do
		cd $folder
		if msgmerge de.po inkscape.pot > de_new.po; then
			mv -f de_new.po de.po
		else
			rm de_new.po
		fi
		cd ..
	done
fi
