FROM python:3.10-slim

WORKDIR /backend

COPY . .

RUN apt-get update -y && apt-get install -y postgresql-client

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

