# $1 = registry ip + port: http://gitlab:1234
printf "{\"insecure-registries\" : [ \"$1\" ]}" | sudo tee /etc/docker/daemon.json > /dev/null
