# A VS Code Extension for K8s CRD Validation

This extension provides templates and validation capabilities for kubernetes CRDs to help developers easily create and debug CR yaml files in IDE.

## Features

    * CRD templates
    * CRD validation
    * CRD schema content updates (ToDo)
    * Cross CR dependency check (ToDo)

## Requirements

This extension requires YAML Language Spoort extension by RedHat.

You may also install Microsoft Kubernetes Tools extension if you need to edit Kubernetes core resources. 

## Release Notes

### 0.0.1

Initial release including support for the following:
    * Knative Eventing CRDs (samples of those having schema defined in CRD yaml)
    * iter8 CRD
    * YAML templates for supported CRD

## Install

You need the github.ibm.com token to access the repository, please [get your github token](https://github.ibm.com/settings/tokens) and set it in `IBM_GITHUB_TOKEN`. Then, run:

```
curl -sL 'https://${IBM_GITHUB_TOKEN}@raw.github.ibm.com/seed/crd-validation-tool/master/hack/install.sh' | bash 
```
This will install the CRD validation extention to your VS Code under the directory of `~/.vscode/extentions/crd-validation-tool-xxx`.

You will need to restart VS Code to activate the extension.

## Configure Extension Settings

ToDo

## Uninstall

ToDo
