docker run -it --network docker-hadoop_default davvdg/hdfs-client $(echo "hdfs dfs -ls hdfs://namenode:9000/$1")
