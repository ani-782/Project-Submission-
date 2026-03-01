# Task 3 – Container Resource Monitoring

## Objective
Create an automated monitoring solution that logs Docker container CPU and memory usage with timestamps every minute.

## Environment Details

- OS: Ubuntu Server 22.04 LTS
- Docker installed and running
- Container Name: myweb
- Logging Directory: /opt/container-monitor/logs/

---

# Step 1 – Create Monitoring Directory

Created directory for monitoring:

sudo mkdir -p /opt/container-monitor/logs

Step 2 – Create Monitoring Script

Created monitoring script:

sudo vim /opt/container-monitor/monitor.sh

Script captures:

Timestamp

CPU usage

Memory usage

Logs stored in monitor.log

Step 3 – Make Script Executable

sudo chmod +x /opt/container-monitor/monitor.sh

Step 4 – Configure Cron Job

Opened crontab:

crontab -e

Added:

* * * * * /opt/container-monitor/monitor.sh

This runs the script every minute.

Step 5 – Verify Cron Service
sudo systemctl status cron

Confirmed cron service is running.

Step 6 – Verify Log Generation

Checked logs:

cat /opt/container-monitor/logs/monitor.log

Sample Output:

2026-03-01 11:20:01 - 0.03% 10MiB / 500MiB
2026-03-01 11:21:01 - 0.04% 11MiB / 500MiB
Monitoring Script Explanation

date command generates timestamp

docker stats --no-stream captures container resource usage

Output appended to log file

Automated using cron every minute

Outcome

Automated container monitoring implemented.

CPU and memory usage logged with timestamps.

Monitoring runs every minute via cron.

Logs stored securely in /opt/container-monitor/logs/.
