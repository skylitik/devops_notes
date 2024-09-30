In Ubuntu `apt update`
`apt install awscli`
`aws s3 ls` - check s3 privilege's
`aws s3 cp s3://<bucket_name>/vprofile-v2.war /tmp/`
`systemctl stop tomcat9`
`rm -rf /var/lib/tomcat9/webapps/ROOT` - remove default app
`cp /tmp/vprofile-v2.war /var/lib/tomcat9/webapps/ROOT.war` - copy downloaded app
`systemctl start tomcat9` - start service
`ls /var/lib/tomcat9/webapps/` - check if extracted
` cat /var/lib/tomcat9/webapps/ROOT/WEB-INF/classes/application.properties` - check artifacts