This is an Ansible script to setup a Postgresql database

This script is intended to run on a Linux OS

The script just runs on localhost but still needs some configuration to run properly:
In the /etc/hosts file, insure "localhost	127.0.0.1" is there

To run the script:
Extract the contents of the ZIP file
Move the "dump.sql" file to the /tmp directory
Run the command "sudo ansible-playbook -i hosts db-playbook.yml -vvv --connection=local"

Once the script successfully runs:
Run the command "psql course -h localhost -U postgres"
Enter "postgres" for the password
You now have access and control of the database