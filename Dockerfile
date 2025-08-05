FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
COPY ./flaskr ./flaskr
COPY ./instance ./instance

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["flask", "--app", "flaskr", "run", "--host=0.0.0.0", "--port=5000"]
