# super-waddle

The goal of this project is to create a fast way to set-up many websites in a single server using Docker.

A simple problem this project solves is, for example, using a single VPS instance to host multiple websites for your various needs.

# Tutorial

**1.** The first thing you need to do is log into your server and clone this repo
```
git clone  https://github.com/tengu-br/super-waddle.git
```
**2.** After doing so, change the parameters in nginx.conf to match your domains to the services

**3.** Adjust docker-compose.yml, nginx.conf and the nginx folders to your need. (For example, if you only need two WordPress websites, you can delete wordpress3, wordpress4, wordpress5, nginx3, nginx4, nginx5, ghost1 and ghost_db)

**4.** Test your configuration
```
docker-compose up
```
If it is working, then congratulations. If not, make sure the services names match in the nginx folder and docker-compose.yml and proxy.conf

#DESCONTINUADO
