# Task 4 – Secure Monitoring Logs with User & Permission Control

## Objective
Secure the container monitoring logs by creating a dedicated user, assigning proper ownership, and restricting access to prevent unauthorized access.

## Environment Details

- OS: Ubuntu Server 22.04 LTS
- Monitoring Directory: /opt/container-monitor
- Log Directory: /opt/container-monitor/logs
- Dedicated Monitoring User: monitoruser

# Step 1 – Create Dedicated User

Created a new user for monitoring operations:

sudo adduser monitoruser

This user will be responsible for monitoring-related tasks.

Step 2 – Create Monitoring Directory

sudo mkdir -p /opt/container-monitor
sudo mkdir -p /opt/container-monitor/logs

Step 3 – Assign Ownership

Changed ownership of monitoring directory:

sudo chown -R monitoruser:monitoruser /opt/container-monitor

This ensures only the dedicated user owns the directory.

Step 4 – Restrict Permissions

Applied strict permissions:

sudo chmod -R 700 /opt/container-monitor

Permission Explanation:

7 → Owner: Read, Write, Execute

0 → Group: No access

0 → Others: No access

This enforces the principle of least privilege.

Step 5 – Verify Access Control
Switch to monitoring user
su monitoruser

Access logs:

cat /opt/container-monitor/logs/monitor.log

Access successful.

Switch back to normal user
exit

Attempt access:

cat /opt/container-monitor/logs/monitor.log

Result:

Permission denied
Security Principles Applied

Dedicated user for monitoring

Ownership control using chown

Restricted permissions using chmod

Principle of least privilege

Prevented unauthorized log access

Outcome

Monitoring logs secured successfully.
Only the dedicated user (monitoruser) has full access to monitoring files and logs.
Unauthorized users are restricted.
