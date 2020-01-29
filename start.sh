#!/bin/bash

cp "./config.json" "./src/config.json"

for env in $(compgen -v) ; do
    sed -i -r 's|\{'"$env"'\}|'"${!env}"'|' "./src/config.json"
done

pm2-runtime start src/index.js
