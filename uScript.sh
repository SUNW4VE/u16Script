#!/bin/bash

# Script made by Divtheorist
# READ ALL THE COMMENTS IN THIS SCRIPT BEFORE RUNNING

# BEFORE EVERYTHING
#   - change the software and updates shibizzle in the GUI
#   - sudo chmod 777 this script
#   - READ ALL THE COMMENTS IN THIS SCRIPT.
# MAKE users.txt in same directory with ALL USERS LINE BY LINE
# MAKE users1.txt in same directory with ALL USERS EXCEPT THE MAIN ONE LINE BY LINE

# checklist not related to script
#  steganography online script
#  ps -aux for backdoors
#  sudo lsblk(listblock) for mountpoints
#  find / | grep gif, mp3, mp4, mov
#  sudo crontab -u [user] -l to find crontabs for a user(BACKDOORS)
#  /var/spool/cron/crontabs for each user to remove the backdoor

# script roadmap
#   - need to update; delete unauthorized users
#   - verify user groups(not admins, vice versa)
#   - delete possibly stupid files in home directories using users.txt
#   - klaver
#   - delete stupid stuff
#   - anything SSH
#   - defuaults !authenticate

# START OF THE ACTUAL SCRIPT

# first off, let's start with some basic stuff
sudo rm -rf /var/lib/dpkg/lock-frontend
echo y | sudo apt install ufw

# does it prohibit updates? if yes then comment this out
echo y | sudo apt-get update && echo y | sudo apt-get upgrade

# make a file called users.txt and list ALL authorized users line by line
for user in $(cat users.txt); do grep $user /etc/passwd || useradd -m -s /bin/bash $user && printf '%s\n' 'wysi727' 'wysi727' | passwd $user; 

# change password ages of users in users.txt
for user in $(cat users.txt); do chage -M 15 -m 6 -W 7 -I 5 $user ; done

# remove lines of backdoors in crontabs using nmap and netcat, perl, python
sed -i -re  '/nc/d' /etc/cron.d/anacron
sed -i -re  '/python/d' /etc/cron.d/anacron
sed -i -re  '/nmap/d' /etc/cron.d/anacron
sed -i -re  '/perl/d' /etc/cron.d/anacron
sed -i -re  '/nc/d' /var/spool/cron/crontabs
sed -i -re  '/python/d' /var/spool/cron/crontabs
sed -i -re  '/nmap/d' /var/spool/cron/crontabs
sed -i -re  '/perl/d' /var/spool/cron/crontabs
sed -i -re  '/nc/d' /etc/crontab
sed -i -re  '/python/d' /etc/crontab
sed -i -re  '/nmap/d' /etc/crontab
sed -i -re  '/perl/d' /etc/crontab

# permissions script go brr
chmod 755 /etc/X11; chown root:root /etc/X11
chmod 750 /etc/ufw; chown root:root /etc/ufw
chmod 750 /etc/anacrontab; chown root:root /etc/anacrontab
chmod 750 /etc/apt; chown root:root /etc/apt
chmod 750 /etc/cracklib; chown root:root /etc/cracklib
chmod 750 /etc/cron.d; chown root:root /etc/cron.d
chmod 750 /etc/cron.daily; chown root:root /etc/cron.daily
chmod 750 /etc/cron.hourly; chown root:root /etc/cron.hourly
chmod 750 /etc/crontab; chown root:root /etc/crontab
chmod 750 /etc/cron.weekly; chown root:root /etc/cron.weekly
chmod 750 /etc/deluser.conf; chown root:root /etc/deluser.conf
chmod 750 /etc/dpkg; chown root:root /etc/dpkg
chmod 750 /etc/firefox; chown root:root /etc/firefox
chmod 750 /etc/fuse.conf; chown root:root /etc/fuse.conf
chmod 750 /etc/gnome; chown root:root /etc/gnome
chmod 750 /etc/lightdm; chown root:root /etc/lightdm
chmod 750 /etc/init; chown root:root /etc/init
chmod 750 /etc/init.d; chown root:root /etc/init.d
chmod 750 /etc/login.defs; chown root:root /etc/login.defs
chmod 750 /etc/ssh; chown root:root /etc/ssh
chmod 750 /etc/pam.d; chown root:root /etc/pam.d
chmod 644 /etc/passwd; chown root:root /etc/passwd
chmod 750 /etc/passwd-; chown root:root /etc/passwd
chmod 750 /etc/pam.conf; chown root:root /etc/pam.conf
chmod 664 /etc/rc.local; chown root:root /etc/rc.local
chmod 750 /etc/samba; chown root:root /etc/samba
chmod 750 /etc/shadow; chown root:shadow /etc/shadow
chmod 750 /etc/shadow-; chown root:shadow /etc/shadow-
chmod 750 /etc/sudoers; chown root:root /etc/sudoers
chmod 750 /etc/sudoers.d; chown root:root /etc/sudoers.d
chmod 750 /etc/sysctl.conf; chown root:root /etc/sysctl.conf
chmod 750 /etc/sysctl.d; chown root:root /etc/sysctl.d
chmod 750 /etc/gufw; chown root:root /etc/gufw

# possibly critical software go brr, if critical then comment the line
echo y | apt-get --purge remove openssh-server
echo y | apt-get --purge remove pure-ftpd
echo y | apt-get --purge remove pure-ftpd-common
echo y | apt-get --purge remove sambashare
echo y | apt-get --purge remove ftp
echo y | apt-get --purge remove samba
echo y | apt-get --purge remove samba-libs:i83
echo y | apt-get --purge remove telnet
echo y | apt-get --purge remove mysql
echo y | apt-get --purge remove mail
echo y | apt-get --purge remove print
echo y | apt-get --purge remove http #does it need a web server

# generally bad software go brr
echo y | apt-get --purge remove netcat
echo y | apt-get --purge remove p0f
echo y | apt-get --purge remove kernel-server
echo y | apt-get --purge remove iodine
echo y | apt-get --purge remove bind9
echo y | apt-get --purge remove nfs-kernel-server
echo y | apt-get --purge remove wireshark
echo y | apt-get --purge remove fcrackzip
echo y | apt-get --purge remove squid
echo y | apt-get --purge remove icecast
echo y | apt-get --purge remove icecast2
echo y | apt-get --purge remove zangband
echo y | apt-get --purge remove zmap
echo y | apt-get --purge remove nmapsi4
echo y | apt-get --purge remove amule
echo y | apt-get --purge remove mayhem
echo y | apt-get --purge remove remaiten
echo y | apt-get --purge remove mirai
echo y | apt-get --purge remove qbot
echo y | apt-get --purge remove hydra
echo y | apt-get --purge remove aidra
echo y | apt-get --purge remove lightaidra
echo y | apt-get --purge remove newaidra
echo y | apt-get --purge remove nmap
echo y | apt-get --purge remove postfix
echo y | apt-get --purge remove john
echo y | apt-get --purge remove ophcrack
echo y | apt-get --purge remove medusa

# ssh configuration
sed -i -re 's|Host /|Host *|g' /etc/ssh/ssh_config

# optimize sshd_config
sed -i '/Port 22/c\Port 727' /etc/ssh/sshd_config
sed -i '/#PermitRootLogin/c\PermitRootLogin no' /etc/ssh/sshd_config
sed -i '/#PermitEmptyPassword/c\#PermitEmptyPassword no' /etc/ssh/sshd_config
sed -i '/#RSAAuthentication/c\RSAAuthentication yes' /etc/ssh/sshd_config
sed -i -re '/PermitUserEnvironment/c\PermitUserEnvironment no' /etc/ssh/sshd_config
sed -i -re '/PubkeyAuthentication/c\PubkeyAuthentication yes' /etc/ssh/sshd_config
sed -i -re '/StrictModes/c\StrictModes yes' /etc/ssh/sshd_config
sed -i -re '/#X11Forwarding/c\X11Forwarding no' /etc/ssh/sshd_config
sed -i -re '/IgnoreRhosts/c\IgnoreRhosts yes' /etc/ssh/sshd_config
sed -i -re '/LoginGraceTime/c\LoginGraceTime 2m' /etc/ssh/sshd_config
sed -i -re '/PrintMotd/c\PrintMotd yes' /etc/ssh/sshd_config
sed -i -re '/PrintLastLog/c\PrintLastLog yes' /etc/ssh/sshd_config
sed -i -re '/TCPKeepAlive/c\TCPKeepAlive yes' /etc/ssh/sshd_config
sed -i -re '/#UseLogin/c\#UseLogin no' /etc/ssh/sshd_config
sed -i -re '/#MaxStartups/c\#MaxStartups 10:30:60' /etc/ssh/sshd_config
sed -i -re '/#Banner/c\Banner /etc/issue.net' /etc/ssh/sshd_config
sed -i -re '/MaxAuthTries/d' /etc/ssh/sshd_config
echo 'MaxAuthTries 4' >> /etc/ssh/sshd_config
sed -i -re '/AllowUsers/d' /etc/ssh/sshd_config
sed -i -re '/DenyUsers/d' /etc/ssh/sshd_config
sed -i -re '/Protocol/d' /etc/ssh/sshd_config
echo 'Protocol 2' >> /etc/ssh/sshd_config
sed -i '/#HostBasedAuthentication/c\HostBasedAuthentication no' /etc/ssh/sshd_config

# remove bad files related to ssh
rm /etc/hosts.equiv

# .rhost files D: I HOPE YOU MADE THE USERS.TXT FILE 
for user in $(cat users.txt); do rm -rf /home/$user/*.rhost; done

# permissions in .ssh in home directories AGAIN, YOU NEED users.txt
for user in $(cat users.txt); do sed -i -re '/sudo/d' /home/$user/.ssh/id_rsa.pub; done
for user in $(cat users.txt); do chmod 700 /home/$user/.ssh; done
for user in $(cat users.txt); do chmod 644 /home/$user/.ssh/id_rsa.pub; done
for user in $(cat users.txt); do chmod 600 /home/$user/.ssh/id_rsa; done
for user in $(cat users.txt); do chown $user /home/$user/.ssh/id_rsa.pub; done
for user in $(cat users.txt); do chmod 600 /home/$user/.ssh/authorized_keys; done

# apply changes to ssh
sudo service sshd restart

# DONE WITH SSH DONE WITH SSH DONE WITH SSH DONE WITH SSH DONE WITH SSH DONE WITH SSH
# DONE WITH SSH DONE WITH SSH DONE WITH SSH DONE WITH SSH DONE WITH SSH DONE WITH SSH

# /etc/login/defs 15 7 7 
sed -i -e 's/PASS_MAX_DAYS	99999/PASS_MAX_DAYS	15/g' /etc/login.defs
sed -i -e 's/PASS_MIN_DAYS	0/PASS_MIN_DAYS	7/g' /etc/login.defs
sed -i -e 's/PASS_WARN_AGE	7/PASS_WARN_AGE 7/g' /etc/login.defs

# pam
sudo apt install libpam-cracklib

#update openssh and maybe other stuff
sudo apt-get update && sudo apt-get upgrade

# the end
echo finished!
echo oh wait more vulerabilities https://youtu.be/dQw4w9WgXcQ
