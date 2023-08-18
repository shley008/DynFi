#!/bin/bash
echo -e "Installing and launching ${BLUE}DynFi Manager${NC}..."
DFMver=$(curl "https://dynfi.com/latest-version")
#DFMver=$(wget "https://dynfi.com/latest-version")
wget "https://dynfi.com/files/dynfi/dynfi-$DFMver-all.jar" -O /app/dynfi.jar