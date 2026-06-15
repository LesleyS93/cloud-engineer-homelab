# Day 9 - Apache Web Server Fundamentals



## Objective



Install and manage Apache while comparing it to Nginx.



## Tasks Completed



* Installed Apache

* Managed Apache services

* Hosted a custom webpage

* Reviewed Apache logs

* Created a virtual host directory

* Compared Apache and Nginx



## Commands Used



```bash

sudo apt install apache2 -y

systemctl status apache2

systemctl restart apache2

ss -tulpn

tail -f /var/log/apache2/access.log

```



## Screenshots



Stored in:



day09/screenshots/



### Included Screenshots



* Apache installation

* Service status

* Default webpage

* Custom webpage

* Listening ports

* Access logs

* Virtual host setup



## Skills Learned



* Apache administration

* Web hosting

* Log analysis

* Service management

* Virtual host concepts



## Cloud Relevance



Apache is commonly used for:



* Enterprise web applications

* Legacy business systems

* Internal web portals

* Traditional hosting environments



## Notes



Today I learned how Apache differs from Nginx and where each web server is commonly used
