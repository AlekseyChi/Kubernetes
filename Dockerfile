FROM python:3.10

WORKDIR /app

COPY ./requirements.txt .

COPY ./db-password .

COPY ./hello.py .

RUN pip3 install -r requirements.txt

ENV FLASK_RUN_HOST 0.0.0.0

ENV FLASK_APP hello.py

EXPOSE 5000

CMD ["flask", "run"]
