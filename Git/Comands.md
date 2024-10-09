#### Local Config

| git status                          |                     status                     |
| ----------------------------------- | ---------------------------------------------- |
| git init                            | Initalize directory                            |
| git add .                           | add actual directory to stage                  |
| git commit -m ""                    | Commit with message                            |
| git config --global user.name "___" | Set the **name** for git to use when u commit  |
| git config --global user.mail <---> | Set the **email** for git to use when u commit |
| git log                             | previous commits                               |
| git log --oneline                   | less id of commit                              |
| git show <-id->                     | show commit history with id                    |
| git branch -c <-name->              | add brucnh                                     |
| git branch -a                       | list branches                                  |
| git checkout <--> (#switch)         | switch branches                                |
| git rm <-->                         | remove file                                    |
| git merge <-->                      | merge branch to actual branch                  |
| git clone <--URL->                  | clone repo to repo                             |
| git reset --hard <-id->             | rollback                                       |
| git diff                            | see the difference                             |
| git restore --staged <--name->      | rollback not commit                            |
| git revert HEAD                     | rollback alternative                           |


#### Remote Repository

1. Create Remote repository on
* Github, bitbucket, codecommit etc
2. Clone Repo to local
* git clone URL
3. Local to Remote integration
* cd to local repo
* git remote add origin ssh://git@github.com/[username]/[repository-name].git
* git push
* git pull (to fetch latest changes)

## Gitignore
You can add .log file to .gitignore to ignore changes
