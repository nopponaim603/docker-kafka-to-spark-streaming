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

## Use the docker-compose file to run together with a Kafka server (container)

Use `docker-compose.yml` located in git repo to launch a container with Kafka server together with the `ricardogadpar2/spark-streaming-kafka` container.
In the service `spark`of this file, in section `volumes` a volume is specified to share the host home directory with the spark container. This sharing depends on the host OS:

- **Windows:** the file `.env` with the property ```COMPOSE_CONVERT_WINDOWS_PATHS=1``` must exist alongside the `docker-compose.yml` file.
- **Linux:** the `.env` file or comment the line with ```COMPOSE_CONVERT_WINDOWS_PATHS=1``` must **not exist**.

To launch the containers with kafka and spark:

1. launch a terminal and go to the path where the `docker-compose.yml` file is
2. run: ```docker-compose up```
3. to open a terminal on kafka container: ```docker exec -it $(docker-compose ps -q kafka) bash```
4. to open a terminal on spark container: ```docker exec -it $(docker-compose ps -q spark) bash```
