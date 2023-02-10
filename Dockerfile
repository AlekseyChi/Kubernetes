FROM python:3.10

WORKDIR /app

COPY . .

EXPOSE 80

RUN pip3 install -r requirements.txt

ENV FLASK_RUN_HOST 0.0.0.0

ENV FLASK_APP hello.py

CMD ["flask", "run"]
