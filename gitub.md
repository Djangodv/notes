A Version Control System (VSC) saves changes to a file locally or remotely (e.g. Git).
Github is a 'host' that hosts Git remotely.

## Github setup

`ssh-keygen -t ed25519`: generate an SSH key on your computer with the ED25519 cryptographic algorithm(-t type)
>Use the generated public key in 'SSH keys' on Github

`git config -l`: list configurations

`git config --global user.email "email"`: set email \ 
`git config --global user.name "name"`: set username 

`git config --global init.defaultBranch master`: suppress warning about 'master' as the initial branch name

## Repository setup

The easiest way to setup a repository on Github is cloning it locally.

`git clone 'link'`: creates a linked copy by cloning a repository into a directory

In order to delete a git repository delete the .git.

## Commits

A commit is record of what changes you have made since the last time.

`git add 'file'`: add specified file to staging area 
`git add .`: add all files to staging area (expect deletions?)
`git add -A`: stage all changes including deletions
>The staging area stores information about what will go into your next commit

`git restore`: remove staged files from staging area

`git commit -m 'message'`: save staging area to local repo
`git commit -a`: automatically stage modified or deleted files expect newly created files

`git push -u origin main`: push commits to linked remote repo
`-u`: sets default remote branch for current local branch
`git push -f orgin 'branch name'`: force push to branch

`git pull orgin 'main'`: pull changes to local repository
>If git pull is used in a branch only changes from that specific branch are pulled

`git status`: shows files that are out of sync

Merge conflicts occur when files have already been changed when pulling/pushing.

## Repositories

`git log`: log of commit history
`git log --all --graph`: show commit history in graph form
`git ls-files`: list all files on github repository

Forking a repository trough github creates an unlinked copy meaning it's changes will never affect the main repository.

## Branches

A branch is an unlinked copy of the main repository.
Each repository has one default branch (e.g. main) from which other branches are created. 

`git checkout -b "name"`: create a new branch and automatically switch to it
`git checkout "name"`: switch to branch "name"

`git branch -M 'name'`: rename branch to specified name

Merging combines the changes from one branch into the main branch.

`git merge "branch"`: merges "branch" into current branch

A common branching strategy is:
1. main branch stores the original code for a project's codebase (e.g. release)
2. development branch where completed code is staged before release
3. new branches are created from the development branch for each new feature