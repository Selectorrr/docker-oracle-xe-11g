FROM ubuntu:14.04.1

MAINTAINER Wei-Ming Wu <wnameless@gmail.com>

ADD assets /assets
VOLUME /u01/app/oracle/oradata
RUN /assets/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
