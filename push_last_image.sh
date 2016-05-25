set -ex

sudo docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
IMAGE_ID=$(docker ps -l 2> /dev/null|grep -v CONTAINER|grep -v NAMES|awk '{print $2;}')
echo Pushing container IMAGE_ID
docker tag $IMAGE_ID $DOCKER_USER/$IMAGE_ID
docker push $DOCKER_USER/$IMAGE_ID
