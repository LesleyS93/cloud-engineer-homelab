# Day 08 – Nginx Web Server Deployment and Troubleshooting

## Objective

Deploy and manage an Nginx web server on Ubuntu Linux while practicing Linux administration, file management, service validation, and troubleshooting skills.

---

## Environment

| Component | Details                |
| --------- | ---------------------- |
| OS        | Ubuntu Server          |
| User      | cloudadmin             |
| Service   | Nginx                  |
| Project   | Cloud Engineer Homelab |

---

## Tasks Completed

### 1. Verified Nginx Installation

```bash
sudo systemctl status nginx
```

Confirmed that the Nginx service was installed and running.

---

### 2. Located Default Web Page

Nginx default web page file:

```bash
/var/www/html/index.nginx-debian.html
```

---

### Troubleshooting Scenario 1 – Creating a Backup of the Nginx Default Page

#### Initial Attempt

```bash
sudo cp /var/www/html/index.nginx-debian.html \
```

#### Error

```text
cp: missing destination file operand
```

#### Root Cause

The `cp` command requires both a source and destination file.

Correct syntax:

```bash
cp source destination
```

Only the source file was provided.

---

#### Second Attempt

```bash
sudo cp /var/www/html/index.nginx-debian.html \
/var/www/html/index.nginx-debian.html.bak
```

#### Error

```text
cp: cannot create regular file:
No such file or directory
```

#### Troubleshooting Steps

Attempted to create the destination path:

```bash
sudo mkdir -p /var/www/html/index.nginx-debian.html.bak
```

Verified permissions and corrected the command.

---

#### Resolution

Successfully created a backup of the default Nginx page.

```bash
sudo cp /var/www/html/index.nginx-debian.html \
/var/www/html/index.nginx-debian.html.bak
```

#### Lesson Learned

* Always verify command syntax before execution.
* Read Linux error messages carefully.
* Create backups before modifying production files.
* Understand source and destination requirements when using `cp`.

---

## Troubleshooting Scenario 2 – Verifying Nginx Listening Port

### Objective

Verify that the Nginx web server is listening on port 80.

### Initial Check

```bash
ss -tulpn | grep nginx
```

Output:

```text
No output returned
```

### Investigation

Displayed all listening ports:

```bash
ss -tulpn
```

Relevant output:

```text
tcp LISTEN 0 511 0.0.0.0:80 0.0.0.0:*
tcp LISTEN 0 511 [::]:80 [::]:*
```

Verified specifically for port 80:

```bash
ss -tulpn | grep 80
```

Output:

```text
tcp LISTEN 0 511 0.0.0.0:80 0.0.0.0:*
tcp LISTEN 0 511 [::]:80 [::]:*
```

### Root Cause

The `cloudadmin` user could see listening ports but not the associated process names.

Because the command was executed without elevated privileges, the process name `nginx` was not displayed.

### Resolution

Verified Nginx service status:

```bash
sudo systemctl status nginx
```

To display process ownership information:

```bash
sudo ss -tulpn | grep nginx
```

### Result

* Confirmed Nginx was running.
* Confirmed port 80 was listening.
* Verified service functionality.
* Identified Linux permission limitations when viewing process information.

### Lesson Learned

A service can be running and listening on a port even when the process name is not visible to a non-privileged user. Always verify both service status and listening ports during troubleshooting.

---

## Skills Demonstrated

* Linux Administration
* Nginx Administration
* Troubleshooting
* Service Management
* Network Diagnostics
* Port Verification
* File Management
* Problem Solving
* Command-Line Operations
* Documentation

---

## Evidence

Store screenshots in:

```text
day08/screenshots/
```

Examples:

```text
nginx-backup-troubleshooting.png
nginx-port-verification.png
```

---

## Git Commit

```bash
git add .
git commit -m "Day 08 - Nginx deployment and troubleshooting"
git push origin main
```

---

## Day 08 Summary

Successfully deployed and validated an Nginx web server, created backups of web content, troubleshot Linux command errors, verified network listening ports, and confirmed service operation through systematic troubleshooting techniques.

**Day 08 Status:** ✅ Completed Successfully

**Cloud Engineer Skills Developed:** Linux Administration, Nginx Management, Network Troubleshooting, Service Validation, and Problem Solving.

## Evidence

### Nginx Backup Troubleshooting

This screenshot shows the troubleshooting process for creating a backup of the default Nginx page.

![Nginx Backup Troubleshooting](screenshots/nginx-backup-troubleshooting.png)

---

### Nginx Port Verification

This screenshot shows verification that Nginx was listening on port 80 and the investigation using the `ss` command.

![Nginx Port Verification](screenshots/nginx-port-verification.png)
