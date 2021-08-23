# Git

```text
#Remove local branches if remote delete when fetch&pull
git config --global fetch.prune true

#Remove local branches merged into the master
git branch --merged master | grep -v "master" | xargs -n 1 git branch -d
```



