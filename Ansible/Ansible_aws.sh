# create IAM user with admin access, cli.
#Authentication in vm control
export AWS_ACCESS_KEY_ID='AK123'
export AWS_SECRET_ACCESS_KEY='abc123'
vim .bashrc #put ^ at the end of the code
source .bashrc
###Create dir
vim test-aws.yml
- hosts: localhost
  gather_facts: False
  tasks:
    - name: Create key pair
      ec2-key:
        name: sample
# install pip
sudo apt install python3-pip -y
pip 3.10 install boto3
# OR alternative
python3 -m venv venv

source venv/bin/activate

pip install boto3
