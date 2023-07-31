#!/bin/bash

#set -ex

# Architecture: OS/Hostname/kernel version
arch=$(uname -a)

# PHYSICAL CPU
cpuf=$(grep "physical id" /proc/cpuinfo | wc -l)

# PROCESSOR/ vCPU
cpuv=$(grep "processor" /proc/cpuinfo | wc -l)

# RAM
ram_total=$(free -m | grep Mem | awk '{print $2}')
ram_use=$(free -m | grep Mem | awk '{print $3}')
ram_percent=$(free | grep Mem | awk '{printf("%.2f", $3/$2*100)}')

# DISK MEM
#disk_total=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_t += $2} END {printf ("%.1fGb\n"), di>
disk_total=$(df --total -m | grep "total" | awk '{printf("%dGb", $2/1024)}')
#disk_use=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_u += $3} END {print disk_u}')
disk_use=$(df --total -m | grep "total" | awk '{printf("%d", $3)}')
#disk_percent=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_u += $3} {disk_t+= $2} END {printf(>
disk_percent=$(df --total -m | grep "total" | awk '{printf("%d%%", $3/$2*100)}')

# CPU LOAD
cpul=$(top -bn1 | grep "%Cpu" | awk '{printf("%.1f%%\n", (100.0-$8)%100)}')

# LAST BOOT
lb=$(who -b | awk '{print $3 " " $4}')

# LVM USE
lvmu=$(if [ $(lsblk | grep "lvm" | wc -l) -gt 0 ]; then echo yes; else echo no; fi)

# TCP CONNECTIONS
tcpc=$(ss -ta | grep ESTAB | wc -l)

# USER LOG
ulog=$(users | wc -w)

# NETWORK
ip=$(hostname -I)
mac=$(ip link | grep "link/ether" | awk '{print $2}')

# SUDO
cmnd=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

wall "  #Architecture: $arch
        #CPU physical: $cpuf
        #vCPU: $cpuv
        #Memory Usage: $ram_use/${ram_total}MB ($ram_percent%)
        #Disk Usage: $disk_use/$disk_total ($disk_percent)
        #CPU load: $cpul
        #Last boot: $lb
        #LVM use: $lvmu
        #Connections TCP: $tcpc ESTABLISHED
        #User log: $ulog
        #Network: IP $ip ($mac)
        #Sudo: $cmnd cmd"

