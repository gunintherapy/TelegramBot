FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install --no-install-recommends -y python3-imghdr

COPY . .

CMD ["python", "bot.py"]
