#!/usr/bin/sh

singularity exec /path/to/sif_file/aTRAM_test.sif python3 /aTRAM/atram_preprocessor.py --end-1 /path/to/read1/data/R1pair.trim.fastq --end-2 /path/to/read2/data/R2pair.trim.fastq -b /paht/to/atram_lib/<prefix_for_files> -t /path/to/temp
