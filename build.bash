#!/bin/sh


browserify  -r bs58 -r multihashes -r ./src/bignumber.js:BigNumber -r ./src/etherid.js:etherid   > dist/etherid.js

browserify  -r bs58 -r multihashes -r ./src/bignumber.js:BigNumber -r ./src/etherid.js:etherid   > dist/etherid.js | uglifyjs > dist/etherid.min.js
