FROM python:3.6.7-alpine3.7

LABEL maintainer="Natalia Angulo"

WORKDIR /app

COPY ./src ./src

COPY app.py app.py

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

ENTRYPOINT [ "python" ]

CMD ["app.py"]