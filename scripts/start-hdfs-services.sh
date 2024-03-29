docker service create --name outsider --network swarm-net --hostname outsider --replicas 1 --endpoint-mode dnsrr mikaelsouza/atmosphere-hdfs:2.7.4
docker service create --name hadoop-slave1 --network swarm-net --hostname hadoop-slave1 --replicas 1 --endpoint-mode dnsrr mikaelsouza/atmosphere-hdfs:2.7.4
docker service create --name hadoop-slave2 --network swarm-net --hostname hadoop-slave2 --replicas 1 --endpoint-mode dnsrr mikaelsouza/atmosphere-hdfs:2.7.4
docker service create --name hadoop-slave3 --network swarm-net --hostname hadoop-slave3 --replicas 1 --endpoint-mode dnsrr mikaelsouza/atmosphere-hdfs:2.7.4
#docker service create --name hadoop-master --network swarm-net --hostname hadoop-master --constraint node.role==manager --replicas 1 --endpoint-mode dnsrr mikaelsouza/atmosphere-hdfs-master:2.7.4
