FROM python:3.11-slim

WORKDIR /usr/src/app
COPY . .
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install --upgrade pip
RUN pip install --no-cache-dir gradio==4.29.0
RUN pip install xmlschema
RUN pip install mindee
RUN mkdir tmp
EXPOSE 7860
ENV GRADIO_SERVER_NAME="0.0.0.0"


CMD ["python", "svidoc.py"]


