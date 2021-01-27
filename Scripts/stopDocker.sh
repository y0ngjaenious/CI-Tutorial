[ ! "$(docker ps -a)" ] && docker stop $(docker ps -a -q)
