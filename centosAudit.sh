#!/bin/bash
#Description: Centos7 Audit
#Author: Dora
#Date: November 2020
echo -e "\n**************************************\n" >> /var/log/centos7audit-$(date +%F)
echo -e "\n**********CENTOS 7 AUDIT *************\n" >> /var/log/centos7audit-$(date +%F)
echo -e "\n**************************************\n" >> /var/log/centos7audit-$(date +%F)
# If the file /etc/hosts exist
echo -e "\n check the host file" >> /var/log/centos7audit-$(date +%F)

if
        [ -f /etc/hosts ] ; then
        echo -e "\n file /etc/host exist\n" >> /var/log/centos7audit-$(date +%F)
else
        echo -e "\n file /etc/hosts does not exist\n" >> /var/log/centos7audit-$(date +%F)
fi


# What selinux is set to?
echo -e "\n checking selinux \n" >> /var/log/centos7audit-$(date +%F)
echo -e "\n The Selinux is set to $(getenforce) \n" >> /var/log/centos7audit-$(date +%F)


# Check what is the uid of the user nobody
echo -e "\n check nobody uid \n" >> /var/log/centos7audit-$(date +%F)
echo -e "\n The user nobody uid is $(grep ^nobody /etc/passwd | awk -F: '{print$3}') \n" >> /var/log/centos7audit-$(date +%F)

# Check if the package samba is installed on the system
echo -e "\n checking Samba package\n" >> /var/log/centos7audit-$(date +%F)
rpm -qa | grep samba >/dev/null 2>&1
if [ $? -eq 0 ]; then
        echo -e "\n Package samba installed \n" >> /var/log/centos7audit-$(date +%F)
else
        echo -e "\n Package samba not installed \n" >> /var/log/centos7audit-$(date +%F)
fi

# Check if the audit daemon is running and is enabled

echo -e "\n checking the auditd\n" >> /var/log/centos7audit-$(date +%F)
systemctl status auditd | grep Loaded | awk -F";" '{print "auditd is"$2}' >> /var/log/centos7audit-$(date +%F)
systemctl status auditd | awk 'NR ==3 {print "auditd is " $3}' | tr -d '()' >> /var/log/centos7audit-$(date +%F)

# Check if the sudo tool has any log file configured
echo "\n checking  \n"
# Check if the /etc/group file is owned by root user

# Check if the curl command is installed
echo -e "\n checking curl package\n" >> /var/log/centos7audit-$(date +%F)
rpm -qa | grep samba >/dev/null 2>&1

if [ $? -eq 0 ]; then
        echo -e "\n Package curl installed \n" >> /var/log/centos7audit-$(date +%F)
else
        echo -e "\n Package curla not installed \n" >> /var/log/centos7audit-$(date +%F)
fi
# Check if docker is installed
echo -e "\n checking docker package\n" >> /var/log/centos7audit-$(date +%F)
rpm -qa | grep samba >/dev/null 2>&1
if [ $? -eq 0 ]; then
        echo -e "\n Package docker installed \n" >> /var/log/centos7audit-$(date +%F)
else
        echo -e "\n Package docker not installed \n" >> /var/log/centos7audit-$(date +%F)
fi
# Check what the total size of the memory is

# Check what the first digit of the kernel version is

# Check if the system is 64 bits or 32 bits
echo -e "\n the system is $(getconf LONG_BIT)\n" >> /var/log/centos7audit-$(date +%F)
# Check if the /etc/sysconfig/network file exist.
echo -e "\n check the /etc/sysconfig/network file" >> /var/log/centos7audit-$(date +%F)

if
        [ -f /etc/sysconfig/network ] ; then
        echo -e "\n file /etc/sysconfig/network exist\n" >> /var/log/centos7audit-$(date +%F)
else
        echo -e "\n file /etc/sysconfig/network does not exist\n" >> /var/log/centos7audit-$(date +%F)
fi
# Check if there is a dns entry in the /etc/resolv.conf file with 8.8.8.8

# Check what the IP address of the server is.

# Check what linux flavour is running and the version.

# Check what the hostname is.
echo -e "\n the hostname for this server is $(hostname)" >> /var/log/centos7audit-$(date +%F)

