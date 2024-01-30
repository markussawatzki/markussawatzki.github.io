#!/bin/bash

# Uses
# - https://github.com/hacksalot/HackMyResume
# - https://github.com/biosan/jsonresume-theme-macchiato (modified partials/work.hbs to look more like partials/education.hbs)

export NODE_PATH="."
npx hackmyresume build <(sed -E 's;<a[^>]+>([^<]+?)</a>;\1;g' "./assets/json/resume.json") TO ./cv.html -t "$NODE_PATH"/node_modules/jsonresume-theme-macchiato
