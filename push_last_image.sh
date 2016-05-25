set -ex

CONTAINER_NAME=$(docker ps -l 2> /dev/null|grep -v CONTAINER|grep -v NAMES|awk '{print $1;}')
echo Pushing container $CONTAINER_NAME
sudo docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
