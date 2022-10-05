## Conda workflow

This example shows how to use a conda environment in a Snakemake workflow.

To run it on NeSI, make sure to specify the right conda frontend as follows:

```
module purge
module load snakemake/7.6.2-gimkl-2020a-Python-3.9.9 Miniconda3/4.12.0
snakemake -c 1 --use-conda --conda-frontend conda
```
