##Ubuntu

apt-get install mysql-server

service mysql start

mysql -u root -p

create database test;

show databases;

mysqlimport  --ignore-lines=1 --fields-terminated-by=,--columns='username,password,age' --local -u root -p test data.csv


bin/kafka-topics.sh --create  --zookeeper localhost:2181  --replication-factor 1 --partitions 1 --topic streams-wordcount-output --config cleanup.policy=compact

bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic streams-wordcount-output \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property print.value=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer


ssh -i "de.pem" ubuntu@ec2-18-188-151-135.us-east-2.compute.amazonaws.com
export MAVEN_OPTS="-Xmx2g -XX:ReservedCodeCacheSize=512m"


CREATE USER test@172.31.39.159 IDENTIFIED BY '123456';
GRANT ALL ON *.* TO test@172.31.39.159 IDENTIFIED BY '123456';


scp -i de.pem dbs/mysql ubuntu@ec2-18-221-117-22.us-east-2.compute.amazonaws.com:~/




