#!/bin/bash
# [wf] series of steps required to execute the pipeline.
# This file should contain the series of steps that are required to execute
# the pipeline. Any non-zero exit code will be interpreted as a failure
# by the 'popper check' command.
set -e

#pushd
#docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_1_log.txt

#mv test1.png 1.png
#docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_10_log.txt
#mv test1.png 10.png

#docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_30_log.txt
#mv test1.png 30.png
#docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_40_log.txt
#docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_50_log.txt
#docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_80_log.txt
#mv test1.png 80.png

#popd

# add commands here:

docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 graph_max_density_connectivity.py ec_1_log.txt ec_10_log.txt
  



exit 0
