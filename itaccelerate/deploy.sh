#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git config --global user.email "alex.kunze13@gmail.com"
git config --global user.name "ryyvive"
git commit -m 'deploy'
git push -f git@github.com:Ryyvive/ryyvive.github.io.git master:gh-pages
cd -