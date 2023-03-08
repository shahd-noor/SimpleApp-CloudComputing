LOG_FILE=varloginstall_$(date +%Y_%m_%d).log
touch $LOG_FILE

# Clone the SimpleApacheApp repository and copy files to varwwwSimpleApp
echo Cloning SimpleApacheApp repository...  tee -a $LOG_FILE
git clone httpsgithub.commkassafSimpleApacheApp.git  $LOG_FILE 2&1
mkdir varwwwSimpleApp
cp -R .SimpleApacheAppApp varwwwSimpleApp  $LOG_FILE 2&1
cp .SimpleApacheAppsimpleApp.conf etcapache2sites-availablesimpleApp.conf  $LOG_FILE 2&1

# Check Apache version and update if necessary
echo Checking Apache version...  tee -a $LOG_FILE
apache_version=$(apache2 -v  awk 'Apache {print $3}'  cut -d'' -f2)

if [ $(echo $apache_version  grep -E ^2.[0]+(.[0]+)$) ]; then
    # Update Apache to latest version
    echo Updating Apache to the latest version...  tee -a $LOG_FILE
    if sudo apt-get update && sudo apt-get install apache2 -y; then
        echo Apache has been updated to the latest version.  tee -a $LOG_FILE
    else
        echo Failed to update Apache.  tee -a $LOG_FILE
    fi
else
    echo Apache version $apache_version is already up to date.  tee -a $LOG_FILE
fi

echo Installation complete. See $LOG_FILE for details.  tee -a $LOG_FILE