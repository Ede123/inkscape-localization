#!/bin/sh

cd 0.91/
mv -f de.po de_old.po
msgmerge de_old.po inkscape.pot > de.po
cd ..

cd trunk/
mv -f de.po de_old.po
msgmerge de_old.po inkscape.pot > de.po
cd ..