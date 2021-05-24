#! /bin/bash



# My First Script

# Create a research folder
mkdir ~/13_Mr_J's_Project/linux_scripts/Research
# the  title of the script being ran
echo "A Quick System Audit Script" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
# the current date the script is being ran
date >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

echo " " >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

# The machine type
echo "Machine Type Info:" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
echo $MACHTYPE >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

echo " " >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

# The User name of person running the script
echo "User Name Info" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

# The IP Address currently being used on the machine
echo "The Machine's IP" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

# Hostname
echo "Hostname: $(hostname -s)" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt


# Bonus Material for my first script
# Remove ##_ to apply the following scripted lines

# Provide DNS information
##_echo "DNS Servers: " >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
##_cat /etc/resolve.conf >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

# Provide Available Memory Information"
##_echo "memory Info:" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
##_free >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

# Provide CPU Information
##_echo -e "\nCPU Info:" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
##_lscpu | grep CPU >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

# Disk Usage
##_echo -e "\nDisk Usage:" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
##_df -H | head -2 >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

# USers who are currently logged in
##_echo -e "\nwho is logged in: \n $(who -a) \n" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt


# The following are added Custom Commands

# Add the research folder
# The command to add the Research folder is commented out b/c It's already created
##_mkdir ~/13_Mr_J's_Project/linux_scripts/Research
# NOTE: Never chmod -x 777 to a file
echo -e "\n777 Files:" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
find / -type f -perm 777 >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

echo " " >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

echo -e "/nTop 10 Processes" >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head -17 >> ~/13_Mr_J's_Project/linux_scripts/Research/sys_info.txt

