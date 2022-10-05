# Restart workflow

This example illustrates how to restart a rule which has failed.

The failing rule will stop after its step 3, then the workflow will identify what was the last step and restart the computation from at 4.

Make sure to provide a maximum amount of attempts using the `-T` option:

```
snakemake -c 1 -p -T 2
```

Check the rule shell command to see that it is restarting from the right step.

*Note: in more recent versions of Snakemake, retries can be specified per rule in the `Snakefile`.*