FROM mikaelsouza/atmosphere-hdfs:2.7.4

ADD bootstrap.sh /etc/bootstrap.sh
ADD hdfs-control-DEMO.jar /hdfs-control-DEMO.jar

RUN chmod +x /etc/bootstrap.sh

CMD ["/etc/bootstrap.sh"]