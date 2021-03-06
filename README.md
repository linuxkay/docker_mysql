# Docker mysql 

## Category

documentation

## Description

Very basic documation of docker mysql setup.

## Demo in Animation

## Overview

Packages to be installed on system: Docker - mysql, ssh, and vim.

Installation of mysql-work-bench and troubleshoot.

Some basic lectures for mysql

## Requirements

docker

mysql

mysql-work-bench //community edition. Snap version does not accept to type  Japanese on Ubuntu. Use Download version from website instead.

## Install


First install docker on your machine by reading at docker official wiki.

Give a normal use to use docker without sudo.

`sudo gpasswd -a $(whoami) docker`

`sudo chgrp docker /var/run/docker.sock`

`sudo service docker restart`

Then pull mysql image from docker repository.

`docker pull mysql`

Run docker by docker run commnad.

`$ docker run -it --name test-wolrd-mysql -e MYSQL_ROOT_PASSWORD=mysql -d mysql:latest

Execute and login with bash by following.

`$ docker exec -it test-wolrd-mysql bash -p`

# Login mysql container.

`$ mysql -u root -p -h 127.0.0.1`

Type password as prompted.

mysql is the pass for this testing.

Install mysql-workbench-community via snap

* snap version does not accept to type Japanese. Download and install mysql-workbench from website directly solves this problem.

`snap install mysql-workbench-community`

in ubuntu, hit super and type application.


change permission of mysql-workbench

Make read,add change or remove saved passwords to On

## Usage

Start docker container by following

1

`docker run -it --name mysql  -e MYSQL_ROOT_PASSWORD=mysql -d mysql`

or

`docker start mysql`

2 start docker named mysql. Run bash

`docker exec -it mysql bash -p`

Copy files from host to container

`docker cp 【ホスト OS のファイルパス】 【コンテナ ID】:【転送先のファイルパス】`

`docker cp ./my-host-os-file.txt 00x000xxx000:/tmp`

reference
https://neos21.hatenablog.com/entry/2019/04/14/080000

## Troubleshoot

Grid area(show grid) of mysql work bench keeps disappearing when clicking execute every time.

Very annoying.

First, close mysql work bench.

find wb_state.xml by following commmand

`sudo find / -name wb_state.xml`

rename file 'wb_state.xml' file to 'wb_state-backup.xml'

then re-launch mysql work bench.

https://stackoverflow.com/questions/28038580/how-to-hide-view-result-grid-in-mysql-workbench

## Words

CSV stands for Commna Separated Values.

TSV stands for Tab Separated Vales.

asc is ascending.

desc is descending.

## Notes

It will not work when you try to order Japanese char by `order by` since mysql does not know how to order Japanese char unlike alphabet. Suggest creating new row with ID next to Kanji or Japanese char in order to make this work.

## Contribution

## Updates

## Licence
[MIT]

## Author

[linuxkay](https://github.com/linuxkay)
