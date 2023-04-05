FROM python:3.9.14-alpine3.16
USER root
COPY ./web/* /web/
RUN apk update && pip install --upgrade pip && pip install -r web/req.txt
WORKDIR /web/
EXPOSE 1234
ENTRYPOINT ["python", "-m", "flask", "run", "--host=0.0.0.0"]

