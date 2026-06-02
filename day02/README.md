# Day 2 - Linux Users, Groups and Permissions

## Objective

Learn how Linux manages users, groups, ownership, and permissions.

## Tasks Completed

* Created Linux users
* Created a shared group
* Added users to groups
* Examined file ownership
* Changed ownership using chown
* Modified permissions using chmod
* Created a shared project directory
* Tested multi-user access

## Commands Used

```bash
sudo adduser developer1
sudo adduser developer2
sudo groupadd cloudteam
sudo usermod -aG cloudteam developer1
sudo usermod -aG cloudteam developer2

groups developer1
groups developer2

ls -l
chown
chmod

mkdir /shared-project
```

## Screenshots

Stored in:

day02/screenshots/

### Included Screenshots

* User creation
* Group creation
* User group membership
* Ownership before chown
* Ownership after chown
* chmod examples
* Shared project permissions

## Skills Learned

* Linux user administration
* Group management
* File ownership
* Linux permissions
* Shared access control

## Cloud Relevance

These concepts relate directly to:

* AWS IAM
* Azure RBAC
* Linux VM administration
* Kubernetes RBAC
* Security best practices

## Notes

Understanding Linux permissions is essential for cloud engineering and server administration.
