Ansible Keepalived Role
=========

This Role can install and configure Keepalived service in any environment for unlimited hosts.
You need define only hosts for install in groups.

Requirements
------------

- Minimum version of the ansible for installation: 2.5
- Supported OS
    - RHEL, CentOS, Oracle Linux
        - 6
        - 7

Role Variables
--------------

List of variables defined in defaults/main.yml, which need change:

- `keepalived_auth_pass` - You need define password here
- `keepalived_router_id` - "1"
- `keepalived_check_process` - Process for check

Also you need define variable `vip` in your group_vars which contents shared ip address of keepalived claster.

Example Playbook
----------------


    - hosts: servers
      vars:
        keepalived_auth_pass: "passwordhere"
        keepalived_router_id: "11"
        keepalived_check_process: "processnameforcheck"
        become: yes
      roles:
         - { role: ansible-keepalived }

License
-------

Apache

Author Information
------------------

This role was created by [Evgeny Vlasov](https://www.linkedin.com/in/evgvl)
