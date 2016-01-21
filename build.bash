#!/bin/sh


browserify  -r ./src/etherid.js:etherid -r ./src/bignumber.js:BigNumber > dist/etherid.js
#browserify  -r ./src/etherid.js:etherid | uglifyjs > dist/etherid.min.js
