#!/bin/sh

msgfmt --statistics -cv 0.91/de.po
msgfmt --statistics -cv 0.92/de.po
msgfmt --statistics -cv master/de.po
rm -f messages.mo
