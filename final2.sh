#!/bin/bash

current_date=$(date '+%Y%m%d_%H%M%S')

expdp final2/final2@mkdb schemas=final2 directory=data_pump_2 dumpfile=final_2_$current_date.dmp logfile=final_2_$current_date.log
