Here are examples of each command with explanations:

### 1. **File and Directory Management Commands**

#### ✅ `ls` – List directory contents
```bash
ls -l
```
Lists files in the current directory in long format (with permissions, owner, size, and timestamp).

#### ✅ `cd` – Change directory
```bash
cd /var/log
```
Changes the current directory to `/var/log`.

#### ✅ `pwd` – Print working directory
```bash
pwd
```
Displays the current directory path.

#### ✅ `cp` – Copy files and directories
```bash
cp file1.txt backup/
```
Copies `file1.txt` to the `backup/` directory.

#### ✅ `mv` – Move or rename files and directories
```bash
mv oldname.txt newname.txt
```
Renames `oldname.txt` to `newname.txt`.

```bash
mv myfile.txt /home/user/Documents/
```
Moves `myfile.txt` to `/home/user/Documents/`.

#### ✅ `rm` – Remove files or directories
```bash
rm myfile.txt
```
Deletes `myfile.txt`.

```bash
rm -r myfolder/
```
Deletes `myfolder/` and its contents.

#### ✅ `mkdir` – Make directories
```bash
mkdir new_directory
```
Creates a new directory named `new_directory`.

#### ✅ `rmdir` – Remove empty directories
```bash
rmdir empty_folder
```
Deletes the empty directory `empty_folder`.

#### ✅ `touch` – Change file timestamps or create empty files
```bash
touch newfile.txt
```
Creates an empty file `newfile.txt` if it doesn't exist or updates its timestamp.

#### ✅ `find` – Search for files in a directory hierarchy
```bash
find /home/user -name "*.txt"
```
Searches for all `.txt` files in `/home/user/`.

```bash
find /var/log -type f -size +10M
```
Finds files in `/var/log` larger than 10MB.

#### ✅ `locate` – Find files by name
```bash
locate myfile.txt
```
Searches for `myfile.txt` (requires `updatedb` to be run first).

#### ✅ `tree` – Display directories in a tree-like format
```bash
tree /home/user/
```
Displays the directory structure of `/home/user/` in a tree format.

#### ✅ `chmod` – Change file permissions
```bash
chmod 644 myfile.txt
```
Sets `myfile.txt` to be readable and writable by the owner, but only readable by others.

```bash
chmod +x script.sh
```
Adds execute permission to `script.sh`.

#### ✅ `chown` – Change file owner and group
```bash
chown user1:usergroup myfile.txt
```
Changes the owner to `user1` and the group to `usergroup` for `myfile.txt`.

#### ✅ `chgrp` – Change group ownership
```bash
chgrp developers myfile.txt
```
Changes the group of `myfile.txt` to `developers`.

#### ✅ `stat` – Display file or file system status
```bash
stat myfile.txt
```
Displays details like file size, permissions, modification time, etc.

---

Let me know if you need more details! 🚀
