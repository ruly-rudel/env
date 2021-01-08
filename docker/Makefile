
usage:
	@echo "Usage: make all, make ansible, rmake"

.PHONY:	ansible	rmake

all:	ansible	rmake

ansible:
	docker build -t $@:slim-buster ./ansible

rmake:
	docker build -t $@:20.04 ./rmake

