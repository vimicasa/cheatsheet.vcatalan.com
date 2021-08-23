# Docker

### Cleaning images

```text
#remove dangling images
docker rmi -f $(docker images -f "dangling=true" -q)

#remove containers
docker rm -f $(docker ps -aq)
```

