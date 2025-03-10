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


Here’s an example for each **File Viewing and Editing** command:  

### ✅ **`cat` – Concatenate and display file content**  
```bash
cat file.txt
```
Displays the content of `file.txt`.  

---

### ✅ **`tac` – Concatenate and display file content in reverse**  
```bash
tac file.txt
```
Displays the content of `file.txt` in reverse order (last line first).  

---

### ✅ **`more` – View file content interactively (page by page)**  
```bash
more file.txt
```
Displays `file.txt` one page at a time (press `SPACE` to scroll, `q` to quit).  

---

### ✅ **`less` – View file content interactively (scrollable)**  
```bash
less file.txt
```
Allows scrolling up and down through `file.txt` (`q` to quit).  

---

### ✅ **`head` – Output the first part of a file**  
```bash
head -5 file.txt
```
Displays the first 5 lines of `file.txt`.  

---

### ✅ **`tail` – Output the last part of a file**  
```bash
tail -5 file.txt
```
Displays the last 5 lines of `file.txt`.  

```bash
tail -f log.txt
```
Continuously shows new lines added to `log.txt` (useful for monitoring logs).  

---

### ✅ **`nano` – Text editor (terminal-based)**  
```bash
nano file.txt
```
Opens `file.txt` in the `nano` text editor (use `CTRL+X` to exit, `Y` to save).  

---

### ✅ **`vim` / `vi` – Advanced text editors**  
```bash
vim file.txt
```
Opens `file.txt` in `vim`. Press `i` to insert, `ESC` to exit insert mode, `:wq` to save and quit.  

---

### ✅ **`emacs` – Text editor**  
```bash
emacs file.txt
```
Opens `file.txt` in `emacs` (GUI-based editor).  

---

### ✅ **`grep` – Search text using patterns**  
```bash
grep "error" logfile.txt
```
Finds all lines containing `"error"` in `logfile.txt`.  

```bash
grep -i "warning" logfile.txt
```
Case-insensitive search for `"warning"`.  

---

### ✅ **`sed` – Stream editor for filtering and transforming text**  
```bash
sed 's/error/fix/g' logfile.txt
```
Replaces all occurrences of `"error"` with `"fix"` in `logfile.txt`.  

---

### ✅ **`awk` – Pattern scanning and processing language**  
```bash
awk '{print $1, $3}' data.txt
```
Extracts and prints the **1st and 3rd** columns from `data.txt`.  

---

### ✅ **`cut` – Remove sections from each line of files**  
```bash
cut -d',' -f2 data.csv
```
Extracts the **2nd column** from `data.csv`, assuming comma-separated values.  

---

### ✅ **`sort` – Sort lines of text files**  
```bash
sort names.txt
```
Sorts `names.txt` in ascending order.  

```bash
sort -r names.txt
```
Sorts `names.txt` in descending order.  

---

### ✅ **`uniq` – Report or omit repeated lines**  
```bash
uniq sorted.txt
```
Removes duplicate lines from `sorted.txt` (file must be sorted first).  

```bash
sort file.txt | uniq -c
```
Counts occurrences of unique lines in `file.txt`.  

---

Let me know if you need more details! 🚀
Let me know if you need more details! 🚀
