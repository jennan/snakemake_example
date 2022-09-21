# Snakemake example

This repository contains example workflows for [Snakemake](https://snakemake.readthedocs.io/en/stable/).


## Usage on NeSI

Log in Mahuika, then load the Snakemake environment module:

```
module purge && module load snakemake/7.6.2-gimkl-2020a-Python-3.9.9
```

Then clone this repository:

```
git clone https://github.com/jennan/snakemake_example.git
```

Switch to the directory of the workflow of interest, for example `input_function`:

```
cd snakemake_example/input_function
```

Run the workflow with desired number of cores:

```
snakemake -c 1
```


## Example Workflows

The following examples are available:

- [input_function](input_function) showcases a workflow using an [input function](https://snakemake.readthedocs.io/en/stable/snakefiles/rules.html#input-functions).
- [checkpoint](checkpoint) illustrates a workflow using [checkpoints](https://snakemake.readthedocs.io/en/stable/snakefiles/rules.html#data-dependent-conditional-execution) for data-dependent workflows.
