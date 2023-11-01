#!/bin/bash
echo "Installing and launching ${BLUE}DynFi Manager${NC}..."
DFMver=$(curl "https://dynfi.com/latest-version")
DFver=$($DFMVer | sed 's/\r//g')
wget "https://dynfi.com/files/dynfi/dynfi-$DFver-all.jar" -O /app/dynfi.jar