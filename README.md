# Born2beroot
1. Virtualization

Virtualization is a technology that can decompose a physical hardware resource, such as a server, storage device, or network resource, into multiple virtual resources. Each virtual resource can work like independent physical hardware. This technology allows us to utilize hardware resources better, improve operational efficiency, and increase flexibility and scalability. Virtualization technology is widely used in cloud computing, data centers, application testing, and other fields.

2. What is Virtual Machine (VM)?

Virtual Machine (VM) is a type of software running on a physical computer that can simulate the operating environment of one or more physical computers. This environment includes processors, memory, disk storage, network interfaces, etc. The operating system and applications running on a virtual machine are no different from those running on a physical machine. The main advantage of a virtual machine is that it can divide the computing power of a physical machine into multiple independent virtual machines, thus allowing more efficient use of hardware resources.

2. Why debian?
   - stable
   - one of the most commonly used OS
   - a community to ask for help
   - smooth update
   - same apt like ubuntu

3. AppArmor (Mandatory Access Control Framework)
When enabled, AppArmor confines programs according to a set of rules that specify what files a given program can access. This proactive approach helps protect the system against both known and unknown vulnerabilities.

4. Wall command in Linux
Wall command in Linux system is used to write a message to all users. This command displays a message, or the contents of a file, or otherwise its standard input, on the terminals of all currently logged in users.

- Check that the UFW service is started

$ sudo ufw status: check rules in details
$sudo ufw status numbered : verify the numbered ufw rules
$sudo ufw allow 8080
$sudo ufw delete <rules to be deleted> : to delete ufw rules

- SSH
SSH (Secure Shell) is a network protocol that gives users, particularly system administrators, a secure way to access a computer over an unsecured network.
Secure Shell provides：
- strong password authentication
- public key authentication
- encrypted data communications between two computers connecting over an open network, such as the internet

$sudo apt update: update the system??why do we need to
$sudo apt install openssh-server: install main tool for remote access with the SSH protocol 

$sudo systemctl restart ssh: restart your SSH Server
$sudo systemctl status ssh/ sudo service ssh status: check your SSH Status
$ssh your_username@127.0.0.1 -p 4242: call your virtual machine

vim /etc/ssh/sshd_config: change Port

-AppArmor
AppArmor (Application Armor) is a security module for Linux systems designed to protect your system from malicious software.
1. Ensures each program can only access the resources it needs. For instance, a text editor would only need to access your document files. In this case, AppArmor will only allow it to access these files and not permit it to access other system files or network resources. This way, even if the text editor is infected with malicious software, the malware won't be able to damage your system through it.

2. "access control policies." These policies define what resources each program can access, how it can access them, and what it can't access. This provides you with great flexibility to define each program's permissions according to your needs
AppArmor acts like your personal bodyguard, strictly controlling the behavior of each program based on your rules, thereby ensuring the safety of your system.

