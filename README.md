# Instalación de Drupal con Ansible

Tenemos un escenario con dos máquinas.
- **Nodo 1:** PostgreSQL y Bind9
- **Nodo 2:** Apache con mod-php

Levantamos las máquinas vagrant:
```sh
$ vagrant up
```
Comprobamos la conexión de las máquinas con el siguiente comando de ansible:
```sh
$ ansible all -m ping
10.0.0.5 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
10.0.0.10 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
```

Para inciar la instalación ejecutamos el siguiente comando:
```sh
$ ansible-playbook site.yml
```
