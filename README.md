# docker-pentaho-server-ce

This docker image consists of **Pentaho Server Community Edition (CE) version 8.1**. with MySQL DB for Repository
  
The following is an example on how you may use this image.  
  
## Step 1: Deploy the Pentaho Server CE container
> git clone https://github.com/tgajewski007/docker-pentaho-server-ce.git \
cd docker-pentaho-server-ce \
docker-compose up -d 
  
## Step 2: Access the Pentaho Server CE
When the server is started successfully, visit the administration page of Pentaho Server CE
E.g. http://{dockerhost}:8080/pentaho  
  
Default administrator login:  
* Username: admin  
* Password: password  
  
**You should change the default password via the administration interface.**  
