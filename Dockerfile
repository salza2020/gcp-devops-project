FROM python:3.8-slim-buster

WORKDIR /app

COPY requierments.txt requierments.txt
RUN pip3 install -r requierments.txt

COPY . .

CMD ["python3","-m","flask","run","--host=0.0.0.0"]


