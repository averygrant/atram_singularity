# atram_singularity

Singularity container for aTRAM and assemblers

Assemblers include: abyss, trinity, spades, and velvet

More information about aTRAM can found: https://github.com/juliema/aTRAM


# Set up on host

To bind data and output directories to the container make the following directories:

```
mkdir atram_lib
mkdir atram_out
mkdir temp
mkdir data
```
Add your raw data and query files to the data directory and libraries to the atram_lib directory. You can separate raw data and query files if you'd like (e.g. add query files to 'target' directory). You may put your data in different directory names but you will need to make sure the pathing is correct in future steps.

# Bind paths

This step will bind paths on your host system to paths in the container. The path before the colon is the host path and the one after the colon is the container path. Edit the host paths in the line below.

```
export SINGULARITY_BIND="/host/path/to/temp:/aTRAM/temp,/host/path/to/atram_out:/aTRAM/atram_out,/host/path/to/atram_lib:/aTRAM/atram_lib,/host/path/to/data:/aTRAM/data"
```

# Run atram

Edit run_preprocessor.sh and run_atram.sh to contain the appropriate paths in the container. Since you bound the host directories to the container directories previously, the container will be able to find your data and write output to the host directory specified. 

```
cat run_preprocessor.sh | singularity exec atram_singularity.sif /usr/bin/bash
cat run_atram.sh | singularity exec atram_singularity.sif /usr/bin/bash
```

