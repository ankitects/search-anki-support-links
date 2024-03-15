#!/bin/bash

if [ ! -f links.extracted ]; then
    python3 scripts/extract_links.py > links.extracted
else
    echo "links.extracted found; skipping extraction"
fi

cat links.extracted extra.txt > links.txt
