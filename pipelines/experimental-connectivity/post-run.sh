#!/bin/bash
# [wf] series of steps required to execute the pipeline.
# This file should contain the series of steps that are required to execute
# the pipeline. Any non-zero exit code will be interpreted as a failure
# by the 'popper check' command.
set -e

pushd
docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_1_log.txt

docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYT
HONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_20_log.txt
mv test.png 1.png

popd

# add commands here:

exit 0
