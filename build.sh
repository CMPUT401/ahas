#!/bin/bash
git clone git@github.com:CMPUT401/vettr_web.git
cd ./vettr_web
yarn install
bower install
ember build -prod
cd ..
rm -rf public/assets
cp -R vettr_web/dist/* public/
cp vettr_web/dist/index.html app/views/static_pages/ 
echo "Build done"
