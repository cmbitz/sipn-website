#!/bin/bash

findit=`grep BSS_by_lead_time Evaluation.html`
lookfor='png?'
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
sed -i "s/${numtoreplace}/${numtouse}/" index.html


