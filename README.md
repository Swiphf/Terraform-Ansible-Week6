# Week6 - Important Notes

### NOTE
This README file is relevant only if you ssh into a controller.

---
My project contains of two environments: Staging and Production.
Each environment has a different resource group and thus a controller (one controller virtual machine for each environment).
In order to ssh into each machine, 
---


1. **Install** ansible by entering these lines (one after another)
   ```$ sudo apt update
    $ sudo apt install software-properties-common
    $ sudo add-apt-repository --yes --update ppa:ansible/ansible
    $ sudo apt install ansible```
    
2.  **Install** "community.general.ipify.facts" package by executing the following command:

    ```ansible-galaxy collection install community.general```
  
3.  **Generate a key** as follows: 
    ```ssh-keygen```
    
4.  **Make sure** that your machines are reachable by copying id to each machine as follows:

    ```ssh-copy-id -i (username)@(node machine ip) - For example - ssh-copy-id -i sela@34.76.142.118```
    
5.  After Ansible is installed you should be able to run playbooks provided in this repository. 
    **Notice** that in ```~/bootcamp/ansible/playbooks``` you have a file named "vault.yml". 
    This file has encrypted content which will be used in the playbook.
    In order to run the playbook you should **decrypt** it by executing the following command: 
    
    ```ansible-vault decrypt vault.yml``` 
    
    After doing so, you will be prompted for a password. This password will be provided to you privately.
    **NOTE!** **Make sure** to encrypt it back after you are done by using this command:
    
    ```sudo ansible-vault encrypt vault.yml```
    
    After doing so, you will be prompted to give the vault a new password. I suggest using the previous one to prevent confusion.
    
6.  In order to run the playbook you must navigate to the required location as follows: 

    ```cd ~/bootcamp/ansible/playbooks```
    
7.  To run the playbook and deploy the application execute the following command :

    ```ansible-playbook -i ../inventory application_deployment.yml```
    
    **NOTE!** This action may take a few minutes, please be patient. 
    
8.  After following all the steps above the application should correctly.

9.  **NOTE!** These steps refer to **BOTH** environments and should be executed on each controller.
    
    
    
    
    
    
