## Install ecommerce

* aws via web
* vscode
* cli -> gitbash, terminal
* vm & public ip
    * confirm access
    * private key + user
* repository

## Assumption
* IP: 52.57.41.105
* username: ec2-user
* key passPhrase: student1

## SSH access

``` bash
curl -O http://adsk.dydaktyka.jkan.pl/_static/id_student
```

``` bash
ssh ec2-user@52.57.41.105 -i id_student
```

## install-packages

* package manager
    * Debian -> ``apt``
    * Amazon linux -> ``dnf``
* search for packages
    * ``dnf search dotnet``
* install
    * `` sudo dnf install dotnet-sdk-8.0.x86_64``

## Repository

* URL: https://github.com/ceculajakub/pp4.git
* install: ``sudo dnf install git``
* sync repository
    * `` git clone https://github.com/ceculajakub/pp4.git -b main /my/dest/directory``

## JVM

*   ``sudo dnf install dotnet-sdk-8.0.x86_64``

apache zamiast tomcata

samym dotnetem budujesz i odplasz, ale musisz mieć sqllite'a

potrzebujesz jeszcze wystawić serwer

https://www.yogihosting.com/aspnet-core-host-apache-linux/?utm_content=cmp-true