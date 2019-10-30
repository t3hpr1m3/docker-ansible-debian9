FROM debian:stretch

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C
ENV container docker

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
		build-essential \
		libffi-dev \
		libssl-dev \
		lsb-release \
		procps \
		python-apt \
		python-dev \
		python-pip \
		python-setuptools \
		python-wheel \
		sudo \
		systemd \
		wget && \
	rm -rf /var/lib/apt/lists/* && \
	rm -Rf /usr/share/doc && \
	rm -Rf /usr/share/man && \
	apt-get clean

RUN rm -rf /lib/systemd/system/multi-user.target.wants/* && \
	rm -rf /etc/systemd/system/*.wants/* && \
	rm -rf /lib/systemd/system/local-fs.target.wants/* && \
	rm -rf /lib/systemd/system/sockets.target.wants/*udev* && \
	rm -rf /lib/systemd/system/sockets.target.wants/*initctl* && \
	rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* && \
	rm -rf /lib/systemd/system/systemd-update-utmp*

STOPSIGNAL SIGRTMIN+3

VOLUME ["/sys/fs/cgroup"]

CMD ["/lib/systemd/systemd"]
