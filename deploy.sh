#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 进入VuePress项目目录
cd vue-press

# 构建静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果您的域名是https://<USERNAME>.github.io/<REPO>，则将URL改为'/<REPO>/'，否则保持不变 hkmuchinfo@gmail.com
# echo 'your_github_pages_domain_or_path' > CNAME
# git push -f git@github.com:hkmuchinfo@gmail.com/hkmuchinfo@gmail.com.github.io.git master

# 提交并推送到GitHub Pages
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:hkmuchinfo@gmail.com.git master:gh-pages

cd -
