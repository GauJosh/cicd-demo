# FROM ubuntu:20.04
FROM test:1.2.3

COPY requirements.txt /app/requirements.txt
WORKDIR /app
COPY . /app
COPY test /app/test
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
