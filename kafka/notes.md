### Handy commands for kafka

```
# install java
brew tap homebrew/cask-versions
brew cask install homebrew/cask-versions/adoptopenjdk8

# install kafka
brew install kafka

# start zookeeper
zookeeper-server-start ~/kafka/config/zookeeper.properties

# start kafka server
kafka-server-start ~/kafka/config/server.properties

# single broker kafka
kafka-topics --zookeeper 127.0.0.1:2181 --topic first_topic --create --partitions 3 --replication-factor 1

# list topics
kafka-topics --zookeeper 127.0.0.1:2181 --list

# get details of topic
kafka-topics --zookeeper 127.0.0.1:2181 --topic first_topic --describe


# create a second topic
kafka-topics --zookeeper 127.0.0.1:2181 --topic second_topic --create --partitions 6 --replication-factor 1

#delete a topic
kafka-topics --zookeeper 127.0.0.1:2181 --topic second_topic --delete

```

### Handy commands for kafka Producer

```
# Get information about producers
kafka-console-producer


# Start kafka producer console
kafka-console-producer --broker-list 127.0.0.1:9092 --topic first_topic

# Start kafka producer console with properties
kafka-console-producer --broker-list 127.0.0.1:9092 --topic first_topic --producer-property acks=all
```

### Handy commands for kafka Consumer

```
# Get information about consumer
kafka-console-consumer

# Start kafka consumer console
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic

# View topics from beginning
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --from-beginning


# Run consumer in group mode
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --group my-first-application
```

### Consumer in consumser group mode

```
# Get information about consumer-groups
kafka-consumer-groups

kafka-consumer-groups --bootstrap-server 127.0.0.1:9092 --list

kafka-consumer-groups --bootstrap-server 127.0.0.1:9092 --describe --group my-first-application

# reset offsets in consumer groups
kafka-consumer-groups --bootstrap-server 127.0.0.1:9092 --group my-first-application --reset-offsets --to-earliest --execute --topic first_topic

# reset offsets by shift operater
kafka-consumer-groups --bootstrap-server 127.0.0.1:9092 --group my-first-application --reset-offsets --shift-by -2 --execute --topic first_topic
```
