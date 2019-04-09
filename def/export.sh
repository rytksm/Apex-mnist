#!/bin/sh
if [ $# -eq 2 ]; then
    oi=$1
    pwd=$2
else
    echo "parameter error."
    exit -1
fi

ACMS_HOME=/home/acms/apex
expdir=$(cd $(dirname $0); pwd)

cd ${expdir}
mkdir ${oi}

rm -f USER.dat; ${ACMS_HOME}/apex.sh Export USER -outputfile ${oi}/USER.dat -oi ${oi} -pwd ${pwd}
rm -f FILE.dat; ${ACMS_HOME}/apex.sh Export FILE -outputfile ${oi}/FILE.dat -oi ${oi} -pwd ${pwd}
rm -f COMMPORTGROUP.dat; ${ACMS_HOME}/apex.sh Export COMMPORTGROUP -outputfile ${oi}/COMMPORTGROUP.dat -oi ${oi} -pwd ${pwd}
rm -f COMMPORT.dat; ${ACMS_HOME}/apex.sh Export COMMPORT -outputfile ${oi}/COMMPORT.dat -oi ${oi} -pwd ${pwd}
rm -f APLPORTGROUP.dat; ${ACMS_HOME}/apex.sh Export APLPORTGROUP -outputfile ${oi}/APLPORTGROUP.dat -oi ${oi} -pwd ${pwd}
rm -f APLPORT.dat; ${ACMS_HOME}/apex.sh Export APLPORT -outputfile ${oi}/APLPORT.dat -oi ${oi} -pwd ${pwd}
rm -f WORKINGGROUP.dat; ${ACMS_HOME}/apex.sh Export WORKINGGROUP -outputfile ${oi}/WORKINGGROUP.dat -oi ${oi} -pwd ${pwd}
rm -f OPERATORGROUP.dat; ${ACMS_HOME}/apex.sh Export OPERATORGROUP -outputfile ${oi}/OPERATORGROUP.dat -oi ${oi} -pwd ${pwd}
rm -f OPERATOR.dat; ${ACMS_HOME}/apex.sh Export OPERATOR -outputfile ${oi}/OPERATOR.dat -oi ${oi} -pwd ${pwd}
rm -f HOLIDAYCALENDAR.dat; ${ACMS_HOME}/apex.sh Export HOLIDAYCALENDAR -outputfile ${oi}/HOLIDAYCALENDAR.dat -oi ${oi} -pwd ${pwd}
rm -f GLOBALMERGEPOINT.dat; ${ACMS_HOME}/apex.sh Export GLOBALMERGEPOINT -outputfile ${oi}/GLOBALMERGEPOINT.dat -oi ${oi} -pwd ${pwd}
rm -f ANYCONVDEFTEMPLATE.dat; ${ACMS_HOME}/apex.sh Export ANYCONVDEFTEMPLATE -outputfile ${oi}/ANYCONVDEFTEMPLATE.dat -oi ${oi} -pwd ${pwd}
rm -f SCHEDULE.dat; ${ACMS_HOME}/apex.sh Export SCHEDULE -outputfile ${oi}/SCHEDULE.dat -oi ${oi} -pwd ${pwd}
rm -f APPLICATION.dat; ${ACMS_HOME}/apex.sh Export APPLICATION -outputfile ${oi}/APPLICATION.dat -oi ${oi} -pwd ${pwd}
rm -f DETRADEACCOUNT.dat; ${ACMS_HOME}/apex.sh Export DETRADEACCOUNT -outputfile ${oi}/DETRADEACCOUNT.dat -oi ${oi} -pwd ${pwd}
rm -f FLOW.dat; ${ACMS_HOME}/apex.sh Export FLOW -outputfile ${oi}/FLOW.dat -oi ${oi} -pwd ${pwd}
rm -f LISTENER.dat; ${ACMS_HOME}/apex.sh Export LISTENER -outputfile ${oi}/LISTENER.dat -oi ${oi} -pwd ${pwd}
rm -f OUTBOUNDPOINT.dat; ${ACMS_HOME}/apex.sh Export OUTBOUNDPOINT -outputfile ${oi}/OUTBOUNDPOINT.dat -oi ${oi} -pwd ${pwd}
rm -f BSC.dat; ${ACMS_HOME}/apex.sh Export BSC -outputfile ${oi}/BSC.dat -oi ${oi} -pwd ${pwd}
rm -f PARTNER.dat; ${ACMS_HOME}/apex.sh Export PARTNER -outputfile ${oi}/PARTNER.dat -oi ${oi} -pwd ${pwd}
rm -f IDOC.dat; ${ACMS_HOME}/apex.sh Export IDOC -outputfile ${oi}/IDOC.dat -oi ${oi} -pwd ${pwd}
rm -f FILEMONITOR.dat; ${ACMS_HOME}/apex.sh Export FILEMONITOR -outputfile ${oi}/FILEMONITOR.dat -oi ${oi} -pwd ${pwd}
rm -f TENANT.dat; ${ACMS_HOME}/apex.sh Export TENANT -outputfile ${oi}/TENANT.dat -oi ${oi} -pwd ${pwd}
rm -f NODE.dat; ${ACMS_HOME}/apex.sh Export NODE -outputfile ${oi}/NODE.dat -oi ${oi} -pwd ${pwd}
rm -f STORE.dat; ${ACMS_HOME}/apex.sh Export STORE -outputfile ${oi}/STORE.dat -oi ${oi} -pwd ${pwd}
rm -f FILEDISTRIBUTION.dat; ${ACMS_HOME}/apex.sh Export FILEDISTRIBUTION -outputfile ${oi}/FILEDISTRIBUTION.dat -oi ${oi} -pwd ${pwd}
rm -f LOGOUTPUT.dat; ${ACMS_HOME}/apex.sh Export LOGOUTPUT -outputfile ${oi}/LOGOUTPUT.dat -oi ${oi} -pwd ${pwd}
rm -f COMMLOGOUTPUT.dat; ${ACMS_HOME}/apex.sh Export COMMLOGOUTPUT -outputfile ${oi}/COMMLOGOUTPUT.dat -oi ${oi} -pwd ${pwd}
rm -f LOGMAILOUTPUT.dat; ${ACMS_HOME}/apex.sh Export LOGMAILOUTPUT -outputfile ${oi}/LOGMAILOUTPUT.dat -oi ${oi} -pwd ${pwd}
rm -f MAILFORMAT.dat; ${ACMS_HOME}/apex.sh Export MAILFORMAT -outputfile ${oi}/MAILFORMAT.dat -oi ${oi} -pwd ${pwd}
rm -f JAWS.dat; ${ACMS_HOME}/apex.sh Export JAWS -outputfile ${oi}/JAWS.dat -oi ${oi} -pwd ${pwd}
rm -f JACS.dat; ${ACMS_HOME}/apex.sh Export JACS -outputfile ${oi}/JACS.dat -oi ${oi} -pwd ${pwd}
rm -f DTM.dat; ${ACMS_HOME}/apex.sh Export DTM -outputfile ${oi}/DTM.dat -oi ${oi} -pwd ${pwd}
rm -f RSNTFILETRANSFER.dat; ${ACMS_HOME}/apex.sh Export RSNTFILETRANSFER -outputfile ${oi}/RSNTFILETRANSFER.dat -oi ${oi} -pwd ${pwd}
rm -f APEXINTEGRATION.dat; ${ACMS_HOME}/apex.sh Export APEXINTEGRATION -outputfile ${oi}/APEXINTEGRATION.dat -oi ${oi} -pwd ${pwd}
rm -f MQCONNECT.dat; ${ACMS_HOME}/apex.sh Export MQCONNECT -outputfile ${oi}/MQCONNECT.dat -oi ${oi} -pwd ${pwd}
rm -f MQRECEIVE.dat; ${ACMS_HOME}/apex.sh Export MQRECEIVE -outputfile ${oi}/MQRECEIVE.dat -oi ${oi} -pwd ${pwd}
rm -f ZEDIBUSINESS.dat; ${ACMS_HOME}/apex.sh Export ZEDIBUSINESS -outputfile ${oi}/ZEDIBUSINESS.dat -oi ${oi} -pwd ${pwd}
rm -f ZEDIFINANCIAL.dat; ${ACMS_HOME}/apex.sh Export ZEDIFINANCIAL -outputfile ${oi}/ZEDIFINANCIAL.dat -oi ${oi} -pwd ${pwd}
#rm -f KEYPAIR.dat; ${ACMS_HOME}/apex.sh Export KEYPAIR -outputfile ${oi}/KEYPAIR.dat -oi ${oi} -pwd ${pwd}
#rm -f EECERTIFICATE.dat; ${ACMS_HOME}/apex.sh Export EECERTIFICATE -outputfile ${oi}/EECERTIFICATE.dat -oi ${oi} -pwd ${pwd}
