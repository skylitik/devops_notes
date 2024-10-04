scp

echo "testfile" > testfile.txt
scp testfile.txt devops@web01:/tmp  (thats how push the script)
scp testfile.txt devops@web01:/root  

scp -i ~/.ssh/id_rsa testfile.txt devops@web01:/home/devops/
