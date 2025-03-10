# Linux Command Reference

## 1. File and Directory Management
- `ls` – List directory contents
- `cd` – Change directory
- `pwd` – Print working directory
- `cp` – Copy files and directories
- `mv` – Move or rename files and directories
- `rm` – Remove files or directories
- `mkdir` – Make directories
- `rmdir` – Remove empty directories
- `touch` – Change file timestamps or create empty files
- `find` – Search for files in a directory hierarchy
- `locate` – Find files by name
- `tree` – Display directories in a tree-like format
- `chmod` – Change file permissions
- `chown` – Change file owner and group
- `chgrp` – Change group ownership
- `stat` – Display file or file system status

## 2. File Viewing and Editing
- `cat` – Concatenate and display file content
- `tac` – Concatenate and display file content in reverse
- `more` – View file content interactively (page by page)
- `less` – View file content interactively (scrollable)
- `head` – Output the first part of a file
- `tail` – Output the last part of a file
- `nano` – Text editor (terminal-based)
- `vim` / `vi` – Advanced text editors
- `emacs` – Text editor
- `grep` – Search text using patterns
- `sed` – Stream editor for filtering and transforming text
- `awk` – Pattern scanning and processing language
- `cut` – Remove sections from each line of files
- `sort` – Sort lines of text files
- `uniq` – Report or omit repeated lines

## 3. Process Management
- `ps` – Report a snapshot of current processes
- `top` – Display Linux tasks
- `htop` – Interactive process viewer (advanced top)
- `kill` – Send a signal to a process, typically to terminate
- `killall` – Terminate processes by name
- `bg` – Resume a suspended job in the background
- `fg` – Bring a job to the foreground
- `jobs` – List active jobs
- `nice` – Run a program with modified scheduling priority
- `renice` – Alter priority of running processes
- `uptime` – Show how long the system has been running
- `time` – Measure program running time

## 4. Disk Management
- `df` – Report file system disk space usage
- `du` – Estimate file space usage
- `fdisk` – Partition table manipulator for Linux
- `lsblk` – List information about block devices
- `mount` – Mount a file system
- `umount` – Unmount a file system
- `parted` – A partition manipulation program
- `mkfs` – Create a file system
- `fsck` – File system consistency check and repair
- `blkid` – Locate/print block device attributes

## 5. Networking
- `ifconfig` – Configure network interfaces
- `ip` – Show/manipulate routing, devices, and tunnels
- `ping` – Send ICMP Echo requests to network hosts
- `netstat` – Network statistics
- `ss` – Socket statistics (faster than netstat)
- `traceroute` – Trace the route packets take to a network host
- `nslookup` – Query Internet name servers interactively
- `dig` – DNS lookup utility
- `wget` – Non-interactive network downloader
- `curl` – Transfer data with URLs
- `scp` – Secure copy files between hosts
- `ssh` – Secure shell for remote login
- `ftp` – File Transfer Protocol client

## 6. User and Group Management
- `useradd` – Add a user to the system
- `usermod` – Modify a user account
- `userdel` – Delete a user account
- `groupadd` – Add a group to the system
- `groupdel` – Delete a group
- `passwd` – Change user password
- `chage` – Change user password expiry information
- `whoami` – Print the current logged-in user
- `who` – Show who is logged in
- `w` – Show who is logged in and what they’re doing
- `id` – Display user and group information
- `groups` – Show user’s groups

## 7. System Information and Monitoring
- `uname` – Print system information
- `hostname` – Show or set the system’s hostname
- `uptime` – How long the system has been running
- `dmesg` – Boot and system messages
- `free` – Display memory usage
- `top` – Display Linux tasks
- `vmstat` – Report virtual memory statistics
- `lscpu` – Display information about the CPU architecture
- `lsusb` – List USB devices
- `lspci` – List PCI devices
- `lshw` – List hardware configuration

## 8. Archiving and Compression
- `tar` – Archive files
- `zip` – Package and compress files into a ZIP archive
- `unzip` – Extract files from a ZIP archive
- `gzip` – Compress files using the gzip algorithm
- `gunzip` – Decompress files compressed with gzip
- `bzip2` – Compress files using the bzip2 algorithm
- `bunzip2` – Decompress files compressed with bzip2
- `xz` – Compress files using the xz algorithm
- `unxz` – Decompress files compressed with xz

## 9. Package Management
### Debian-based (e.g., Ubuntu)
- `apt-get install <package>` – Install a package
- `apt-get update` – Update package list
- `apt-get upgrade` – Upgrade installed packages
- `apt-get remove <package>` – Remove a package
### Red Hat-based (e.g., CentOS, Fedora)
- `yum install <package>` – Install a package
- `yum update` – Update installed packages
- `yum remove <package>` – Remove a package
- `dnf install <package>` – Install a package (Fedora, CentOS 8+)

## 10. System Services and Daemon Management
- `systemctl start <service>` – Start a service
- `systemctl stop <service>` – Stop a service
- `systemctl restart <service>` – Restart a service
- `systemctl enable <service>` – Enable a service to start on boot
- `systemctl disable <service>` – Disable a service from starting on boot
- `systemctl status <service>` – Check service status

...

More sections include Scheduling Tasks, File Permissions and Security, System Backup, Diagnostics, Networking & Remote Management, Text Processing Utilities, System Shutdown & Reboot, File System Management, Filesystem Permissions, Containerization (Docker & Kubernetes), and Helm.

For the full list, refer to the full documentation above.

