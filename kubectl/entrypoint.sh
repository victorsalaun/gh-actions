#!/usr/bin/env bash

set -e
set -o pipefail

sh -c "kubectl $1"
