FROM radanalyticsio/base-notebook
RUN apt-get install wget
RUN wget http://www.trieuvan.com/apache/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz
RUN tar -xvf spark-2.4.6-bin-hadoop2.7.tgz
ENV SPARK_HOME /notebooks/spark-2.4.6-bin-hadoop2.7
ENV PYTHONPATH $SPARK_HOME/python/:$PYTHONPATH
ENV PYTHONPATH $SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH
