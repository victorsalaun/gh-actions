# GitHub Actions

## Usage

### tfsec

`````yaml
name: terraform
on:
  - pull_request
  - push
jobs:
  tfsec:
    name: terraform tfsec
    runs-on: ubuntu-latest
    steps:
    - name: 'Checkout'
      uses: actions/checkout@master
    - name: 'tfsec'
      uses: victorsalaun/gh-actions/tfsec@master
      with:
        args: terraform/layers
`````
