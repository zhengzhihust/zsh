#branch-delete.sh
#!/bin/bash
if [ ! -n "$1" ]; then
    echo "please input branch name!";
    exit 0;
fi
#set -x
git branch -r -d origin/$1
git branch -D $1
git push origin :$1
echo "my load, git branch $1 has been deleted!"
