# Getting Started with Robotics

# What is Linux?
Linux is an open-source operating system, created by Linus Torvalds in 1991, and is used on everything from personal computers to servers. Unlike DOS, which is a single-tasking, text-based operating system, Linux supports multitasking and multiuser operations. It offers both a graphical interface and a powerful command-line interface.

# Installation 🛠️
For this robotics project, we will use Docker to set up our Linux environment. Docker is a platform that allows you to automate the deployment of applications inside lightweight, portable containers. These containers package everything you need to run the software, including the operating system, libraries, and dependencies, ensuring consistent performance across different environments.

## Why Docker? 🐳
- **Consistency:** Docker ensures that the software runs the same way, regardless of where it’s deployed.
- **Isolation:** Each Docker container is isolated, preventing conflicts between different software environments.
- **Portability:** Docker containers can be easily shared and run on any system with Docker installed, making it ideal for collaboration and deployment.

## Installing Docker
> [!IMPORTANT]
> Ensure that Virtualtization is enabled in BIOS for Your system.
### Windows
> [!IMPORTANT]
> Ensure that WSL is Enabled in your Windows.
1. **Download Docker Desktop:** Go to the [Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/) download page.
2. **Install Docker Desktop:** Run the installer and follow the on-screen instructions.
3. **Start Docker Desktop:** After installation, Docker will start automatically. You can access it from the Start menu.
4. **Verify Installation:** Open PowerShell and run the command:
    ```bash
    docker run hello-world
    ```

### Linux
1. **Update Your System:** Open your terminal and run the following commands:
    ```bash
    sudo apt update
    sudo apt upgrade
    ```
2. **Install Docker:** Go to the [Docker Desktop for Linux](https://docs.docker.com/desktop/install/linux-install/) and follow the isntructions

3. **Verify Installation:** Open PowerShell and run the command:
    ```bash
    docker run hello-world
    ```


### MacOS
1. **Download Docker Desktop:** Visit the [Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/) download page.
2. **Install Docker Desktop:** Open the downloaded .dmg file and drag the Docker icon to your Applications folder.
3. **Start Docker:** Launch Docker from your Applications folder. Docker will start running in the background.
4. **Verify Installation:** Open PowerShell and run the command:
    ```bash
    docker run hello-world 
    ```

## Cloning the Repository
Clone the repository on your local machine using the command:
```bash
git clone https://github.com/Robotics-Society-PEC/Getting-Started-With-Robotics.git
```

## Building the Docker Image
> [!IMPORTANT]
> Ensure that you run this command from within the repository.

This repo provides a Docker image with ubuntu installed, To build the image run the command:
```bash
docker build -t <name_of_image> .
```

After the image is done building, you can enter the Linux enviornment using the command:
```bash
docker run -it <name_of_image>
```

## Basic Linux Commands

### Navigating the Filesystem 🗂️
Understanding how to navigate the filesystem is fundamental when working with Linux.

#### 1. `pwd` (Print Working Directory)
The `pwd` command shows the full path of the current directory you are in.
```bash
pwd
```
**Example:** If you are in the `/home/user/documents directory`, running pwd will output:
```bash
/home/user/documents
```

#### 2. `ls` (List Directory Contents)
The `ls` command lists all files and directories in the current directory.
```bash
ls
```
**Example:** To list files with details (like file size and permissions):
```bash
ls -l
```

#### 3. `cd` (Change Directory)
The `cd` command changes the current directory to a different one.
```bash
cd /path/to/directory
```

**Example:** To move to the home directory:
```bash
cd ~
```

### File Operations 📁
These commands help you create, move, and manage files and directories.

#### 1. `touch` (Create a File)
The `touch` command creates an empty file.
```bash
touch filename
```
**Example:** To create a file named example.txt:
```bash
touch example.txt
```

#### 2. `mkdir` (Create a Directory)
The `mkdir` command creates a new directory
```bash
mkdir directory_name
```

**Example:** To create a directory named projects:
```bash
mkdir project
```
#### 3. `cp` (Copy Files)
The `cp` command copies files or directories from one location to another.
```bash
cp source_file destination
```
**Example:** To copy file.txt to another directory:
```bash
cp file.txt /home/user/documents
```

#### 4. `mv` (Move/Rename Files)
The mv command moves or renames files or directories.
```bash
mv old_name new_name
```
**Example:** To move file.txt to another directory:
```bash
mv file.txt /home/user/documents
```
Or to rename `file.txt` to `newfile.txt`:

#### 5. `rm` (Remove Files/Directories)
The `rm` command removes files or directories.
```bash
rm filename
```
**Example:** To remove a file named file.txt:
```bash
rm file.txt
```
To remove a directory and its contents:
```bash
rm -r directory_name
```

# 📝 License

This project is [GPL-3](https://www.gnu.org/licenses/gpl-3.0.en.html#license-text) licensed.

***