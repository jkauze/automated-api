# Deploy application with Ansible and Docker [Dev]

Challenge for eduNEXT - Devops

## Getting Started

This is an application whose purpose is to be deployable on any computer with a docker, the deployment can be done on multiple computers as long as they are defined in the inventory. remote deployment is done with Ansible

### Prerequisites

Remote access is required through ssh, for this it is necessary for the client to put his public key on the target computers / servers (root). Requirements:

Client:
python
ansible
ssh-client

Servers:
python
ssh-server

Finally the client must modify its nodes in 
```
/etc/ansible/hosts
```

### Installing

with your nodes defined and with playbook-edunext.yml downloaded, run

```
# ansible-playbook playbook-edunext.yml
```

add flag "-u root" if you are not root.

Wait for all tasks to finish. already finished you can access the server through its ip on port 8010 and verify that the api is running (check the firewall of the server)

If you want to work on the api, you can access the server and make the necessary changes on the project by leaving it located in **root/edunext**. all changes will be applied to docker contain.


## Api for devs

Clone this repository. make sure u have docker and docker-compose installed and run:

**To start:**
```
git clone https://github.com/jkauze/automated-api
cd automated-api
docker-compose up -d
```

And start code.

**To stop:**

```
docker-compose stop
```
**To delete:**
```
docker-compose down --rmi all
```

## Authors

* **Jesus Kauze** - *Owner*

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.


## Acknowledgments

* eduNEXT team for the opportunity to learn more about SRE and Devops
* Inspiration - M.a.c
