.PHONY:	build apt-ftparchive

createrep:
	docker run -v $$(pwd)/docs:/tmp/apt apt /bin/bash -c "find /tmp/apt -maxdepth 1 -mindepth 1 -type d | xargs -I{} -n 1 bash -c 'apt-ftparchive packages {} | gzip > {}/Packages.gz'"

build:
	docker build -t apt .
