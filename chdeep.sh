#!/bin/bash

FILES=`ls figures/model/all_model/sic/*timeseries/*html`
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
