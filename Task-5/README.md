# Task 5 – Firewall Configuration using UFW

## Objective
Configure a secure firewall using UFW to restrict unauthorized access while allowing required services such as SSH and the web application on port 8000.

## Environment Details

- OS: Ubuntu Server 22.04 LTS
- Firewall Tool: UFW (Uncomplicated Firewall)
- SSH Access: localhost (NAT mode)
- Web Application Port: 8000

# Step 1 – Install UFW

sudo apt update
sudo apt install ufw -y

Verify installation:

sudo ufw status

Step 2 – Set Default Policies

Deny all incoming traffic by default:

sudo ufw default deny incoming

Allow outgoing traffic:

sudo ufw default allow outgoing

Step 3 – Allow Required Services

Allow SSH (Port 22):

sudo ufw allow 22

Allow HTTP (Port 80) if required:

sudo ufw allow 80

Allow Docker application port (8000):

sudo ufw allow 8000
Step 4 – Enable Firewall
sudo ufw enable

Confirm with:

sudo ufw status verbose

Expected output:

Status: active

22/tcp     ALLOW
80/tcp     ALLOW
8000/tcp   ALLOW

Step 5 – Verification

Test SSH access:
ssh anil@localhost

Test web application:

Open browser:

http://localhost:8000

Application loads successfully.

Security Measures Implemented

Default deny incoming traffic

Explicitly allowed required ports only

Restricted unnecessary network exposure

Improved server security posture

Outcome

Successfully configured UFW firewall to allow only required services (SSH and web application) while denying all other incoming traffic.
