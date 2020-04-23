FROM python:3.8.2-slim

RUN apt-get update -y

COPY app.py /app.py
COPY requirements.txt /requirements.txt
WORKDIR /
RUN pip install -r requirements.txt
CMD ["flask", "run", "-h", "0.0.0.0"]