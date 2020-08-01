FROM radanalyticsio/base-notebook
RUN wget https://www.apache.org/dyn/closer.lua/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz
RUN tar -xvf spark-2.4.6-bin-hadoop2.7.tgz
RUN export SPARK_HOME=/notebooks/spark-2.4.6-bin-hadoop2.7
RUN export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
RUN export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.7-src.zip:$PYTHONPATH
