# **Basic & Useful Linux Commands Tutorial**  

Whether you're new to Linux or need a quick refresher, this guide covers essential commands for navigating, managing files, and performing basic operations in the terminal.  

---

## **1. Navigating the File System**  

| Command | Description | Example |
|---------|------------|---------|
| `pwd` | Print current working directory | `pwd` |
| `ls` | List files and directories | `ls -l` (detailed list) |
| `cd` | Change directory | `cd /home/user/Documents` |
| `cd ..` | Move up one directory | `cd ..` |
| `cd ~` | Go to home directory | `cd ~` |
| `mkdir` | Create a new directory | `mkdir new_folder` |
| `rmdir` | Remove an empty directory | `rmdir empty_folder` |

---

## **2. File Operations**  

| Command | Description | Example |
|---------|------------|---------|
| `touch` | Create an empty file | `touch file.txt` |
| `cp` | Copy files/directories | `cp file.txt /backup/` |
| `mv` | Move or rename files | `mv old.txt new.txt` |
| `rm` | Remove files | `rm file.txt` |
| `rm -r` | Remove directory & contents | `rm -r folder/` |
| `cat` | Display file content | `cat file.txt` |
| `less` | View file page by page | `less longfile.txt` |
| `head` | Show first 10 lines of a file | `head file.txt` |
| `tail` | Show last 10 lines of a file | `tail file.txt` |

---

## **3. File Permissions & Ownership**  

| Command | Description | Example |
|---------|------------|---------|
| `chmod` | Change file permissions | `chmod 755 script.sh` |
| `chown` | Change file owner | `chown user:group file.txt` |
| `sudo` | Run command as superuser | `sudo apt update` |

**Permission Codes:**  
- `4` = Read (r)  
- `2` = Write (w)  
- `1` = Execute (x)  
Example: `chmod 644 file.txt` → Owner: rw-, Group: r--, Others: r--  

---

## **4. System Information & Processes**  

| Command | Description | Example |
|---------|------------|---------|
| `uname -a` | Show system info | `uname -a` |
| `df -h` | Disk space usage | `df -h` |
| `free -h` | Memory usage | `free -h` |
| `top` / `htop` | Monitor running processes | `top` |
| `ps` | List processes | `ps aux` |
| `kill` | Terminate a process | `kill -9 PID` |

---

## **5. Networking Commands**  

| Command | Description | Example |
|---------|------------|---------|
| `ping` | Check connectivity | `ping google.com` |
| `ifconfig` / `ip a` | Network interfaces | `ip a` |
| `wget` | Download files | `wget https://example.com/file.zip` |
| `curl` | Transfer data from URLs | `curl -O https://example.com/file.zip` |
| `ssh` | Connect to remote server | `ssh user@192.168.1.1` |

---

## **6. Package Management (Debian/Ubuntu)**  

| Command | Description | Example |
|---------|------------|---------|
| `sudo apt update` | Update package list | `sudo apt update` |
| `sudo apt upgrade` | Upgrade installed packages | `sudo apt upgrade` |
| `sudo apt install` | Install a package | `sudo apt install nano` |
| `sudo apt remove` | Remove a package | `sudo apt remove nano` |

**For CentOS/RHEL (using `yum`/`dnf`):**  
- `sudo yum install package`  
- `sudo dnf install package`  

---

## **7. Searching & Text Manipulation**  

| Command | Description | Example |
|---------|------------|---------|
| `grep` | Search text in files | `grep "error" log.txt` |
| `find` | Search for files | `find /home -name "*.txt"` |
| `locate` | Find files quickly | `locate file.txt` |
| `sed` | Stream editor for text | `sed 's/old/new/g' file.txt` |
| `awk` | Text processing tool | `awk '{print $1}' file.txt` |

---

## **8. Compression & Archiving**  

| Command | Description | Example |
|---------|------------|---------|
| `tar` | Archive files | `tar -cvf archive.tar folder/` |
| `gzip` | Compress files | `gzip file.txt` |
| `gunzip` | Decompress files | `gunzip file.txt.gz` |
| `zip` / `unzip` | Zip/unzip files | `zip archive.zip file.txt` |

---

## **9. Shortcuts & Tips**  
- `Ctrl + C` → Stop current command  
- `Ctrl + Z` → Pause a process (use `fg` to resume)  
- `Ctrl + D` → Exit terminal / End input  
- `Ctrl + R` → Search command history  
- `!!` → Repeat last command  
- `command --help` → Show help (e.g., `ls --help`)  
- `man command` → Open manual (e.g., `man ls`)  

---

### **Final Notes**  
- Linux is case-sensitive (`file.txt` ≠ `File.txt`).  
- Use `Tab` for auto-completion.  
- Be careful with `rm -rf` (it deletes permanently!).  

🚀 **Practice these commands to become comfortable in the Linux terminal!**  

Would you like a more detailed explanation of any section? 😊
