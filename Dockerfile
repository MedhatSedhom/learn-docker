FROM ubuntu:focal

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt install python3-pip -y
RUN pip3 install numpy
RUN pip3 install pandas nltk gensim pyLdavis
RUN pip3 install pyLDAvis==2.1.2
RUN pip3 install tqdm
RUN pip3 install notebook

ENV DEBIAN_FRONTEND=noninteractive
RUN export TZ="Europe/Berlin"
RUN apt-get install -y tzdata
RUN apt install unzip -y
RUN apt install openjdk-8-jdk -y

WORKDIR /src

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=9999", "--allow-root"]
