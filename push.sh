#! /bin/bash
npm run prettier
npm run publish
git config user.email example@gmail.com
git add .
date=$(date "+%Y-%m-%d-%H:%M:%S")
git commit -m "$date $1"
git push origin master