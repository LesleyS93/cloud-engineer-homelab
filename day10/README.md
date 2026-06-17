# Day 10 - Git and GitHub Fundamentals



## Objective



Learn Git workflows used by Cloud Engineers and DevOps teams.



## Tasks Completed



- Reviewed Git repository

- Created feature branch

- Added changes in branch

- Merged branch into main

- Deleted branch

- Created .gitignore

- Practiced Git workflow



## Commands Used



```bash

git status

git log

git branch

git checkout

git merge

git add

git commit

git push

```



## Screenshots



Stored in:



day10/screenshots/



### Included Screenshots



- Git status

- Git history

- Branch creation

- Branch merge

- Branch deletion

- GitHub updates



## Skills Learned



- Git branching

- Merge workflows

- Repository management

- Version control

- Collaboration fundamentals



## Cloud Relevance



Git is used for:



- Infrastructure as Code

- Terraform projects

- Kubernetes manifests

- CI/CD pipelines

- Configuration management



## Notes



Version control is a core skill for Cloud Engineers and DevOps professionals.



# Day 10 - Troubleshooting SCP File Transfer Issue



## Issue



While attempting to copy screenshots from my Windows workstation to the Ubuntu cloud lab server using SCP, I received the following error:



```powershell

scp "C:\Users\Lesley Springbok\Pictures\day10\*" cloudadmin@192.168.70.141:~/cloud-lab/day10/screenshots/

```



Output:



```text

ssh: connect to host 192.168.70.141 port 22: Permission denied

Connection closed

```



## Initial Investigation



Verified the following:



- Confirmed the Ubuntu VM was powered on.

- Checked the server IP address.

- Verified the SSH service was running.

- Confirmed the SCP command syntax was correct.

- Checked local network connectivity.



## Root Cause



A VPN connection was active on the Windows workstation.



The VPN modified the network routing table and prevented traffic from reaching the Ubuntu VM on the local network (`192.168.70.141`).



## Resolution



### 1. Disconnect VPN



Disabled the active VPN connection on the Windows workstation.


### 2. Test Connectivity

```powershell
ping 192.168.70.141
```

Successful replies confirmed network connectivity.

### 3. Test SSH Access

```powershell
ssh cloudadmin@192.168.70.141
```

SSH connection was successful.

### 4. Retry SCP Transfer

```powershell
scp "C:\Users\Lesley Springbok\Pictures\day10\*" cloudadmin@192.168.70.141:~/cloud-lab/day10/screenshots/
```

Files transferred successfully.

## Verification

Verified screenshots were uploaded to the Ubuntu server:

```bash
ls -lah ~/cloud-lab/day10/screenshots/
```

Confirmed all screenshot files were present.

## Lessons Learned

- VPNs can interfere with access to local network resources.
- Always verify routing and connectivity when troubleshooting SSH/SCP issues.
- Test connectivity using:
  - `ping`
  - `ssh`
  - `scp`
- Follow a structured troubleshooting process:
  1. Identify the issue.
  2. Verify services.
  3. Check connectivity.
  4. Determine root cause.
  5. Implement and verify the fix.

## Skills Practiced

- Linux Administration
- SSH Troubleshooting
- SCP File Transfers
- Network Troubleshooting
- Root Cause Analysis
- Technical Documentation
