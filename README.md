# MEAN-STACK-CONFIG-MGT
This Ansible playbook:
- Sets up a MEAN(MongoDB, AngularJS, ExpressJS and NodeJS) stack environment on a Virtual Machine(VM)
- Clones a project repository from Github and installs the modules in the package.json file
- Sets up application monitoring using **New Relic APM**

**Requirements**

- Before running this Ansible playbook, you must have Ansible installed locally. You can find out about how to install Ansible [here](http://docs.ansible.com/ansible/intro_installation.html).
- The private key to the VM which is to be configured is also a requirement.
- New Relic License Key


**Clone This Project**
```
git clone https://github.com/andela-ayusuf/mean-stack-config-mgt.git
```

**Variables**

You will need to update the variables files i.e. **vars.yml** and **vars.rb** files with the appropriate variables. Currently there are only dummy variables in the variable files and this will not work. The **inventory.ini** file also has to be updated with the public IP address of the VM which is about to be configured.


**Running The Project**

From your terminal, enter into this project directory:

```
$ cd mean-stack-config-mgt
```
Run the playbook:
```
$ ansible-playbook playbook.meanserver.yml -i inventory.ini --private-key=path/to/private/key
```
OR
```
$ cucumber features/install.feature
```

**Note**

And with that done, we have our MEAN stack project configured which will also be monitored by New Relic.

Now you can head over to your New Relic dashboard and view your app metrics.


**Issues**

If you happen to run into any problems while using this playbook or you would like to make contributions to it, please endeavour to open an issue [here](https://github.com/andela-ayusuf/mean-stack-config-mgt/issues).

Best regards :)
