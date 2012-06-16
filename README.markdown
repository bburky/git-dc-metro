# git-dc-metro
`git commit -m "Branch Ave"`

An isomorphically equivalent rendering of the Washington DC Metrorail as a series of git commits.

## Why?

Well, the graphical previews of branches are often described as train tracks... so why not make a metro system out of commits?

## View the Metro

*  Online with GitHub [network graph](http://github.com/bburky/git-dc-metro/network) 

*  Graphically with `gitk`

*  As ASCII `git log --oneline --graph --decorate --all`

## Creating the Metro

Run `git-gc-metro.sh` in a repo with an existing master branch. An empty initialized repo cannot be used as-is. (An empty repo can be used if the master branch is renamed instead.)

Note, this uses orphan branches for each of the Metro lines. Also, for lack of anything to put into the repository itself, the actual commits contain no files (incidentally, this makes for no merge conflicts!). The `ours` merge strategy is used to force merges of unrelated branches.