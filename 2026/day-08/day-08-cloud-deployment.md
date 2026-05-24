# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## Objective
Today’s task was to launch a cloud server, connect using SSH, install Docker and Nginx, configure web access, and extract server logs.

---

# Part 1: Launch Cloud Instance & SSH Access

## Steps Performed
1. Launched an Ubuntu EC2 instance on AWS.
2. Configured Security Group:
   - SSH (Port 22)
   - HTTP (Port 80)
3. Connected to the server using SSH.

## SSH Command Used

```bash
ssh -i your-key.pem ubuntu@<your-instance-ip>
```

📸 Screenshot Added:
- ssh-connection.png

---

# Part 2: Install Docker & Nginx

## Update System

```bash
sudo apt update && sudo apt upgrade -y
```

## Install Docker

```bash
sudo apt install docker.io -y
```

## Verify Docker

```bash
docker --version
```

## Install Nginx

```bash
sudo apt install nginx -y
```

## Verify Nginx Status

```bash
sudo systemctl status nginx
```

## Start & Enable Nginx

```bash
sudo systemctl start nginx
sudo systemctl enable nginx
```

📸 Screenshot Added:
- docker-nginx.png

---

# Part 3: Security Group Configuration

## Allowed Ports
- Port 22 → SSH
- Port 80 → HTTP

## Test Web Access

Opened browser and visited:

```bash
http://<your-instance-ip>
```

Successfully accessed the Nginx welcome page.

📸 Screenshot Added:
- nginx-webpage.png

---

# Part 4: Extract Nginx Logs

## View Logs

```bash
cat /var/log/nginx/access.log
```

## Save Logs to File

```bash
cat /var/log/nginx/access.log > nginx-logs.txt
```

## Download Logs to Local Machine

```bash
scp -i your-key.pem ubuntu@<your-instance-ip>:~/nginx-logs.txt .
```

---

# Commands Used

```bash
ssh -i your-key.pem ubuntu@<your-instance-ip>

sudo apt update
sudo apt install docker.io -y
sudo apt install nginx -y

sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

cat /var/log/nginx/access.log
cat /var/log/nginx/access.log > nginx-logs.txt

scp -i your-key.pem ubuntu@<your-instance-ip>:~/nginx-logs.txt .
```

---

# Challenges Faced

- Faced permission issues while accessing logs initially.
- Nginx webpage was not opening because HTTP port 80 was not enabled in the Security Group.
- Solved the issue by adding inbound HTTP rules in AWS Security Groups.

---

# What I Learned

- How to launch and manage a cloud server.
- How to connect remotely using SSH.
- Installing and managing services like Docker and Nginx.
- Understanding Security Groups and firewall access.
- How to access and export server logs.

---

# Why This Matters for DevOps

This task helped me understand real-world DevOps workflows such as:

- Cloud server provisioning
- Remote server administration
- Web server deployment
- Service management
- Log monitoring and troubleshooting
- Infrastructure security basics
