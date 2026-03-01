This project demonstrates the implementation of secure server configuration, containerized application deployment, automated monitoring, user permission hardening, and firewall security using Ubuntu Server and Docker.

The objective was to simulate a production-like DevOps environment and implement security best practices.

---

# Project Architecture

Windows Host (Local Machine)
        │
        │ SSH (Port 22 - NAT Forwarding)
        ▼
Ubuntu Server (VirtualBox VM)
        │
        ├── Docker Engine
        │       └── Nginx Container (Port 8000)
        │
        ├── Monitoring Script (Cron Job)
        │       └── Logs stored in /opt/container-monitor/logs
        │
        └── UFW Firewall (Controlled Port Access)

---

# Task Summary

## Task 1 – Secure Server Setup & SSH Configuration
- Installed Ubuntu Server in VirtualBox
- Configured SSH access
- Implemented SSH key-based authentication (ed25519)
- Disabled password login for security hardening

Outcome:
Secure remote access achieved without password authentication.

---

## Task 2 – Docker Installation & Web Application Deployment
- Installed Docker
- Created custom `index.html`
- Built Docker image using Nginx
- Deployed container
- Exposed application on port 8000

Access:
http://localhost:8000

Outcome:
Containerized web application successfully deployed and accessible.

---

## Task 3 – Container Monitoring Automation
- Created monitoring script to log:
  - Timestamp
  - CPU usage
  - Memory usage
- Automated using cron (runs every minute)
- Logs stored in:
  /opt/container-monitor/logs/

Outcome:
Automated resource monitoring implemented successfully.

---

## Task 4 – User & Permission Security
- Created dedicated user: monitoruser
- Assigned ownership to monitoring directory
- Applied strict permissions (700)
- Verified access restrictions

Outcome:
Monitoring logs secured using least-privilege principle.

---

## Task 5 – Firewall Configuration (UFW)
- Installed UFW
- Default deny incoming traffic
- Allowed only required ports:
  - 22 (SSH)
  - 80 (HTTP)
  - 8000 (Web Application)
- Verified service accessibility

Outcome:
Server hardened with controlled network access.

---

# Technologies Used

- Ubuntu Server 22.04 LTS
- Oracle VirtualBox
- Docker (docker.io)
- Nginx
- Bash scripting
- Cron
- UFW Firewall
- SSH (Key-based authentication)

---

# Security Best Practices Implemented

- SSH key-based authentication
- Disabled password login
- Principle of least privilege
- Restricted firewall rules
- Controlled port exposure
- Automated logging for monitoring

---

# Verification Commands

## SSH Verification
```bash
ssh anil@localhost
