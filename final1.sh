#!/bin/bash

current_date=$(date '+%Y%m%d_%H%M%S')

expdp final1/final1@test101 schemas=final1 directory=data_pump_1 dumpfile=final_1_$current_date.dmp logfile=final_1_$current_date.log
