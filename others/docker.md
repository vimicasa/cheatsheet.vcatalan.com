# Docker

### Cleaning images

```text
docker rmi -f $(docker images -f "dangling=true" -q)
```

