create a Bitbucket repository.

Use SSH keys for the authentication.

Take repository from GitHub and migrate it to Bitbucket repository.
___
Bitbucket.org:
* Create Account
* Create repo
Keys:
* Generate SSH keys
* Copy public key to bitbucket acc
* SSH config file for bitbucket
Migrate from github to bitbucket repo:
* Clone source code from github
* Remove github remote url
* Add bitbucket repo URL
* Push the code
___
Keys:
    Git bash:
       ls .ssh
       cd .ssh
       ssh-keygen  <-name->
       cat public key => copy to bitbucket acc
___
Create file vim config
# bitbucket.org
Host bitbucket.org
 PreferredAuthentications publickey
 IdentityFile ~/.ssh/<-key->_rsa
___
Before execute run git bash: ssh -T git@bitbucket.org
Store a fingerprint to machine
Copy comand from bitbucket: git clone git@bitbucket.org:<-project-> and something else
go to tmp dir
paste the copied comand => ls -ltr
cat folder/.git/config
___
clone source code to folder
cat .git/config
git checkout aws-ci
git branch -a
git fetch --tags
remove github url:
git remote rm origin
add bitbucket url to repo:
git remote add origin git@bitbucket.org:<-name->
cat .git/config
git push origin --all