
FROM antlypls/spark:2.2.0

# Environment
ENV SPARK_VERSION 2.2.0
ENV SCALA_VERSION 2.11
ENV SPARK_STREAMING_KAFKA_VERSION 0-10

WORKDIR $SPARK_HOME

# Spark Kafka Streaming
RUN cd /tmp && \
    wget http://repo1.maven.org/maven2/org/apache/spark/spark-streaming-kafka-${SPARK_STREAMING_KAFKA_VERSION}_${SCALA_VERSION}/${SPARK_VERSION}/spark-streaming-kafka-${SPARK_STREAMING_KAFKA_VERSION}_${SCALA_VERSION}-${SPARK_VERSION}.jar && \
    mv spark-streaming-kafka-${SPARK_STREAMING_KAFKA_VERSION}_${SCALA_VERSION}-${SPARK_VERSION}.jar ${SPARK_HOME}/jars

EXPOSE 8080
EXPOSE 6066
EXPOSE 7077