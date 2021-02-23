#Start from the base image.

FROM alpine
WORKDIR /root/helloworld
COPY HelloWorld.java /root/helloworld

#You need to run this java programme, so your image should have java installed

RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

#compile your java code

RUN javac HelloWorld.java

#Run your java code
ENTRYPOINT java HelloWorld
