FROM python:3.7


MAINTAINER Towfeeq Fayaz "towfeeqpandith@gmail.com"

#select the working directory within the container
WORKDIR /mydir

#copy the files from localhost to working directory 
COPY ./ ./

#install dependencies
RUN pip3 install -r requirements.txt

#export the port on which container will be listening
EXPOSE 5000

# the command that will run upon starting of container
ENTRYPOINT [ "python3" ]
CMD [ "./app.py" ]

# the image is pushed to docker hub as sample-flask-app:v1