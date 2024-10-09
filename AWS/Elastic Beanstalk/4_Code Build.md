* Create s3 bucket 
___
CodeBuild - create project => 15m0build
Source - Bitbucket => Connect usin OAuth
Choose repo
Source version: aws-ci (branch name)
Operation system - Ubuntu
buildspec => buildspec file.yml
edit file: pasword line, user and rds endpoint
Artifacts type: Amazon S3
Add name for CloudWatch => name
___
Go to build project
___

Pipelines create
name
create connection to bitbucket
Install a new app
repo choose and brunch
trigger - no filter
Build - select project name
Deploy to Elastic Beanstalk
Select app and env name

