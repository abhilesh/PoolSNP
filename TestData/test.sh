#!/bin/sh

#  test.sh
#
#
#  Created by Martin Kapun on 16.04.21.
#

## Run Test dataset to test functionality of PoolSNP

# copy test dataset to custom path (replace <path> with path to your working directory)

mkdir <path>/test_PoolSNP
cp -r <path>/GitHub/PoolSNP/TestData /Users/martinkapun/test_PoolSNP

# run test dataset

bash <path>/GitHub/PoolSNP/PoolSNP.sh   \
mpileup=<path>/test_PoolSNP/TestData/test.mpileup \
reference=<path>/test_PoolSNP/TestData/test.fa \
names=Sample1,Sample2 \
max-cov=0.7 \
min-cov=4 \
min-count=4 \
min-freq=0.01 \
miss-frac=0.5 \
jobs=4 \
BS=1 \
output=<path>/test_PoolSNP/test
