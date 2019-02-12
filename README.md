# Out of the Box GitLab Instance

## This docker-compose configuration will give:
 - GitLab instance (with docker registry enabled)
 - GitLab runner capable of building Docker images

## Setup

1. Docker containers in GitLab will run on the host Docker daemon. The implication of this is that all `docker` commands will execute on the host. Docker will by default attempt to `docker pull` with HTTPS. Save `daemon.json` to `/etc/docker/daemon.json` on the host so that runners use HTTP when doing `docker pull`.
2. `gitlab.rb`, `/runner/register-runner.sh` have some IP specific configurations that should be edited accordingly.