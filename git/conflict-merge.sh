#conflict-merge.sh
#!/bin/bash
if [ ! -n "$1" ]; then
    echo "please input from branch!";
    exit 0;
else if [ ! -n "$2" ]; then
  1 #!/bin/bash
    echo "please input to branch!";
    exit 1;
     fi
fi
 
#set -x
 
git push origin $1
git fetch origin
git checkout -b $1 origin/$1
git checkout $2
git merge --no-ff $1
git merge origin/$2
gaa .
git commit -m "commit message"
git push origin $2
 
echo 'my lord, conflict has been resolved!'
