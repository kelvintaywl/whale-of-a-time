AUTH=$(echo -n "${DOCKER_LOGIN}:${DOCKER_PASSWORD}" | base64)
cat << EOF > config.json
{
    "auths": {
        "https://index.docker.io/v1/": {
            "auth": "${AUTH}"
        }
    }
}
EOF
