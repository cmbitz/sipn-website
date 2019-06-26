#!/bin/bash

findit=`grep panArcticSIC_SIC_anomaly index.html`
lookfor='png?'
strindex() {
    x="${1%%$2*}"
    [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
nquest=`strindex "$findit" "$lookfor"`
nstart=$((nquest + 4))
numtoreplace=${findit:${nstart}:5}
numtouse=$((10000+RANDOM))

#echo ${numtoreplace}
#echo ${numtouse}
sed -i "s/${numtoreplace}/${numtouse}/" index.html

######

findit=`grep PanArctic_extent_forecast_raw_predicted regionalextent.html`
lookfor='png?'
strindex() {
    x="${1%%$2*}"
    [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
nquest=`strindex "$findit" "$lookfor"`
nstart=$((nquest + 4))
numtoreplace=${findit:${nstart}:5}
numtouse=$((10000+RANDOM))

#echo ${numtoreplace}
#echo ${numtouse}
sed -i "s/${numtoreplace}/${numtouse}/" regionalextent.html

######

findit=`grep NSIDC_0081_IFD IFD_IAD.html`
lookfor='png?'
strindex() {
    x="${1%%$2*}"
    [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
nquest=`strindex "$findit" "$lookfor"`
nstart=$((nquest + 4))
numtoreplace=${findit:${nstart}:5}
numtouse=$((10000+RANDOM))

#echo ${numtoreplace}
#echo ${numtouse}
sed -i "s/${numtoreplace}/${numtouse}/" IFD_IAD.html

#####

findit=`grep panArcticSIC_SIC_anomaly observations.html`
lookfor='png?'
strindex() {
    x="${1%%$2*}"
    [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
nquest=`strindex "$findit" "$lookfor"`
nstart=$((nquest + 4))
numtoreplace=${findit:${nstart}:5}
numtouse=$((10000+RANDOM))

#echo ${numtoreplace}
#echo ${numtouse}
sed -i "s/${numtoreplace}/${numtouse}/" observations.html

######

findit=`grep BSS_by_lead_time_PanArctic Evaluation.html`
lookfor='png?'
strindex() {
    x="${1%%$2*}"
    [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
nquest=`strindex "$findit" "$lookfor"`
nstart=$((nquest + 4))
numtoreplace=${findit:${nstart}:5}
numtouse=$((10000+RANDOM))

#echo ${numtoreplace}
#echo ${numtouse}
sed -i "s/${numtoreplace}/${numtouse}/" Evaluation.html

######

FILES=`ls ./figures/model/all_model/sic/*timeseries/*html`
numtouse=$((10000+RANDOM))   
for f in $FILES
do
    echo "processing $f"
    findit=`grep .png? $f`
    echo $findit

    lookfor='png?'
    strindex() {
	x="${1%%$2*}"
	[[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
    }
    nquest=`strindex "$findit" "$lookfor"`
    nstart=$((nquest + 4))
    numtoreplace=${findit:${nstart}:5}
#    numtouse=$((10000+RANDOM))
    echo $numtoreplace
    echo ${numtouse}
    sed -i "s/${numtoreplace}/${numtouse}/" $f
    echo "+++++++++++"
done


######

findit=`grep document.image1.src panarcticmaps.html`
lookfor='t+"?'
strindex() {
    x="${1%%$2*}"
    [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}
nquest=`strindex "$findit" "$lookfor"`
nstart=$((nquest + 4))
numtoreplace=${findit:${nstart}:5}
numtouse=$((10000+RANDOM))

echo ${numtoreplace}
echo ${numtouse}
sed -i "s/${numtoreplace}/${numtouse}/" panarcticmaps.html







