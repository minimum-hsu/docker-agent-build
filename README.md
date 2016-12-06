# docker-agent-build
This Docker image is only building agent binary from Cepave/open-falcon-backend.

## How-to-Use
```sh
docker build -t agent-build .
docker run -d -v /path/to/package:/package -e BRANCH=master -e MODULE=agent agent-build
```
