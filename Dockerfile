FROM python:3.8-alpine
WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
RUN apk add --no-cache build-base python3-dev postgresql-dev
COPY requirements.txt requirements.txt
COPY app.py app.py
COPY test.db test.db
COPY templates ./templates
COPY static ./static
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run"]
