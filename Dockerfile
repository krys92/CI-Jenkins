# Dockerfile to build a flask app

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]

# docker build -t app .
# docker run -dp 3001:3000 app
