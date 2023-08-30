for t in `git tag`
do
    git push origin :$t
