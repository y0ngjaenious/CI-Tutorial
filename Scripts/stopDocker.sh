sudo service docker start
[ ! "$(docker ps -a)" ] && docker stop $(docker ps -a -q)
find /opt/codedeploy-agent/deployment-root/a825d775-10e4-47cb-9987-3951ab981fb1/* -maxdepth 0 -type 'd' | grep -v $(stat -c '%Y:%n' /opt/codedeploy-agent/deployment-root/641c4afb-530e-451f-b763-325b53f86dbf /* | sort -t: -n | tail -1 | cut -d: -f2- | cut -c 3-) | xargs rm -rf
sudo rm -rf /home/ec2-user/*  
