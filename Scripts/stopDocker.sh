[ ! "$(docker ps -a)" ] && docker stop $(docker ps -a -q)
sudo rm -rf /home/ec2-user/*
