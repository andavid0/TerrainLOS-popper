"""
Title:
Author:
Description:
"""

import subprocess
# 
population = ["1"]
acvs = ["10", "30", "50"]

# 
for pop in population:
	for acv in acvs:
		print(pop, acv)
		subprocess.call("docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 calc_experimental_connectivity.py 628 " + acv  + " /root/contiki " + pop + " >> sim1_output/" + "pop_" + pop + "_log.txt", shell=True)