#!/bin/bash

# Define color variables
GREEN="\033[0;32m"  # Green color
NC="\033[0m"       # No color

mkdir -p ./assets
mkdir -p ./assets/gfx/detail
mkdir -p ./assets/gfx/env

# cstrike/*.wad
rsync -av --prune-empty-dirs \
--include="*.wad" \
--exclude="*" \
./cstrike/ ./assets/

# cstrike/models
rsync -av --prune-empty-dirs \
--include="*/" \
--include="*.mdl" \
--exclude="*" \
./cstrike/models/ ./assets/models/

# cstrike/sound
rsync -av --prune-empty-dirs \
--include="*/" \
--include="*.wav" \
--include="*.mp3" \
--exclude="*.txt" \
--exclude="*" \
./cstrike/sound/ ./assets/sound/

# cstrike/sprites
rsync -av --prune-empty-dirs \
--include="*/" \
--include="*.spr" \
--include="*.txt" \
--exclude="*" \
./cstrike/sprites/ ./assets/sprites/

# cstrike/maps
rsync -av --prune-empty-dirs \
--include="*.bsp" \
--include="*.txt" \
--include="*.res" \
--exclude="*" \
./cstrike/maps/ ./assets/maps/

# cstrike/overviews
rsync -av --prune-empty-dirs \
--include="*.bmp" \
--include="*.txt" \
--exclude="*" \
./cstrike/overviews/ ./assets/overviews/

# cstrike/gfx/detail
rsync -av --prune-empty-dirs \
--include="*.tga" \
--include="*.bmp" \
--include="*.pcx" \
--exclude="*" \
./cstrike/gfx/detail/ ./assets/gfx/detail/

# cstrike/gfx/env
rsync -av --prune-empty-dirs \
--include="*.tga" \
--include="*.bmp" \
--include="*.pcx" \
--exclude="*" \
./cstrike/gfx/env/ ./assets/gfx/env/

echo -e "${GREEN}[+] Process completed.${NC}"

read -p "Press Enter to exit."
