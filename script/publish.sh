if [ $# -ne 2 ]; then
echo "usage: ./publish.sh \"commit message\" <path to deployment tree>"
exit 1;
fi
cwd="$PWD"
# sculpin generate --env=prod

cp -R output_prod/* $2
rm -rf output_*

cd $2
git add *
git commit -m "$1"
git push origin master

cd "$cwd"