FROM ubantu:latest
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN apt install tree wget2 p7zip-full ffmpeg wget git -y
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install ./google-chrome-stable_current_amd64.deb
RUN git clone https://github.com/SexyShekharXD/RailwayUserge Userge
RUN cd Userge && bash install_req
CMD cd Userge && bash run