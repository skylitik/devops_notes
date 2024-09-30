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

# add other code to test
- hosts: localhost
  gather_facts: False
  tasks:
    - name: Create key pair
      ec2_key:
        name: sample
        region: us-east-1
      register: keyout

        #- name: print key
      #debug:
        #var: keyout

    - name: save key
      copy:
        content: "{{keyout.key.private_key}}"
        dest: ./sample.pem
      when: keyout.changed

# add new collection to create vm aws ec2
ansible-galaxy collection install amazon.aws
# start with this code in test
- hosts: localhost
  gather_facts: False
  tasks:
    - name: Create key pair
      ec2_key:
        name: sample
        region: us-east-1
      register: keyout

        #- name: print key
      #debug:
        #var: keyout

    - name: save key
      copy:
        content: "{{keyout.key.private_key}}"
        dest: ./sample.pem
      when: keyout.changed
    - name: start an instance
  amazon.aws.ec2_instance:
    name: "public-compute-instance"
    key_name: "sample"
    #vpc_subnet_id: subnet-5ca1ab1e
    instance_type: t2.micro
    security_group: default
      #network_interfaces:
      #- assign_public_ip: true
    image_id: ami-0ebfd941bbafe70c6
    exact_count: 1
    region: us-east-1
    tags:
      Environment: Testing
