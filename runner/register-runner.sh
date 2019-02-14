 # run this on runner container to register
 # $1 = gitlab url
 # $2 = registration token
 gitlab-runner register -n \
   --url $1 \
   --registration-token $2 \
   --executor docker \
   --description "Docker Runner" \
   --docker-image "docker:stable" \
   --docker-volumes /var/run/docker.sock:/var/run/docker.sock \
