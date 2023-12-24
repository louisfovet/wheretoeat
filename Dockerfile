FROM python:latest

WORKDIR /app
COPY requirements.txt .
COPY src/ .

RUN pip install -r requirements.txt

CMD ["flask", "--app", "main", "run", "--host=0.0.0.0"]
