# Nebula Docker Container Setup Guide

## 1. Install Docker

**For Ubuntu Linux:**
https://docs.docker.com/compose/install/

**For Mac OS:**
https://docs.docker.com/docker-for-mac/install/

## 2. Create and start a new container

```
### Change username, password and timezone
$ vi .env

### Creating new container
$ docker-compose up -d nebula_dev
$ docker-compose ps
     Name              Command        State          Ports
------------------------------------------------------------------
nebula_nebula_1   /usr/sbin/sshd -D   Up      0.0.0.0:8022->22/tcp

```

## 3. Login container via SSH

```
$ ./login.sh
Last login: Tue Nov 17 04:44:57 2020 from 172.21.0.1
nebula@nebula-docker:~$
```
