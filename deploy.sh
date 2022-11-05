rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:JaniceZD/gulu-ui-vue3.git &&
git push -f -u origin master &&
cd -
echo https://janicezd.github.io/gulu-ui-vue3/index.html