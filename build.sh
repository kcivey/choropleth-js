#!/usr/bin/env bash

cp -au node_modules/leaflet/dist/leaflet.js example/js/
cp -au node_modules/leaflet/dist/leaflet.css example/css/

npx babel choropleth.js | \
    npx browserify - | \
    npx terser -c -m --toplevel --comments /Copyright/ \
    > example/js/choropleth.js
