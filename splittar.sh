#!/bin/bash

# USAGE
# cd to the dir
# bash splitcsv.sh
# if errors check file permissions on output.
# TODO: get the permisisons thing to work automatically.
# delete files in output before we start.

# create a directory to store the output:
mkdir output

# split the content file into multiple files of 5 lines each:
split -l 700 source.csv output/data_

# loop through the new split files, adding the header
# and a '.csv' extension:
for f in output/*; do cat $f > $f.csv; rm $f; done;
