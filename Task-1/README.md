Task 1 – Secure Server Setup and SSH Configuration

## Objective
Provision a Linux virtual machine and configure secure SSH access using key-based authentication while disabling password login.

## Environment Details

- Hypervisor: Oracle VirtualBox
- Operating System: Ubuntu Server 22.04 LTS
- User Created: anil
- Network Mode: NAT
- SSH Access: localhost (Port 22 forwarded to VM)

# Step 1 – Virtual Machine Setup

1. Created a new VirtualBox VM.
2. Attached Ubuntu Server ISO.
3. Installed Ubuntu Server.
4. Created user during installation:
   - Username: `anil`
   - Password configured during setup.

# Step 2 – Install and Enable SSH

Updated system:

sudo apt update

Installed OpenSSH server:

sudo apt install openssh-server -y

Enabled and started SSH:

sudo systemctl enable ssh
sudo systemctl start ssh

Verified SSH status:

sudo systemctl status ssh
Step 3 – Configure NAT Port Forwarding

VirtualBox → Settings → Network → NAT → Port Forwarding

Name	Protocol	HostPort	GuestPort
SSH	  TCP	      22	      22

This allowed SSH connection via:

ssh anil@localhost

Step 4 – Implement SSH Key Authentication
Generate SSH Key (On Windows Host)
ssh-keygen

Key generated:
id_ed25519
id_ed25519.pub

Copy Public Key to Ubuntu

Logged into Ubuntu:

ssh anil@localhost

Created SSH directory:

mkdir -p ~/.ssh
chmod 700 ~/.ssh

Added public key to:

vim ~/.ssh/authorized_keys

Set correct permissions:

chmod 600 ~/.ssh/authorized_keys

Step 5 – Test Passwordless Login

Exited Ubuntu and tested:

ssh anil@localhost

Login successful without password.

Step 6 – Disable Password Authentication (Security Hardening)

Edited SSH configuration:

sudo vim /etc/ssh/sshd_config

Modified:

PasswordAuthentication no

Restarted SSH:

sudo systemctl restart ssh

Verified:

sudo grep PasswordAuthentication /etc/ssh/sshd_config

Output:

PasswordAuthentication no
Security Improvements Implemented

SSH key-based authentication enabled

Password login disabled

Reduced brute-force attack risk

Improved server security posture

Verification

Tested SSH login:

ssh anil@localhost

Login successful using SSH key

No password prompt

Secure remote access confirmed

Outcome

Successfully provisioned Ubuntu VM and configured secure SSH access using key-based authentication with password authentication disabled.

Verified configuration:
sudo grep PasswordAuthentication /etc/ssh/sshd_config

Result:
Secure SSH key-based authentication implemented successfully.
