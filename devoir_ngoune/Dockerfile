#Dockerfile aims to create a Docker images which will run file <log_server_docker.sh> using command <log_server [file]>

# Build and run commands are at the bottom page
# Step to create Dockerfile

#1- Specify base image
FROM ubuntu:impish

#2- maintainer <ngounepatrick@gmail.com>
LABEL maintainer = "Ngoune Patrick"

#3- we create temp folder in </home> folder were we will mount external volume
RUN mkdir -p /home/temp

#4- copy the <log_server_docker.sh> script in </home> folder
COPY log_server_docker.sh /home

#5- Adding execution (+X) rights
RUN chmod +x /home/log_server_docker.sh

#6- Create a symbolic link to this script in </usr/bin>
RUN ln -s /home/log_server_docker.sh /usr/bin/log_server

#7- Create an Entry point where the container will execute when we run it
ENTRYPOINT ["log_server"]

#NB the default image name is <log_server>
#build command: <sudo docker build -t log_server .>
#run command:

#1- if you build from Dockerfile:
#	 <sudo docker run -v [absolute_path_to_folder_where_is_your_log_file]:/home/temp --name [name] log_server [log_file_name]>

#2- if you download from my reposotory <ngoupatrick>:
#        <sudo docker run -v [absolute_path_to_folder_where_is_your_log_file]:/home/temp --name [name] ngoupatrick/log_server [log_file_name]>

