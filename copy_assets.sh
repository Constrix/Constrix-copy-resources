#!/bin/bash

mkdir -p ./assets

# cstrike/models
rsync -av --ignore-existing --prune-empty-dirs \
--include='/cstrike/models/' \
./cstrike/models/ ./assets/models/

# cstrike/sound
rsync -av --ignore-existing --prune-empty-dirs \
--include='/cstrike/sound/' \
./cstrike/sound/ ./assets/sound/

# cstrike/sprites
rsync -av --ignore-existing --prune-empty-dirs \
--include='/cstrike/sprites/' \
./cstrike/sprites/ ./assets/sprites/

# cstrike/maps
rsync -av --ignore-existing --prune-empty-dirs \
--include='/cstrike/maps/' \
./cstrike/maps/ ./assets/maps/

# cstrike/overviews
rsync -av --ignore-existing --prune-empty-dirs \
--include='/cstrike/overviews/' \
./cstrike/overviews/ ./assets/overviews/

# cstrike/gfx/detail
rsync -av --ignore-existing --prune-empty-dirs \
--include='/cstrike/gfx/detail' \
./cstrike/gfx/detail ./assets/gfx/

# cstrike/gfx/env
rsync -av --ignore-existing --prune-empty-dirs \
--include='/cstrike/gfx/env' \
./cstrike/gfx/env ./assets/gfx/

read -p "Process completed. Press Enter to exit."