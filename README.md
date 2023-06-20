# Hosts nut-cgi in a container


## Configuration
Environment variables
- NAME = ups name
- HOST = server name or IP

This controls the MONITOR line in hosts.conf
[NUT hosts.conf](https://man.archlinux.org/man/extra/nut/hosts.conf.5.en)

## Example execution
`docker run -d -p 8082:80 -e NAME=cp -e HOST=192.168.1.17 galbitz/nut`