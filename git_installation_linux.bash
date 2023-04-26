
USERID=$(id -u)
DATE=$(date +%F)
LOG="Git-install-${DATE}.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
if [ $1 -ne 0 ]; then
	echo -e "$2 ....${R} FALIURE ${N}" 2>&1 | tee -a $LOG
	exit 1
else
	echo -e "$2 ....${G} SUCCESS ${N}" 2>&1 | tee -a $LOG
fi
}

if [ $USERID -ne 0 ]; then
	echo -e "${R} You need to be ROOT user to execute this script ${N}"
	exit 1
fi

yum update -y &>>$LOG

VALIDATE $? "Updating YUM"

yum install git

VALIDATE $? "GIT Installation is"

git --version

