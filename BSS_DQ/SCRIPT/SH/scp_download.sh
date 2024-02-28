MftSourcePath=$1
MftHost=$2
MftPath=$3
MftUsr=$4
MftAuth=$5
BatchDate=$6
packagesshpassPath=$(which sshpass)
CheckUsr=$(cat $MftUsr)
CheckAuth=$(cat $MftAuth)

mkdir -p $MftPath/$BatchDate
$packagesshpassPath -p $CheckAuth scp $CheckUsr@$MftHost:$MftSourcePath/$BatchDate/temp_cif.csv.gz $MftPath/$BatchDate
$packagesshpassPath -p $CheckAuth scp $CheckUsr@$MftHost:$MftSourcePath/$BatchDate/temp_loan.csv.gz $MftPath/$BatchDate
$packagesshpassPath -p $CheckAuth scp $CheckUsr@$MftHost:$MftSourcePath/$BatchDate/disburse.csv.gz $MftPath/$BatchDate
echo "DONE"

#test dulu cuy!
#sshpass -p 'B$S2021#' scp bank.opr@10.196.20.89:/home/bank.opr/DONE.csv /home/data/aro/20230731
#scp_download.sh /home/bank.opr 10.196.20.89 /home/data/aro /usr/local/tomcat/webapps/dmp-backend/etl_script/aro_usr.txt /usr/local/tomcat/webapps/dmp-backend/etl_script/aro_auth.txt 20230731