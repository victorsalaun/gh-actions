#!/usr/bin/env bash

set -e
set -o pipefail

if [[ -z "$INPUT_SUBCOMMAND" ]]
  then
    echo "No kubectl subcommand supplied"
    exit 1
fi

kubectl $INPUT_SUBCOMMAND
