currdir=$(pwd)
repos=$(find . -iname ".git")
for repo in $repos
  do
    prjdir=$(dirname $repo)
    prjname=$(basename $prjdir)
    cd "$currdir/$prjdir"
    echo "\"$prjname\" project has the following branches:"
    git branch -v -a --list
  done

cd $currdir
