#!/bin/bash
# [wf] series of steps required to execute the pipeline.
# This file should contain the series of steps that are required to execute
# the pipeline. Any non-zero exit code will be interpreted as a failure
# by the 'popper check' command.
set -e

# add commands here:

docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ../experimental_output/pop_1_log.txt ../experimental_output/pop_10_log.txt ../experimental_output/pop_30_log.txt ../experimental_output/pop_80_log.txt
  



exit 0
