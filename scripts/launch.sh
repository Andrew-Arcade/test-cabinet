#!/bin/bash
DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$DIR"

runuser -u arcade -- env \
    XDG_RUNTIME_DIR=/run/user/1001 \
    WLR_BACKEND=drm \
    WLR_RENDERER=gles2 \
    GODOT_PLATFORM=wayland \
    /usr/bin/cage -d -s -- ./builds/release/example-game.arm64
