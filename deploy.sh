#!/usr/bin/env sh

# Replace this later with github action workflow https://vitejs.dev/guide/static-deploy.html

# abort on errors
set -e

# build
npm run build

git add dist -f
git commit -m 'deploy'
git subtree push --prefix dist origin:main gh-pages

# # navigate into the build output directory
# cd dist

# # if you are deploying to a custom domain
# # echo 'www.example.com' > CNAME

# git init
# git add -A
# git commit -m 'deploy'

# # if you are deploying to https://<USERNAME>.github.io
# # git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# # if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:jtdLab/my_vue_app.git main:gh-pages

# cd -