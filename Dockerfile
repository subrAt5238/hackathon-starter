FROM mongo:latest
LABEL maintainer="subrat"
ARG DEBIAN_FRONTEND noninteractive
RUN apt update && \
    apt install git -y && \
    apt install nodejs npm -y 
RUN git clone https://github.com/subrAt5238/hackathon-starter.git && \
    cd /hackathon-starter && \
    chmod +x start.sh && \
    npm install 
EXPOSE 8080
EXPOSE 27017
WORKDIR /hackathon-starter
CMD [ "sh","start.sh" ]
