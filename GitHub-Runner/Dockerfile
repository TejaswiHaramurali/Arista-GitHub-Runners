FROM ubuntu:18.04
#FROM ubuntu:14.04

# Install the required packages #

#RUN apk update && apk add --no-cache \
RUN apt-get update && apt-get install -y openssl \
   curl \
   git \
   vim \
   gnupg \
   bash \
   jq \
   dash \
   libssl-dev

EXPOSE 80

RUN curl -o actions-runner.tar.gz -L https://github.com/actions/runner/releases/download/v2.305.0/actions-runner-linux-x64-2.305.0.tar.gz

RUN tar xzf actions-runner.tar.gz

#COPY runner /runner 

#WORKDIR /runner

COPY ./start.sh .
RUN chmod +x start.sh

ENTRYPOINT ["./start.sh"]
