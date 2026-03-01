Task 2 – Docker Installation and Application Deployment

## Objective
Install and configure Docker on the Ubuntu server, build a Docker image hosting a custom web page, and expose the application on port 8000.

## Environment Details

- OS: Ubuntu Server 22.04 LTS
- Virtualization: Oracle VirtualBox
- Network Mode: NAT with Port Forwarding
- Docker Engine: docker.io

# Step 1 – Install Docker

Update packages:

sudo apt update

Install Docker:

sudo apt install docker.io -y

Enable and start Docker service:

sudo systemctl enable docker
sudo systemctl start docker

Verify Docker installation:

docker --version

Add user to Docker group:

sudo usermod -aG docker anil

Log out and log back in to apply group changes.

Verify Docker access:

docker ps
Step 2 – Create Application Files

Create project directory:

mkdir myapp
cd myapp

Create index.html file:

vim index.html

Step 3 – Create Dockerfile

Created a Dockerfile using Nginx as the base image.

Step 4 – Build Docker Image

Build Docker image:

docker build -t myweb .

Verify image creation:

docker images
Step 5 – Run Docker Container

Run container and map port 8000:

docker run -d -p 8000:80 --name myweb myweb

Verify running container:

docker ps

Expected port mapping:

0.0.0.0:8000->80/tcp
Step 6 – Access Application

Since NAT networking is used, port forwarding was configured.

Access from local machine:

http://localhost:8000

Web page loaded successfully in browser.

Verification Commands
docker ps
docker images
docker logs myweb
Outcome

Docker installed and configured successfully.

Custom Docker image built.

Container deployed and running.

Application exposed on port 8000.

Verified through browser access.


---

# 🐳 2️⃣ Dockerfile

Create:


Task-2/Dockerfile


Paste:

```dockerfile

🌐 3️⃣ index.html

Create:

Task-2/index.html

Paste:

<!DOCTYPE html>
<html>
<head>
    <title>DevOps Task 2</title>
</head>
<body>
    <h1>DevOps Intern Assignment - Task 2</h1>
    <p>Docker container deployed successfully on port 8000.</p>
</body>
</html>
📄 4️⃣ steps.txt (Command Proof File)

Create:

Task-2/steps.txt

Paste:

TASK 2 – Docker Installation and Application Deployment

Installed Docker:
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker

Added user to docker group:
sudo usermod -aG docker anil

Created project directory:
mkdir myapp
cd myapp

Created index.html:
nano index.html

Created Dockerfile:
nano Dockerfile

Built Docker image:
docker build -t myweb .

Verified image:
docker images

Ran container:
docker run -d -p 8000:80 --name myweb myweb

Verified container:
docker ps

Accessed application:
http://localhost:8000

Result:
Docker container deployed successfully and accessible on port 8000.
