# ls3 lab

[app](https://github.com/TheMuntu/LS3/tree/main/app) contains A very simple Flask app that displays date and time according to the TimeZone rendering on html template.

You can run the single application locally by running the following commands:

- $ pip3 install -r requirements.txt
- $ python3 app.py

And run 127.0.0.1:8000 on your browser.


The page refreshes automatically every minute!

You can also deploy the Docker version available [here](https://hub.docker.com/repository/docker/themuntu/ls3)!!!! by running the following :

- $ docker pull themuntu/ls3:tagname
- $ docker run -d -p 8000:8000 --name container_name ls3:latest



In [Terraform](https://github.com/TheMuntu/LS3/tree/main/Terraform), you will find the necessary to provision a GCE instance with necessary to host the application
Before running it, you need:
- Install Terraform locally
- Install gcloud-sdk
- Create a service account on GCP

And then, run the following:

- $ cd Terraform
- $ terraform init
- $ terraform plan
- $ terraform apply 


In [Ansible](https://github.com/TheMuntu/LS3/tree/main/Ansible) you will find the necessary to deliver the application to cloud instance.

You can do that by typing the following commands :

- $ cd Ansible
- $ ansible-playbook -i inventories/hosts main.yml 

Make sure to change the ip address in [/inventories/hosts](https://github.com/TheMuntu/LS3/blob/main/Ansible/inventories/hosts) with the ip address of your instance and modify the path to the [Dockerfile](https://github.com/TheMuntu/LS3/blob/main/app/Dockerfile).
.


