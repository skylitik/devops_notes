* Create user for bucket >> access for amazons3FullAccess only
* From gitbash , as admin run:
`aws config`
* enter credits from portal and save on machine
* In IDE terminal enter:
`aws s3 mb s3://<unique_name>`
* copy folder (download artifact)
`aws s3 cp target/vprofile-v2.war s3://<unique_name>`