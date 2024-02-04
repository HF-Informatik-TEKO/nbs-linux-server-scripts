# Linux Ubuntu Setup Wizard
This is a collection of scripts to automate several tasks on your Linux Ubuntu Server.  
See in the General section how to use the Setup Wizard.

## Available Services

### User Welcome
- *optional:* welcome banner on user login
- *optional:* greeting text on user login (depending on daytime)

### Change Static IP
- change static ip-v4 address in the netplan.yaml file

### Logging
#### Performane
- setup cronjob to log cpu- and ram-usage every minute
  - every day a new file
  - log critical usages in a separate file
- setup cronjob to delete old log files every day

### LAMP-Services
#### Apache
- install `apache2`
- firewall configs
- *optional:* create subdomain + default website

#### MySQL
- install `mysql-server`
- manually configure MySQL
   - ip, ports, safety
- *optional:* firewall configs
- *optional:* create MySQL database and table
- *optional:* create MySQL user

#### PHP
- install `php`, `libapache2-mod-php` `php-mysql`
- print installed php version


## General
Install Linux Ubunut server and get full access to it.  
*\*Scripts are tested with Ubuntu 22.04 LTS (jammy)*

### How To Use The Setup Wizard
1. Clone the repo to your server
   - `git clone https://github.com/HF-Informatik-TEKO/nbs-linux-server-scripts.git`
2. Navigate to the new folder
   - `cd nbs-linux-server-scripts`
3. Setup, remove or change the available services
   - `bash setup.sh`
   - `bash remove.sh`
   - `bash change.sh`
4. Follow the Setup Wizard who guide you through the process

### How To Use Flag Numbers
To make multiple action in one call, the Setup Wizard works with flags. That means you can e.g. install 2 services with one setup call. (after another)

#### Example
Which services do you want to setup?  
1: Apache  
2: MySQL  
4: PHP  
  
1 -> Apache  
2 -> MySQL  
3 -> Apache & MySQL  
4 -> PHP  
5 -> Apache & PHP  
6 -> MySQL & PHP  
7 -> Apache & MySQL & PHP  