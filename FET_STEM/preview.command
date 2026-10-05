#!/bin/bash
# Mac: double-click to preview the site at http://localhost:8000
cd "$(dirname "$0")"
(sleep 1 && open http://localhost:8000) &
python3 -m http.server 8000
