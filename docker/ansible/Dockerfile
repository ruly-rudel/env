FROM python:slim-buster

#RUN apt-get update -y && apt-get install -y python3-pip && rm -rf /var/lib/apt/lists/*
RUN apt-get update -y && apt-get install -y --no-install-recommends \
      ssh sshpass && rm -rf /var/lib/apt/lists/*
RUN pip install pip --upgrade && pip install ansible

#ENV HOME /home
WORKDIR /work
ENTRYPOINT [ "/usr/local/bin/ansible" ]