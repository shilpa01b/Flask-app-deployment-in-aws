# check running containers
'''bash
docker ps 
'''
# View container logs
''' bash
docker logs <container_id> 
'''
# Open shell inside the container
''' bash
docker exec -it <container_id> /bin/bash 
'''
# docker exec runs a command inside a running container, and -it opens an interactive terminal session.
