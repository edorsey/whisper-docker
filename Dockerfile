ARG TZ=America/Chicago

FROM nvidia/cuda:11.4.0-base-ubuntu20.04

ENV TZ=${TZ}

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get install -y build-essential python3 python3-pip ffmpeg

ENV TZ=America/Chicago

RUN pip install setuptools-rust openai-whisper numpy==1.23.4
