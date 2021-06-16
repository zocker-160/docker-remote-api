Makes the Docker Remote API available via port 2375.

## Start on x86 / ARM (64/v7/v8)
`docker run -p 2375:2375 -v /var/run/docker.sock:/var/run/docker.sock zocker160/docker-remote-api`
