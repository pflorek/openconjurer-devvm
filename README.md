# OpenConjurer development environment

Vagrant configuration template for development on [OpenConjurer](http://www.openconjurer.org/). Shell provisioner is bootstrapping [Docker](https://www.docker.com/) and runs [Docker Compose](https://docs.docker.com/compose/).

### Prerequisites

1. [Vagrant](https://www.vagrantup.com/downloads.html)
1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Getting started

```bash
vagrant up
```

### Ports mapping

* mongo 27017
* neo4j 7474, 7687
* sftp 2222
* SSH 2222
* tomcat 8080

### Credentials

* mongo _none_
* neo4j _none_
* sftp User _vagrant_ Password _vagrant_
* SSH User _vagrant_ Password _vagrant_
* tomcat User _admin_ Password _admin_

### Deployment

Via **sftp** path **/opt/openconjurer**

Via **Tomcat Manager** url http://localhost:8080/manager/html

### Links

* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)
* [MongoDB](https://www.mongodb.com)
* [neo4j](https://neo4j.com/)
* [Tomcat](http://tomcat.apache.org/)
* [Ubuntu](https://www.ubuntu.com/)
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)
