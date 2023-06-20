#! /bin/bash
cat <<EOF >/etc/nut/hosts.conf
MONITOR $NAME@$HOST $NAME
EOF

source /etc/apache2/envvars
apache2 -DFOREGROUND

