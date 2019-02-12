 # run this on runner container to register
 gitlab-runner register -n \
   --url http://192.168.0.19 \
   --registration-token <YOUR TOKEN> \
   --executor docker \
   --description "Docker Runner" \
   --docker-image "docker:stable" \
   --docker-volumes /var/run/docker.sock:/var/run/docker.sock \