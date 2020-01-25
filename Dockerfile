FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN sed -i 's:^path-exclude=/usr/share/man:#path-exclude=/usr/share/man:' \
        /etc/dpkg/dpkg.cfg.d/excludes
RUN apt-get install -y make make-doc man less manpages manpages-dev glibc-doc manpages-posix-dev manpages-posix gcc emacs-nox
RUN apt-get install -y wget curl cpanminus

