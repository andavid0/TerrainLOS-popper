
import subprocess

acvs = ["10", "20", "30", "40", "50", "60", "70", "80", "90", "100"]

# i = 0
# for data in acvs:
	# #print("docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 calc_experimental_connectivity.py 628 " + data  + " /root/contiki 30 >> log_1_pop.txt")

	# print("Running experimental protocol at acv: " + data)
	# print("docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 calc_experimental_connectivity.py 628 " + data  + " /root/contiki 30 >> pop_" + str(i) + "_.txt")
	# #subprocess.call("docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 calc_experimental_connectivity.py 628 " + data  + " /root/contiki 30 >> log_1_pop.txt", shell=True)

#i = [0, 1, 2, 3, 4 , 5, 6, 7, 8, 9]
# while i != None:
#k = 0
#for data in range(len(i)):
#	for interval in i:
#		print(acvs[data], str(interval))
#		#subprocess.call("docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 calc_experimental_connectivity.py 628 " + acvs[data]  + " /root/contiki 30 >> " + acvs[data] + "_" + str(k) + "_pop.txt", shell=True)
#		print("docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 calc_experimental_connectivity.py 628 " + acvs[data]  + " /root/contiki 30 >> " + acvs[data] + "_" + str(k) + "_pop.txt")
#		k += 1
	# print(acvs[data], [k for k in i])

	
for data in range(0, 10):
	print(acvs[data], 80)
	#subprocess.call("docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 calc_experimental_connectivity.py 628 " + acvs[data]  + " /root/contiki 80 >> " + acvs[data] + "_pop80.txt", shell=True)
	subprocess.call("docker run --rm -v $PWD:/experiment --workdir=/experiment/Connectivity --entrypoint=python -e PYTHONUNBUFFERED=1 cooja:2.7 calc_experimental_connectivity.py 628 " + acvs[data]  + " /root/contiki 30 >> simulation_output/" + acvs[data] + "_pop_30.txt", shell=True)
	
