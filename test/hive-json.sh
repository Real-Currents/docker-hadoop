docker exec -it hive-server $(echo "hdfs dfs -ls /user")
docker exec -it hive-server $(echo "mkdir test")
docker exec -it hive-server $(echo "mkdir test/sample")
docker exec -it hive-server $(echo "curl -o test/sample/shakespeare.json -XGET https://download.elastic.co/demos/kibana/gettingstarted/shakespeare_6.0.json")
docker exec -it hive-server $(echo "cat test/sample/shakespeare.json")
docker exec -it hive-server $(echo "hdfs dfs -put test/ /user/")
docker exec -it hive-server $(echo "hdfs dfs -ls /user/test")
docker exec -it hive-server $(echo "beeline -u jdbc:hive2://localhost:10000/")
# create database test;
# show databases;
# use test;
# show tables;
# drop table if exists shakespeare_json;
# create external table shakespeare_json (json string) STORED AS TEXTFILE LOCATION '/user/test/sample';
# select GET_JSON_OBJECT(json, '$.index') from shakespeare_json where GET_JSON_OBJECT(json, '$.index') is not null;
