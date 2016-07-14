# MEAN-STACK-CONFIG-MGT
This Ansible playbook:
- Sets up a MEAN(MongoDB, AngularJS, ExpressJS and NodeJS) stack environment on a Virtual Machine(VM)
- Clones a project repository from Github and installs the modules in the package.json file

**Requirements**

- Before running this Ansible playbook, you must have Ansible installed locally. Obviously :) You can find out about how to install Ansible [here](https://www.google.com.ng/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=How+to+install+ansible).
- The private key to the VM which is to be configured is also a requirement.


**Clone This Project**
```
git clone https://github.com/andela-ayusuf/mean-stack-config-mgt.git
```

**Variables**

You will need to update the **vars.yml** file with the appropriate variables. The **inventory.ini** file also has to be updated with the public IP address of the VM which is about to be configured.


**Running The Project**

Let's get down to business, shall we? 

From your terminal, enter into this project directory:

```
$ cd mean-stack-config-mgt
```
Run the playbook:
```
$ ansible-playbook playbook.meanserver.yml -i inventory.ini --private-key=path/to/private/key
```
And TADA! We have our MEAN stack project configured on our VM.

**Note**

- To have the application up and running, you have to `ssh` into the application and start the app.