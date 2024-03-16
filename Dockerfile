FROM --platform=linux/amd64  python:latest

RUN pip install pip --upgrade

WORKDIR /usr/src

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .

USER 1001

CMD ["/usr/local/bin/python3", "app.py"]