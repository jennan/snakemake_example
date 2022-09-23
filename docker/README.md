# Docker workflow

This example showcases how to pull a docker container and use it as part of a Snakemake workflow.

On NeSI, run it in a Slurm job the first time, while `singularity` caches the container images.

```
module purge
module load snakemake/7.14.0-gimkl-2020a-Python-3.9.9 Singularity/3.10.0
module unload XALT

export SINGULARITY_CACHEDIR=/nesi/nobackup/PROJECT_ID/singularity_cache
mkdir -p "$SINGULARITY_CACHEDIR"

srun --time 0-01:00:00 --mem 20GB --cpus-per-task 2 snakemake -c 1 --use-singularity
```

where `PROJECT_ID` is your NeSI project ID.

Subsequent runs can (but don't have to) be in a Slurm job.
