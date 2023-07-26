# Born2beroot
- Virtualization

Virtualization is a technology that can decompose a physical hardware resource, such as a server, storage device, or network resource, into multiple virtual resources. Each virtual resource can work like independent physical hardware. This technology allows us to utilize hardware resources better, improve operational efficiency, and increase flexibility and scalability. Virtualization technology is widely used in cloud computing, data centers, application testing, and other fields.

- What is Virtual Machine (VM)?

Virtual Machine (VM) is a type of software running on a physical computer that can simulate the operating environment of one or more physical computers. This environment includes processors, memory, disk storage, network interfaces, etc. The operating system and applications running on a virtual machine are no different from those running on a physical machine. The main advantage of a virtual machine is that it can divide the computing power of a physical machine into multiple independent virtual machines, thus allowing more efficient use of hardware resources.

- advantages to using VMs:

Isolation: Applications running in virtual machines are isolated from the host system and other virtual machines, which can enhance the security of the system, as potential viruses or malware are confined within a single VM.

Improved resource utilization: By using virtual machines, a single physical host can run multiple operating systems and applications concurrently, which allows for more efficient use of hardware resources.

Ease of testing and development: Developers can install and test new applications or operating systems in virtual machines without affecting the host system. If problems arise, it's easy to restore the previous state or recreate the VM.

Ease of migration and duplication: The entire state of a VM, including the operating system, applications, and data, can be saved as files, making it easy to copy and migrate to other physical hosts.

Cost savings: As VMs can improve the utilization of hardware resources, the number of physical hosts that need to be purchased can be reduced, thereby saving on hardware and energy costs.

_________

- Why debian?
   - stable
   - one of the most commonly used OS
   - a community to ask for help
   - smooth update
   - same apt like ubuntu

_________

- AppArmor (Mandatory Access Control Framework)
When enabled, AppArmor confines programs according to a set of rules that specify what files a given program can access. This proactive approach helps protect the system against both known and unknown vulnerabilities.

_________

- Wall command in Linux
Wall command in Linux system is used to write a message to all users. This command displays a message, or the contents of a file, or otherwise its standard input, on the terminals of all currently logged in users.

- Check that the UFW service is started

$sudo ufw status: check rules in details

$sudo ufw status numbered : verify the numbered ufw rules

$sudo ufw allow 8080

$sudo ufw delete <rules to be deleted> : to delete ufw rules

_________

- SSH
SSH (Secure Shell) is a network protocol that gives users, particularly system administrators, a secure way to access a computer over an unsecured network.
Secure Shell provides：
  · strong password authentication
  · public key authentication
  · encrypted data communications between two computers connecting over an open network, such as the internet

$sudo apt update: update the system??why do we need to

$sudo apt install openssh-server: install the main tool for remote access with the SSH protocol 

$sudo systemctl restart ssh: restart your SSH Server

$sudo systemctl status ssh/ sudo service ssh status: check your SSH Status

$ssh your_username@127.0.0.1 -p 4242: call your virtual machine

$vim /etc/ssh/sshd_config: change Port

_________

- AppArmor
AppArmor (Application Armor) is a security module for Linux systems designed to protect your system from malicious software.
1. Ensures each program can only access the resources it needs. For instance, a text editor would only need to access your document files. In this case, AppArmor will only allow it to access these files and not permit it to access other system files or network resources. This way, even if the text editor is infected with malicious software, the malware won't be able to damage your system through it.

2. "access control policies." These policies define what resources each program can access, how it can access them, and what it can't access. This provides you with great flexibility to define each program's permissions according to your needs
AppArmor acts like your personal bodyguard, strictly controlling the behavior of each program based on your rules, thereby ensuring the safety of your system.

_________

- sudo

$ sudo adduser <user> : create a new user 

$ getent passwd <user> : Verify whether user was successfully created

$ sudo chage -l <user> : Verify newly-created user's password expiry information

$ sudo userdel <user> : delete user
$ sudo userdel -r <user> : delete the user and files
_________

$ sudo addgroup <groupname> : create a new group

$ sudo adduser <user> <groupname> : add useer to this group
$ sudo usermod -aG <groupname> <user>

$getent group <groupname> : verify whether user was sucessfully added

_________

- Root vs. sudo

In Linux and UNIX systems, the root user is the superuser and has all access to the system. This means that the root user can execute any command, modify any files, including system files. Because of such privileges, misuse of the root user can result in system damage or data loss.

An administrator generally refers to a user with certain privileges who can perform some operations that require high-level permissions. However, they do not necessarily have all the permissions of a root user.

`sudo` is a program that allows system administrators to delegate certain root-level commands to be executable by certain users or user groups. When a user operates using the sudo command, the system asks for the password of that user (not the root user's password), and this command will be logged.

The use of sudo can increase system security because:

1. Users can execute superuser commands without needing to know the root password.
2. It can control which users can execute which commands.
3. All sudo commands are logged and can be audited.

In summary, the root is the superuser of the system with the highest permissions, while sudo is a tool that allows normal users to execute certain superuser commands.

_________

- TTY mode
short for Teletypewriter mode, refers to a text-based console session in Linux and Unix-like systems where users interact with the operating system using text commands instead of a graphical user interface (GUI).

_________

The architecture of your operating system and its kernel version.
$ uname --all





















