#!/bin/bash
set -eu

DATETIME="$(date +'%Y/%m/%d %H:%M:%S')"

hugo
git add .
git commit -a -m "Update at $DATETIME"
git push origin master
cd public
git commit -a -m "Update at $DATETIME"
git push origin gh-pages

