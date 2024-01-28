# nbs-linux-server-scripts
These scrips guide you through the process of installing services like MySQL on your Linux Ubuntu server.

## General
### Clone The Repo
`git clone https://github.com/HF-Informatik-TEKO/nbs-linux-server-scripts.git`

## Apache
Clone the repo, navigate to the `apache` folder (`cd apache`) and run the setup script (`bash setup.sh`). This will start the setup process who will guide you through the hole process of installing and configuring `apache2`.
  
1. install `apache2`
2. firewall configs
3. create subdomain + default website


## MySQL
Clone the repo, navigate to the `mysql` folder (`cd mysql`) and run the setup script (`bash setup.sh`). This will start the setup process who will guide you through the hole process of installing and configuring `mysql-server`.
  
1. install `mysql-server`
2. configure MySQL
   1. ip, ports, safety
3. firewall configs
4. create MySQL database and table
5. create MySQL user
