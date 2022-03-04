#!/usr/bin/sh

singularity exec /path/to/sif_file/aTRAM.sif python3 /aTRAM/atram.py -b /path/to/atram_lib/<prefix> -t /path/to/temp/ -Q /path/to/target/target.fasta -a <assembler of choice> -o /path/to/atram_out/

