#!/usr/bin/env bash

PRINTER_BAUD_RATE=${PRINTER_BAUD_RATE:-9600}

# install the printer
lpadmin -p "ZJ-58" -E -m "zjiang/ZJ-58.ppd" -v "serial:/dev/ttyS0?baud=$PRINTER_BAUD_RATE"

# make it default
lpadmin -d "ZJ-58"

# set some options
lpoptions -o FeedDist=3feed12mm

