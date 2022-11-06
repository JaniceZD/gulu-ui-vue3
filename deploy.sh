rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git push -f git@github.com:JaniceZD/gulu-ui-vue3.git master:gh-pages &&
cd -
echo https://janicezd.github.io/gulu-ui-vue3/index.html