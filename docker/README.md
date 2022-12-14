# Docker workflow

This example showcases how to pull a docker container and use it as part of a Snakemake workflow.

To run it on NeSI, make sure to create a build directory and cache directory for Singularity:

```
export SINGULARITY_CACHEDIR=/nesi/nobackup/PROJECT_ID/singularity_cache
export SINGULARITY_TMPDIR=/nesi/nobackup/PROJECT_ID/singularity_tmpdir
mkdir -p "$SINGULARITY_CACHEDIR" "$SINGULARITY_TMPDIR"
setfacl -b "$SINGULARITY_TMPDIR"  # remove ACLs that could cause issues when building
```

where `PROJECT_ID` is your NeSI project ID.

Then load the environment modules and run the workflow as follows:

```
module purge
module load snakemake/7.6.2-gimkl-2020a-Python-3.9.9 Singularity/3.10.0
snakemake -c 1 --use-singularity
```
