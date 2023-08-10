FROM nginx:latest

RUN sudo apt-get install python3

COPY . /app

WORKDIR /app
CMD ["python3","app.py"]