FROM centos:7
MAINTAINER David McElin
RUN yum install -y epel-release
RUN yum install -y java-1.8.0-openjdk
ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "/repo/Minecraft/server.1.13.2.jar", "nogui"]
