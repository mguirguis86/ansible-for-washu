# ansible-for-washu
Creation, Deployment and Security of Cloud Environment

Create Resource Group(Red-Team) in Azure 

![Red-Team Resource](https://user-images.githubusercontent.com/90808951/134112216-c6a1fc31-b842-476b-8706-aba83889d0b5.PNG)

Create Virtual Network(network1), within Red-Team Resource group. 

![network1](https://user-images.githubusercontent.com/90808951/134111164-7891e2df-1e7f-450f-a13c-bedbe275e801.PNG)

Create Security Group(securitygroup1), add to Red-Team Resource Group

![Security group1](https://user-images.githubusercontent.com/90808951/134111682-5bd2db1f-b507-4bd8-863f-7f6c973751bc.PNG)

Open command line and run ssh-keygen to create a new SSH key pair. Then run cat ~/.ssh/id_rsa.pub and copy SSH key.

Create virtual machine in Azure(JumpBoxProvisioner) using same resource group and region. 

![jumpboxvm](https://user-images.githubusercontent.com/90808951/134112104-8833ad1d-1a1d-408d-94a5-45137fdaf3c0.PNG)

Create 2 more VMs(Web-1 and Web-2) using same resource group and region.

![web1web2](https://user-images.githubusercontent.com/90808951/134112453-91f7c4fa-97ea-439a-92ba-89f6f8f89036.PNG)

Create Inbound Security rule(SSH_from_Jump_Box) allowing SSH connections from your IP address.

![ssh from jumpbox](https://user-images.githubusercontent.com/90808951/134112750-c1037527-8fa5-406f-acbf-8cf32a824e17.PNG)

Install docker.io on your Jump box(on command line: run sudo apt update, then run sudo apt install docker.io).
Pull container (run sudo docker pull cyberxsecurity/ansible)

Create a new security group rule that allows your jump box machine full access to your VNet.

![securitygroup2](https://user-images.githubusercontent.com/90808951/134452516-e169970e-0a04-490e-9f1a-80c39f76875b.PNG)

Create an Ansible playbook that installs Docker and configure a VM with the DVWA web app.

Start the container using docker start [container_name].

Create a YAML playbook file that you will use for your configuration.
root@1f08425a2967:~# nano /etc/ansible/pentest.yml

Use the Ansible apt module to install docker.io and python3-pip.

Get a shell in your container using docker attach [container_name].

Create a new load balancer and assign it a static IP address, in your red team resource group.

![load balancer](https://user-images.githubusercontent.com/90808951/134453404-fc53c7d4-2b42-4604-9c35-38eac1d06eaf.PNG)

Give the IP address a unique address name. This name will be used to create a URL that maps to the IP address of the load balancer.

Create a new public IP address.

Add a backend pool.

![lb2](https://user-images.githubusercontent.com/90808951/134453532-bd962b2b-d605-438d-9774-fcc0f05c789d.PNG)

Create a load balancing rule to forward port 80 from the load balancer to your Red Team VNet.

Create a new security group rule to allow port 80 traffic from the internet to your internal VNet.

![port80](https://user-images.githubusercontent.com/90808951/134454071-f812febb-a8dc-4688-9c35-ed6a3cda49c8.PNG)

Remove the security group rule that blocks all traffic on your vnet to allow traffic from your load balancer through.

Verify that you can reach the DVWA app from your browser over the internet: Open a web browser and enter the front-end IP address for your load balancer with /setup.php added to the IP address.

![dvwa](https://user-images.githubusercontent.com/90808951/134454242-154e3f59-51f7-4aa9-b48d-ac96a8dbcd9e.PNG)

Use a free account at draw.io to diagram the entire cloud network you have created.

![Diagram](https://user-images.githubusercontent.com/90808951/134454500-c5a3b3c3-483b-4926-9928-6d34d57247bc.PNG)
