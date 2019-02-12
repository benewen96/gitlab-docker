 external_url 'http://192.168.0.19'
 gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password')
 registry_external_url 'http://192.168.0.19:4567'