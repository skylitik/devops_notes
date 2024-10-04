Dont use shell >> Use Invoke top-level Maven targets
**/*.war - archive everything with war



mkdir -p versions
#cp target/vprofile-v2.war versions/vprofile-V$BUILD_ID.war
#cp target/vprofile-v2.war versions/vprofile-V$VERSION.war
cp target/vprofile-v2.war versions/vprofile-V$BUILD_TIMESTAMP-$BUILD_ID.war

^Execute Shell command