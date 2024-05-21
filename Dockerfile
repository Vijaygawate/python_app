#Dockerfile for python app
FROM python:3.11-alpine
LABEL maintainer="vijaygawate79@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["src/app.py"]
