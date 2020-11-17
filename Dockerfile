FROM alpine:latest
RUN apk add --no-cache python3 py3-pip
COPY ./requirements.txt ./app.py /tmp/
RUN pip install -r /tmp/requirements.txt
EXPOSE 8080/tcp
ENTRYPOINT ["python3", "/tmp/app.py"]
