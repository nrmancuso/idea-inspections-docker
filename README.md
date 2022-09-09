# idea-inspections-docker

To login to dockerhub:
```bash
docker login
```

To build image:
```bash
docker build -t nrmancuso/idea-docker:latest -t nrmancuso/idea-docker:1.0.0 .
```

To push a new tag:
```bash
docker push nrmancuso/idea-docker:latest
```

To run in interactive mode:
```bash
docker run -it nrmancuso/idea-docker:latest /bin/bash
```

To access and run commands in the running container:
```bash
docker exec –it <container_id> /bin/bash
```
