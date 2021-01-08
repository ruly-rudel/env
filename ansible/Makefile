
DOCKER_RUN = docker run -it --rm -u `id -u`:`id -g` -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -v ${HOME}:/home/`whoami` -v "${PWD}":/work
CMD = ${DOCKER_RUN} --entrypoint /usr/local/bin/ansible-playbook ansible
PLAYBOOK = playbook.yml
TARGET = all

ARGS = ${PLAYBOOK} --ask-vault-password --limit ${TARGET}

usage:
	@echo "Usage: make all, make check, make [new hostname].init"

all:
	${CMD} ${ARGS}

check:
	${CMD} ${ARGS} --check

%.init:
	ssh-copy-id pi@raspberrypi.local
	-ssh pi@raspberrypi.local "sudo raspi-config nonint do_hostname $(basename $@) && sudo reboot"
