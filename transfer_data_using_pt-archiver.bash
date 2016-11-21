#!/bin/bash

cmd="sudo pt-archiver --source h=localhost,D=test_faiz,t=z_312 \
    -u root -p'infostorage' \
    --dest h=localhost,D=test_faiz,t=Archives \
    --file '/home/ubuntu/sample_msql_data/%Y-%m-%d-%D.%t' \
    --where "1=1" --statistics --ignore"

eval $cmd
retcode=$?
if [ $retcode -ne 0 ]; then
    echo Failed.
else
    echo Success.
fi
