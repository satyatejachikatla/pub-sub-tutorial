#!/bin/bash

BROKER_ADDRESS=localhost:9092


##### Create #######
./admin_client.py $BROKER_ADDRESS create_topics topic1 topic2
./admin_client.py $BROKER_ADDRESS list topics

./admin_client.py $BROKER_ADDRESS create_partitions topic1 4 topic2 4
#./admin_client.py $BROKER_ADDRESS delete_topics topic1 topic2

###### Produce Consumer in differnet shells ########


./producer.py $BROKER_ADDRESS topic1
./producer.py $BROKER_ADDRESS topic2

./consumer.py $BROKER_ADDRESS 1 topic1 topic2
./consumer.py $BROKER_ADDRESS 1 topic2