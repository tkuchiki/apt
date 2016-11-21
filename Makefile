.PHONY:	build apt-ftparchive

apt-ftparchive:
	docker run -v $$(pwd)/docs:/tmp/apt apt /bin/bash -c "find /tmp/apt -maxdepth 1 -mindepth 1 -type d | xargs -I{} -n 1 bash -c 'apt-ftparchive packages {} | gzip > {}/Packages.gz; apt-ftparchive release {} > {}/Release; gpg --digest-algo SHA512 --yes --sign -bao {}/Release.gpg {}/Release'"

build:
	docker build -t apt .
