# Debian 9 (stretch) Ansible image

[![Docker Automated build](https://img.shields.io/docker/cloud/build/jdubz/docker-ansible-debian9.svg?maxAge=2592000)](https://hub.docker.com/r/jdubz/docker-ansible-debian9/)

For testing Ansible playbooks and roles on Gitlab CI. Includes a functional
systemd for testing system service interaction.  Needs the following `tmpfs`
mounts:

* `/run`
* `/run/lock`
* `/tmp`

## Tags

- `latest`: Latest stable version of ansible

## License

MIT

## Author

* [Josh Williams](https://codingprime.com)
