# apt
My apt repository

## Setup

Run `docker build`.

```
$ make build
```

## Run apt-ftparchive

```
$ make
```

## Client side settings

```
$ apt install -y apt-transport-https
# for ubuntu 16.04
$ echo "deb http://tkuchiki.github.io/apt/ubuntu16.04 ./" > /etc/apt/sources.list.d/tkuchiki.list
$ wget -q -O- https://tkuchiki.github.io/apt/tkuchiki.gpg | sudo apt-key add -
```
