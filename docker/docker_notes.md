🐳 Docker Basics

🔹 What is Docker?

Docker is a tool used to create, deploy and run applications in containers.

---

🔹 What is a Container?

A container is a lightweight package that includes:

- Application code
- Dependencies
- Libraries

---

🔹 Docker vs Virtual Machine

Docker| Virtual Machine
Lightweight| Heavy
Fast startup| Slow
Uses host OS| Needs full OS

---

🔹 Key Components

1. Docker Image

- Blueprint of container
- Read-only template

2. Docker Container

- Running instance of image

---

🔹 Docker Lifecycle

1. Create Dockerfile
2. Build Image
3. Run Container

---

🔹 Basic Commands

Check Docker version : docker --version

List images : docker images

Run container : docker run nginx

Running containers : docker ps

---

🔹 Why Docker in DevOps?

- Consistency
- Faster deployment
- Easy scaling



Files and Folders in containers base images:
    /bin: contains binary executable files, such as the ls, cp, and ps commands.

    /sbin: contains system binary executable files, such as the init and shutdown commands.

    /etc: contains configuration files for various system services.

    /lib: contains library files that are used by the binary executables.

    /usr: contains user-related files and utilities, such as applications, libraries, and documentation.

    /var: contains variable data, such as log files, spool files, and temporary files.

    /root: is the home directory of the root user.



Files and Folders that containers use from host operating system
   The host's file system: Docker containers can access the host file system using bind mounts, which allow the container to read and write files in the host file system.

   Networking stack: The host's networking stack is used to provide network connectivity to the container. Docker containers can be connected to the host's network directly or through a virtual network.

   System calls: The host's kernel handles system calls from the container, which is how the container accesses the host's resources, such as CPU, memory, and I/O.

   Namespaces: Docker containers use Linux namespaces to create isolated environments for the container's processes. Namespaces provide isolation for resources such as the file system, process ID, and network.

   Control groups (cgroups): Docker containers use cgroups to limit and control the amount of resources, such as CPU, memory, and I/O, that a container can access.
    
It's important to note that while a container uses resources from the host operating system, it is still isolated from the host and other containers, so changes to the container do not affect the host or other containers.

Note: There are multiple ways to reduce your VM image size as well, but I am just talking about the default for easy comparision and understanding.

so, in a nutshell, container base images are typically smaller compared to VM images because they are designed to be minimalist and only contain the necessary components for running a specific application or service. VMs, on the other hand, emulate an entire operating system, including all its libraries, utilities, and system files, resulting in a much larger size.
