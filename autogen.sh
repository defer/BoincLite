#/bin/sh
autoscan 2>&1 | grep -v cellos
autoheader
aclocal
if [ -x /usr/bin/glibtoolize ]; then
    glibtoolize -f
else
    libtoolize -f
fi
autoconf
automake -a -Wall
