# Slurm workflow

This example showcases how to run a workflow using Slurm jobs on NeSI.

It also pulls a docker container, so make sure to create a build directory and cache directory for Singularity:

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
module unload XALT

snakemake --profile nesi --config account=PROJECT_ID
```

*Note: If `account` is not specified, the workflow will crash.
If your workflow has a [configuration file](https://snakemake.readthedocs.io/en/stable/snakefiles/configuration.html), it can be defined there.*


## References

The status and sidecar scripts have been adapted from https://github.com/Snakemake-Profiles/slurm.
