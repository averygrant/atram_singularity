# atram_singularity

Creating a singularity container for aTRAM and assemblers

Assemblers include: abyss, trinity, spades, and velvet

More information about aTRAM can found: https://github.com/juliema/aTRAM


# Set up inside container

```
cd ../aTRAM
mkdir temp
mkdir atram_out
cd atram_out
mkdir test
cd ../
mkdir atram_lib
cd /aTRAM/doc/data
gunzip tutorial_end_1.fasta.gz
gunzip tutorial_end_2.fasta.gz
cd ../..
```

Enter the virtual environment
```
source venv/bin/activate
```

Install biopython and psutil
```
pip install biopython psutil
```

Copy over/edit run_preprocessor.sh and run_atram.sh.

Run preprocessor first to create library and atram second.
