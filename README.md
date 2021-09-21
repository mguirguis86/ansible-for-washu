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
