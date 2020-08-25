# Docker mysql 

## Category

documentation

## Description

Very basic documation of docker mysql setup

## Demo in Animation

## Overview

## Requirements

docker

## Install

`docker pull mysql`

`$ docker run -it --name test-wolrd-mysql -e MYSQL_ROOT_PASSWORD=mysql -d mysql:latest

$ docker exec -it test-wolrd-mysql bash -p

# Login mysql container.
$ mysql -u root -p -h 127.0.0.1`

Install mysql-workbench-community via snap

`snap install mysql-workbench-community`

in ubuntu, hit super and type application.

change permission of mysql-workbench

Make read,add change or remove saved passwords to On

## Usage

start container by
1
`docker run -it --name mysql  -e MYSQL_ROOT_PASSWORD=mysql -d mysql`
2
`docker exec -it mysql bash -p`

Copy file from host to container

`docker cp 【ホスト OS のファイル】 【コンテナ ID】:【転送先のフルパス】`

`docker cp ./my-host-os-file.txt 00x000xxx000:/tmp`

reference
https://neos21.hatenablog.com/entry/2019/04/14/080000

## Contribution

## Updates

## Licence
[MIT]

## Author

[linuxkay](https://github.com/linuxkay)
