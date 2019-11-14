#!/usr/bin/env bash

set -e
set -o pipefail

kubectl "$1"
