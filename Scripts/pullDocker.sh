# docker login
docker login -u y0ngjaenious -p # should enter password
# pull docker image
if [ "$DEPLOYMENT_GROUP_NAME" == "dev" ]
then
  docker-compose -f /home/ec2-user/docker-compose.yml pull
elif [ "$DEPLOYMENT_GROUP_NAME" == "stage" ]
then
  docker-compose -f /deploy/docker-compose.stage.yml pull
elif [ "$DEPLOYMENT_GROUP_NAME" == "production" ]
then
  docker-compose -f /deploy/docker-compose.yml pull
fi
