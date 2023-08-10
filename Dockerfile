FROM nginx:latest

RUN apt update
RUN apt install python3 -y
RUN apt-get install -y python3 python3-pip
RUN python3 -m pip install flask

COPY . /app

WORKDIR /app
CMD ["python3","app.py"]
