#! /bin/bash
# My First Script



# Super Users Do (sudo) check
if [ $UID -ne 0 ]
then
echo "Please re-run script using sudo."
exit
fi

# Create Varible for Research-file 
research=$HOME/13_Mr_Js_Project/Research/sys_info.txt
ip=$(ip addr | head -9 | tail -1)
stop=$(find /home -type f -perm 777)

# Create a research folder
# if folder doestn't exist, then make new folder. otherwise do nothing
##_mkdir $HOME/13_Mr_J's_Project/Research/
if [ ! -d $HOME/13_Mr_Js_Project/Research ]
then
mkdir $HOME/13_Mr_Js_Project/Research
fi

# Verify whether sys_info.txt file exists
# if sys_info.txt file exists, then remove it
if [ -f $research ]
then
rm $research
fi

# the  title of the script being ran
echo "A Quick System Audit Script" >> $research
# the current date the script is being ran
date >> $research

echo " " >> $research

# The machine type
echo "Machine Type Info:" >> $research
echo $MACHTYPE >> $research

echo " " >> $research

# The User name of person running the script
echo "User Name Info" >> $research
echo -e "Uname info: $(uname -a) \n" >> $research

# The IP Address currently being used on the machine
echo "The Machine's IP" >> $research
echo -e $ip >> $research

echo " " >> $research

# Hostname
echo "Hostname: $(hostname -s)" >> $research


# Bonus Material for my first script
# Remove ##_ to apply the following scripted lines

# Provide DNS information
##_echo "DNS Servers: " >> $research
##_cat /etc/resolve.conf >> $research

# Provide Available Memory Information"
##_echo "memory Info:" >> $research
##_free >> $research

# Provide CPU Information
##_echo -e "\nCPU Info:" >> $research
##_lscpu | grep CPU >> $research

# Disk Usage
##_echo -e "\nDisk Usage:" >> $research
##_df -H | head -2 >> $research

# USers who are currently logged in
##_echo -e "\nwho is logged in: \n $(who -a) \n" >> $research


# The following are added Custom Commands

# Add the research folder
# The command to add the Research folder is commented out b/c It's already created
##_mkdir ~/13_Mr_J's_Project/linux_scripts/Research
# NOTE: Never chmod -x 777 to a file
echo -e "\n777 Files:" >> $research
echo $stop >> $research

echo " " >> $research

echo -e "Top 10 Processes" >> $research
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head -17 >> $research

