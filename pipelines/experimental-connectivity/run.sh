#!/bin/bash
# [wf] series of steps required to execute the pipeline.
# This file should contain the series of steps that are required to execute
# the pipeline. Any non-zero exit code will be interpreted as a failure
# by the 'popper check' command

#script that runs calc_experimental_connectivity.py in the Contiki/Cooja environment
python run_connectivity_popper.py
