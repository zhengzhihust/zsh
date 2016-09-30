#git-add-commit-push.sh
#!/bin/bash
if [ ! -n "$1" ]; then
  echo "please input branch name!";
  exit 0;
fi
 
#set -x
 
git pull fetch origin master
git log -p master..origin/master
git merge origin/master
git add .
git commit -m "commit message"
git push origin $1
echo "my lord, code has been committed!"
