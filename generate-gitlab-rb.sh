# $1 = gitlab url
# $2 = registry external url
echo " external_url '$1'\n gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password')\n registry_external_url '$2'" > process.json
