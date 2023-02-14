FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

ENV FLASK_RUN_HOST 0.0.0.0

ENV FLASK_APP hello.py

ENV FLASK_RUN_PORT 5000

EXPOSE 5000

CMD ["flask", "run"]
