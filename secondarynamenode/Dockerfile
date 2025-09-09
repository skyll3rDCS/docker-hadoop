FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

HEALTHCHECK CMD curl -f http://localhost:9868/ || exit 1

ENV HDFS_CONF_dfs___namenode___checkpoint___dir=file:///hadoop/dfs/namesecondary
RUN mkdir -p /hadoop/dfs/namesecondary
VOLUME /hadoop/dfs/namesecondary

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 9868
CMD ["/run.sh"]