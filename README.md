# GitHub Actions

## Usage

```yaml
name: 'GitHub Actions'
on:
  - pull_request
  - push
jobs:
  samples:
    name: 'Actions'
    runs-on: ubuntu-latest
    steps:
      - name: 'Checkout'
        uses: actions/checkout@master
      - name: 'Kubectl command'
        uses: victorsalaun/gh-actions@master
        with:
          command: 'kubectl version'
      - name: 'Helm command'
        uses: victorsalaun/gh-actions@master
        with:
          command: 'helm version'
      - name: 'Yamllint command'
        uses: victorsalaun/gh-actions@master
        with:
          command: 'yamllint --version'
```
