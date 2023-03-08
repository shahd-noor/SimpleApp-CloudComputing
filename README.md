# SimpleApp-CloudComputing

First Script:
Adding it to path variable
 - /usr/bin
export PATH=$PATH:$HOME/bin
mkdir $HOME/bin
cp ./lunixStatus ~/bin

second Script:
crontab -e
0 0 * * * /bin/bash $HOME/my-script.sh
 then Save and Exite

////******
DEscription:
In the first script( LunixStatus) a welcome screen is created showing the date, host, version name.
These are the variables that are created:
[TODAY=$(date)
HOST=$(hostname)
VER=$(uname -r)]
****
result=$(ps aux | less) ///Special in the first function(f1), whose target: List the running process.
memUsage=$(free -m | awk '/Mem/{print $3}') //Special in the second function(f2), whose target: Check the memory status.
hardFree=$(df -h --total /dev /run) //Special in the thired function(f3), whose target:  Check the hard disk status.
apache=$(dpkg --get-selections | grep apache) // Special in the fourth function(f4), whose target: Check if apache is installed .--> insid fun: return Error if apache does not install. this is command:echo "$0 - Error \$var not set or NULL".obverse, use this is command:	echo "$(apache2 -v)"
****
When choosing the main number option, then pressing the same number, it moves to sub-options, such as the number 1, which List the running process. If it is selected again, it starts from the first: displaying the welcome page, and the options(back to the main view) in other name called the main function.
2 once again-->update the view
3 once again-->Exite
****
A script has been created that receives arguments (p,r,h,a)





This assignment is solved on Linux
