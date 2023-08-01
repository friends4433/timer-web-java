FROM ubuntu:20.04
LABEL "author"="sairam.pulagam"
LABEL "Email"="sairam.pulagam@gmail.com"
RUN apt update
RUN apt install -y net-tools
RUN apt install -y net-tools
RUN apt install -y iputils-ping
RUN apt install -y wget
RUN apt install curl -y
RUN apt install -y unzip
RUN apt install -y jq
RUN apt install -y nginx
RUN apt install -y git
RUN apt install -y nano
RUN apt install default-jre
RUN git clone https://github.com/friends4433/timer-web-java.git
RUN rm -f /var/www/html/index.nginx-debian.html
RUN mv /timer-web-java/* /var/www/html/
CMD service nginx start
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]