This is an Ansible script to create a text file and fill it with content

This script is intended to run on a Linux OS

The script just runs on localhost but still needs some configuration to run properly:
In the /etc/hosts file, insure "localhost	127.0.0.1" is there

To run the script:
Extract the contents of the ZIP file
Run the command "sudo ansible-playbook -i hosts file-editing-playbook.yml -vvv --connection=local"

Once the script successfully runs:
Go to the home directory and insure the test.txt file was created with content