# Repo du devoir linux
contenu: tout le devoir se trouve dans le dossier "devoir_ngoune"

# ngoune_devoir_linux.pdf
ce fichier contient les reponses aux questions contenu dans "devoir.md"

# log_server.sh
script contenant l'ensemble des commandes se trouvant dans le fichier "ngoune_devoir_linux.pdf"
lors de l'exécution de ce fichier il faut prédiser en paramètres le chemin vers le fichier log

# log_server_docker.sh
pareil que "log_server.sh", mais un version destinée à créer l'image docker

# Dockerfile
Contient les instructions pour construire l'image
- cmd build: 
  > "sudo docker build -t log_server ."
- cmd run image build from Dockerfile:
  > "sudo docker run -v [absolute_path_to_folder_where_is_your_log_file]:/home/temp --name [name] log_server [log_file_name]"
- cmd run image downloaded from my repository <ngoupatrick>:
  > URL Docker HUB: https://hub.docker.com/repository/docker/ngoupatrick/log_server
  > "sudo docker run -v [absolute_path_to_folder_where_is_your_log_file]:/home/temp --name [name] ngoupatrick/log_server [log_file_name]"
  
