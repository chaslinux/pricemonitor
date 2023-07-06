#!/bin/bash

MODEL=$(xrandr --verbose | edid-decode | grep "Product Name" | xargs | cut -c 23-)
MONITORSIZE="${MODEL//[A-Z]}"

if [ $MONITORSIZE -ge 2 ]; then
	MONITORSIZE=$(echo ${MONITORSIZE:1:2})
fi

echo $MODEL
echo $MONITORSIZE