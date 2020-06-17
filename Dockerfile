#Install base image for python
FROM python:3.7-slim-buster


#Copy source code to the container
ADD . /app

# Set working directory to /app so we can execute commands in it
WORKDIR /app

#Install required dependencies
RUN pip install Flask
RUN pip install -r requirements.txt

# Declare environment variables
ENV FLASK_ENV=development

# Expost port running flask
EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
