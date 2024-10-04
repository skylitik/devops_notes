Ami Amazon Linux(centos) with webserver include
cd /var/log/httpd/
cat access_log
tail -f access_log
___
# Create S3
web01-logs-321 - name
same region
___
AMI
Archive the Logs:
tar czvf wave-web01-httpdlogs03102024.tar.gz *
mkdir /tmp/logs-wave
mv wave-web01-httpdlogs03102024.tar.gz /tmp/logs-wave/
cat /dev/null > access_log && cat /dev/null > error_log
Install aws cli:  yum install awscli -y
aws s3 help
___
Go IAM and create a user
s3-log-admin
Amazon s3 fullAccess
Create access key:
___
AMI:
folder httpd: aws configure
format: json
____
aws s3 ls
now copy log file to s3 bucket
aws s3 cp /tmp/logs-wave/wave-web01-httpdlogs03102024.tar.gz s3://15m0-logs-321/
___
or sync:
aws s3 sync /tmp/logs-wave/ s3://15m0-logs-321/
____
after all clean logs in ami
rm -rf /tmp/logs-wave/*
___
Cloud Watch you can see logs, monitor metrics
___
# Create Role for using CloudWatch
IAM => Create role =>Aws services => EC2 =>s3fullAccess and CloudWatchLogsFullAccess
RoleName: log-admin-role
___
Remove the previous credentials on AMI
rm -rf /.aws/credentials
aws s3 ls
___
Go to Aws and edit AMIs:
Actions=>Security=>Modify IAM role=>log-admin
___
on Ami
yum install awslogs -y
vim /etc/awslogs/awslogs.conf

# Install Cloud Watch on ami
