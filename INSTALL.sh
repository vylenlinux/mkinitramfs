#!/bin/sh

BINDIR=/usr/bin
DATADIR=/usr/share/mkinitramfs
CONFDIR=/etc
CONFDDIR=/etc/mkinitramfs.d
HOOKDIR=$DATADIR/hooks

mkdir -pv ${DESTDIR}${BINDIR}
mkdir -pv ${DESTDIR}${DATADIR}
mkdir -pv ${DESTDIR}${CONFDIR}
mkdir -pv ${DESTDIR}${CONFDDIR}
mkdir -pv ${DESTDIR}${HOOKDIR}

install -m755 mkinitramfs ${DESTDIR}${BINDIR}
install -m755 lsmkinitramfs ${DESTDIR}${BINDIR}
install -m644 init.in ${DESTDIR}${DATADIR}
install -m644 mkinitramfs.conf ${DESTDIR}${CONFDIR}
install -m644 hook/* ${DESTDIR}${HOOKDIR}
