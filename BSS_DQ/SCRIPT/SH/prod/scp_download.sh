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