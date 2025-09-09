#!/bin/bash
dir=$(echo $HDFS_CONF_dfs___namenode___checkpoint___dir | perl -pe 's#file://##')
mkdir -p "$dir"
exec $HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR secondarynamenode