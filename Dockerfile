FROM debian:11
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install tree wget2 p7zip-full ffmpeg wget git -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install ./google-chrome-stable_current_amd64.deb
COPY . /app/
WORKDIR /app/
RUN git clone https://github.com/SexyShekharXD/RailwayOp Carbon
RUN cd Carbon && bash install_req
CMD cd Carbon && bash run
