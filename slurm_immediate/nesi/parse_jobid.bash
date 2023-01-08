#!/bin/bash
if [[ ! -z "$@" ]]; then
    echo -n "--dependency=aftercorr:$(tr " " : <<< $@)"
fi
