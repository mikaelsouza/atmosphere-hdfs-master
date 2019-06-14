#!/bin/bash

echo "Waiting for 10 seconds..."
sleep 10

: ${HADOOP_PREFIX:=/usr/local/hadoop}

chmod +x $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh
$HADOOP_PREFIX/etc/hadoop/hadoop-env.sh

rm /tmp/*.pid

# installing libraries if any - (resource urls added comma separated to the ACP system variable)
cd $HADOOP_PREFIX/share/hadoop/common ; for cp in ${ACP//,/ }; do  echo == $cp; curl -LO $cp ; done; cd -

## replace config
: ${EXTRA_CONF_DIR:=/config/hadoop}

if [ -d "$EXTRA_CONF_DIR" ]; then
        cp $EXTRA_CONF_DIR/* $HADOOP_PREFIX/etc/hadoop/
fi

/usr/sbin/sshd

$HADOOP_HOME/sbin/stop-all.sh
$HADOOP_HOME/bin/hadoop namenode -format -nonInteractive
$HADOOP_HOME/sbin/start-all.sh

while true; do sleep 1000; done