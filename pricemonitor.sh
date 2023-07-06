#!/bin/bash

PRICE="SEE STAFF"
MODEL=$(xrandr --verbose | edid-decode | grep "Product Name" | xargs | cut -c 23-)
MONCAPS=$(echo $MODEL | tr [:lower:] [:upper:])
MONITORSIZE="${MONCAPS//[A-Z]}"

if [ $MONITORSIZE -ge 2 ]; then
	MONITORSIZE=$(echo ${MONITORSIZE:1:2})
fi

echo $MODEL
echo $MONCAPS
echo $MONITORSIZE

case $MONITORSIZE in
	24)
	PRICE=30
	;;
	23)
	PRICE=20
	;;
	22)
	PRICE=20
	;;
	21)
	PRICE=10
	;;
	20)
	PRICE=10
	;;
	19)
	PRICE=5
	;;
	17)
	PRICE=5
	;;
	*)
	PRICE="SEE STAFF"
	;;

esac

echo $PRICE

