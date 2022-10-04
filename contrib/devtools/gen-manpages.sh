#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

ENDLESSCOIND=${ENDLESSCOIND:-$SRCDIR/endlesscoind}
ENDLESSCOINCLI=${ENDLESSCOINCLI:-$SRCDIR/endlesscoin-cli}
ENDLESSCOINTX=${ENDLESSCOINTX:-$SRCDIR/endlesscoin-tx}
ENDLESSCOINQT=${ENDLESSCOINQT:-$SRCDIR/qt/endlesscoin-qt}

[ ! -x $ENDLESSCOIND ] && echo "$ENDLESSCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
NDLSVER=($($ENDLESSCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for endlesscoind if --version-string is not set,
# but has different outcomes for endlesscoin-qt and endlesscoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$ENDLESSCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $ENDLESSCOIND $ENDLESSCOINCLI $ENDLESSCOINTX $ENDLESSCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${NDLSVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${NDLSVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
