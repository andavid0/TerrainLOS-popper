#!/bin/bash
# [wf] series of steps required to execute the pipeline.
# This file should contain the series of steps that are required to execute
# the pipeline. Any non-zero exit code will be interpreted as a failure
# by the 'popper check' command
acvs='10 20 30 40 50 60 70 80 90 100'
pops='1'

for acv in $acvs; do
  for pop in $pops; do
    docker run --rm \
      -v `pwd`:/experiment \
      --workdir=/experiment/Connectivity
      --entrypoint=python
      sbungartz/cooja
        calc_experimental_connectivity.py 628 $acv /home/cooja/contiki/ $pop
  done
done
