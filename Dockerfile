FROM centos:7
MAINTAINER David McElin
COPY jre-8u201-linux-x64.rpm /
RUN yum install -y epel-release
RUN yum localinstall -y jre-8u201-linux-x64.rpm
WORKDIR /repo/Minecraft
ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "/repo/Minecraft/server.1.13.2.jar", "nogui"]
