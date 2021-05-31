FROM balenalib/raspberrypi4-64-python:3.7.9-buster-build
WORKDIR /usr/app/src
RUN apt-get update && apt-get install -y build-essential git zlib1g-dev libjpeg-dev libfreetype6-dev libffi-dev libportaudio2 alsa-utils python3 python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -U setuptools RPI.gpio numpy spidev Pillow paho-mqtt smbus smbus2 sounddevice enviroplus influxdb

COPY *.py ./

CMD ["python","enviroplus.py"]