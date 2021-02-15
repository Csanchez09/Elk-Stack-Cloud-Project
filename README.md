## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Along with showing a series of bash scripts used to parse through a log data set for a project using linux to archive and log data.
 
![Elk-Stack-Cloud-Project/Diagrams/ELK-Diagram.png)]

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - Ansible/install-elk.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build




The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting unwanted access to the network.
- A load balancer allows traffic from multiple servers and increasing performance and security for the client.

- The Jump Box is the administrative computer which connects to the servers.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the Jump Box and system network.
- Filebeat watches for changes on the virtual machines.


The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove val

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.1.0.5   | Linux            |
| Web-1    |Webserver | 10.1.0.6   | Linux            |
| Web-2    |Webserver | 10.1.0.7   | Linux            |
|ELK-Server|Monitoring|  10.0.0.4  | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 68.32.101.98


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it is free and easy to use and can be applied in order to set up a varietty of environments.

The playbook implements the following tasks:
- Installs docker.io
- Install pip3
- Install Docker python module
- Increase virtual memory
- Download and launch a docker

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Elk-Stack-Cloud-Project/Diagrams/elk.png](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.1.0.6
- Web-2: 10.1.0.7

We have installed the following Beats on these machines:
- Filebeat


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook file to than ansible machine.
- Update the host file and add your webservers and elk machines.
- Run the playbook, and navigate to kibana (https://[Host IP]/app/kibana#/home) to check that the installation worked as expected.


