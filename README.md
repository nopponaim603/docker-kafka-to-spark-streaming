# Docker container for Spark Streaming with Kafka integration

Git Repo: <https://github.com/ricardogaspar2/docker-spark-streaming>

Docker file for starting a containers with Spark, enabled with Kafka streaming
based on:

- <https://github.com/antlypls/docker-spark/>
- <https://github.com/miseyu/docker-spark-kafka-streaming>

Spark version: `2.2.0`
Spark streaming kafka integration: `spark-streaming-kafka-0-10`

see: <https://spark.apache.org/docs/2.2.0/streaming-kafka-integration.html>

**Note** This image does not contain Kafka.

Use `docker-compose.yml` file to launch the containers with kafka and spark:

1. launch a terminal and go to the path where the `docker-compose.yml` file is
2. run: ```docker-compose up```
3. to open a terminal on kafka container: ```docker exec -it $(docker-compose ps -q kafka) bash```
4. to open a terminal on spark container: ```docker exec -it $(docker-compose ps -q spark) bash```