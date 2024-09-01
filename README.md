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

# Basic Linux Commands

## Navigating the Filesystem 🗂️

Understanding how to navigate the filesystem is fundamental when working with Linux.

### 1. `pwd` (Print Working Directory)

The `pwd` command shows the full path of the current directory you are in.

```bash
pwd
```

**Example:** If you are in the `/home/user/documents directory`, running pwd will output:

```bash
/home/user/documents
```

### 2. `ls` (List Directory Contents)

The `ls` command lists all files and directories in the current directory.

```bash
ls
```

**Example:** To list files with details (like file size and permissions):

```bash
ls -l
```

### 3. `cd` (Change Directory)

The `cd` command changes the current directory to a different one.

```bash
cd /path/to/directory
```

**Example:** To move to the home directory:

```bash
cd ~
```

## File Operations 📁

These commands help you create, move, and manage files and directories.

### 1. `touch` (Create a File)

The `touch` command creates an empty file.

```bash
touch filename
```

**Example:** To create a file named example.txt:

```bash
touch example.txt
```

### 2. `mkdir` (Create a Directory)

The `mkdir` command creates a new directory

```bash
mkdir directory_name
```

**Example:** To create a directory named projects:

```bash
mkdir project
```

### 3. `cp` (Copy Files)

The `cp` command copies files or directories from one location to another.

```bash
cp source_file destination
```

**Example:** To copy file.txt to another directory:

```bash
cp file.txt /home/user/documents
```

### 4. `mv` (Move/Rename Files)

The mv command moves or renames files or directories.

```bash
mv old_name new_name
```

**Example:** To move file.txt to another directory:

```bash
mv file.txt /home/user/documents
```

Or to rename `file.txt` to `newfile.txt`:

### 5. `rm` (Remove Files/Directories)

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

# Linking Local Volume to DOcker using Docker Compose

## Why Do We Need to Link Volumes?

When working inside a Docker container, you might create or modify files within the container's filesystem. However, these changes are isolated from your local machine, which means:

- **Files created or modified inside the container** will not automatically appear in your local filesystem.
- **Git won't be able to track changes** made inside the container since they aren't visible in your local directory.

To solve this, we can link a directory inside the Docker container to a directory on your local machine. This way, any changes made in the container will be reflected on your local machine, and vice versa.

## What is Docker Compose? 🐳

Docker Compose is a tool that allows you to define and manage multi-container Docker applications. With Docker Compose, you can define all your services, networks, and volumes in a single YAML file. This simplifies the process of managing complex applications by allowing you to spin up an entire environment with a single command.

## Setting Up Docker Compose

Let's set up Docker Compose to link your local volume with the Docker container.

### 1. Create a `docker-compose.yml` File

Create a new file named `docker-compose.yml` in your project directory. This file will define the Docker services and link the volumes.

```yaml
services:
  robotics-env:
    build: .
    volumes:
      - ./workspace:/home/myuser/workspace
    stdin_open: true # Equivalent to `-i` in `docker run`
    tty: true # Equivalent to `-t` in `docker run`
    command: /bin/bash
```

#### Explanation:

- `stdin_open: true`: This is equivalent to using the `-i` flag with `docker run`. It keeps the standard input (stdin) open even if not attached.
- `tty: true`: This is equivalent to using the `-t` flag with `docker run`. It allocates a pseudo-TTY, which makes the terminal session interactive.
- `command: /bin/bash`: Ensures that when the container starts, it opens a bash shell, allowing you to interact with the container.

### 2. Run Docker Compose
To start the container in interactive mode, simply use:
```bash
docker-compose up
```
This command will start your container as specified in the `docker-compose.yml` file, attaching the terminal to it, so you can interact with the shell inside the container.

### 3. Accessing the Container
Once the container is running, you should automatically be placed inside the container's bash shell, where you can run commands interactively.

#### Running in Detached Mode
If you later want to run the container in detached mode (not interactively), you can add the `-d` flag to the `docker-compose up` command:
```bash
docker-compose up -d
```
This runs the container in the background, freeing up your terminal for other tasks.

### 4. Creating a File inside the Container
Let's test this by creating a file inside the container and ensuring it's visible on your local machine.
1. **Inside the Docker Contianer:**
    ```bash
    touch /home/myuser/workspace/newfile.txt
    ```
2. **On your local machine:** Check your `./workspace` directory, and you should see `newfile.txt` there.

This synchronization ensures that all your work inside the Docker environment is consistent with your local development setup, making it easier to manage code and collaborate.

# 📝 License

This project is [GPL-3](https://www.gnu.org/licenses/gpl-3.0.en.html#license-text) licensed.

---
