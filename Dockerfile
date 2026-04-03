FROM ubuntu:20.04
# FROM test:1.2.3

COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app ./test
CMD ["python", "app.py"]
