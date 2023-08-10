FROM nginx:latest

RUN apt update
RUN apt install python3 -y
RUN apt-get install -y python3 python3-pip
RUN apt install python3-flask

COPY . /app

WORKDIR /app
CMD ["python3","app.py"]
