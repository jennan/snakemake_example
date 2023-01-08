# Slurm workflow (synchronised version)

This example showcases how to run a workflow using Slurm jobs on NeSI, using the `cluster-sync` option.

Load the environment modules and run the workflow as follows:

```
module purge
module load snakemake/7.19.1-gimkl-2022a-Python-3.10.5
snakemake --profile nesi --config account=PROJECT_ID
```

where `PROJECT_ID` is your NeSI project ID.

*Note: If `account` is not specified, the workflow will crash.*
