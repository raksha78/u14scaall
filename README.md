# u14scaall
Shippable CI image for Scala on Ubuntu 14.04 with all available services. Available versions are:

1. 2.9.3
2. 2.10.5
3. 2.11.6

**Services:**

1. cassandra 2.1
2. elasticsearch 1.5
3. memcached 1.4
4. mongodb 3.0
5. mysql 5.6
6. neo4j 2.2
7. postgres 9.4
8. rabbitmq 3.5
9. redis 3.0
10. selenium 2.45
11. sqllite 3
12. couchdb 1.6
13. rethinkdb 2.0
14. riak latest

## How to use

You can use this image to run ruby builds on Shippable. Just update your `shippable.yml` file and add the `build_image` directive. Here's a sample YML file to get you going:


```
language: scala

scala:
  - 2.9.3
  - 2.10.5
  - 2.11.6

services:
services:
  - cassandra
  - elasticsearch
  - memcached
  - mongodb
  - mysql
  - neo4j
  - postgres
  - rabbitmq
  - redis
  - selenium
  - sqllite
  - couchdb
  - rethinkdb
  - riak 

before_script:
  - export PATH=$PATH:$SHIPPABLE_REPO_DIR

build_image: drydock/u14scaall:prod

script:
  - export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M"
  - sbt clean scoverage:test
```
