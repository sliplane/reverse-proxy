# Reverse proxy

Reverse proxy http traffic to a host of choice.

The route "/health" should return 200 if everything is working and can be used for healthchecks.

Use `TARGET_HOST` and `TARGET_PORT` to forward environment variables to a host and port of choice.

The target host can be an internal docker host.
