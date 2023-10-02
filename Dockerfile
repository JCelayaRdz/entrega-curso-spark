FROM python:3.10.13-bullseye

WORKDIR /entrega-curso-spark 

RUN apt-get update && apt-get install -y openjdk-11-jre

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin

COPY requirements.txt .

RUN ["pip", "install", "--upgrade", "pip"]

RUN ["pip", "install", "-r", "requirements.txt"]

COPY . .

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--allow-root"]