# Firewall role

This role installs firewalld deamon and open ports from ```firewall_rules {}``` dictionary permanently.

## Supported parameters 

Enable firewall or not. If ```True```, then firewalld daemon will be installed and ports from ```firewall_rules {}``` dictionary will be opened in firewall. 
If ```False```, then firewall role do nothing:
```yml
firewall: true
```

Dictionary contains ports that should be opened in firewall rules. For example 9200 and 9300 tcp ports:  
```yml
    firewall: true
    firewall_rules:
      es_rule1:
        port: 9200
        protocol: "tcp"
      es_rule2:
        port: 9300
        protocol: "tcp"
```

Instead of ```es_rule1``` and ```es_rule2``` names could be any name you want, but complies Ansible varaiables standart.

So, by adding this role and these 2 parameters to any playbook you can simply open required ports in firewall.   


## Dependencies

The furewall role is a stand alone role and don't have any dependencies.