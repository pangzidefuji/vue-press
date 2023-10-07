#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e
# 查看 Node.js 版本号
# 安装 n（如果未安装）
curl -L https://git.io/n-install | bash

# 设置要使用的 Node.js 版本
n 14.21.3
echo "123121"
node -v
# 输出环境变量
echo "Operating System: $RUNNER_OS"
yarn install

# 生成静态文件
yarn docs:build
# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名 1
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f git@github.com:pangzidefuji/pangzidefuji.github.io main

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
