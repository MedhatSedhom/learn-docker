FROM ubuntu:focal

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt install python3-pip -y
RUN pip3 install numpy
RUN pip3 install pandas nltk gensim pyLdavis
RUN pip3 install pyLDAvis==2.1.2
RUN pip3 install tqdm