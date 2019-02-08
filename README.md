# Timeline Back

## Pre-requisite
### Tools :
  - Docker (> 18.09.0)
  - Docker Compose (> 1.23.2)
  - Yarn (> 1.12.3)
### Proxy :
How to use an enterprise proxy to build Docker images ?
Just add _`http_proxy`_ and _`https_proxy`_ build's arguments like :
```
  timeline-prisma:
    container_name: timeline-prisma
    build:
      context: ./prisma
      args: 
        args: 
        - HTTP_PROXY=http://${PROXY_USER}:${PROXY_PASSWORD}@${PROXY_IP}:${PROXY_PORT}
        - HTTPS_PROXY=http://${PROXY_USER}:${PROXY_PASSWORD}@${PROXY_IP}:${PROXY_PORT}
```
We should remplace _`${PROXY_VariableName}`_ variables by their plain value, or set them into the __`.env`__ file.
```
PROXY_USER=username
PROXY_PASSWORD=password
PROXY_IP=proxyIP
PROXY_PORT=proxyPort
```

## Services
### Prisma :
[Documentation](https://github.com/K0rdan/Timeline-Prisma/blob/master/README.md)
