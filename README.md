# Out of the Box GitLab Instance

## This docker-compose configuration will give:
 - GitLab instance (with docker registry enabled)
 - GitLab runner capable of building Docker images

## Setup

1. Docker containers in GitLab will run on the host Docker daemon. The implication of this is that all `docker` commands will execute on the host. Docker will by default attempt to `docker pull` with HTTPS. 
2. Run `.\generate-gitlab-rb <gitlab_url> <registry_external_url>` replacing the variables accordingly (`registry_external_url` will automatically create a Docker registry at the specified address if it exists on the same interface as `gitlab_url`).
3. Run `sudo .\generate-daemonh <registry_external_url>` **on the HOST**  to generate`/etc/docker/daemon.json` on the host so that runners use HTTP when doing `docker pull`.
4. Once GitLab is up, either get a registration token for a global runner or a project specific runner and run `.\register-runner` on the Docker container running the `gitlab-runner` image. (To open a shell on the Docker container, run `docker ps` to get the container id, then do `docker exec -it <gitlab-runner-container-id> /bin/bash`. The `register-runner.sh` script is automatically copied over when the container is created and can be found under `/etc/gitlab-runner/register-runner.sh`

## Notes

- `gitlab-ci.yml` is an example that would work on the included docker runner.
