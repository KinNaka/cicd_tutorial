FROM ubuntu:latest
MAINTAINER Tuan Thai "tuanthai@example.com"
RUN apt update -y && apt install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install --no-cache-dir -r requirements.txt --break-system-packages
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]  
