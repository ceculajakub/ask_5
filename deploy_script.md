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