FROM nginx:latest

RUN apt update
RUN apt install python3 -y

COPY . /app

WORKDIR /app
CMD ["python3","app.py"]