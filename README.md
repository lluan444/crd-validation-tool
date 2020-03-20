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

Run:

```
curl -sL 'https://raw.githubusercontent.com/lluan444/crd-validation-tool/master/hack/install.sh' | bash 
```
This will install the CRD validation extention to your VS Code under the directory of `~/.vscode/extentions/crd-validation-tool-xxx`.

You will need to restart VS Code to activate the extension.

## Configure Extension Settings

Open VS Code settings.json.
`File -> Preferences -> Settings -> Extensions -> Scroll down and find "Edit in settings.json"`

Add the following entry to asociates the CRD schemas from this extension with the applicable yaml files in a glob pattern. Then Save the change.

```
    "yaml.schemas": {
        "file:///<path of schemas json file>": ["<yaml files glob pattern>"]
    }
```
    * `<path of schemas json file>` of this extension is `<home_directory>/.vscode/extensions/crd-validation-tool-0.0.1/schemas/crd-definitions.json`. 
    * The `<yaml files glob pattern>` could be `*.eventing.yaml`, `*.iter8.yaml`, etc. An example is shown below.

    ```
    "yaml.schemas": {
        "file:///<user home directory>/.vscode/extensions/crd-validation-tool-0.0.1/schemas/crd-definitions.json": ["*.eventing.yaml", "*.iter8.yaml"]
    }
    ```
## Try It

You can try it out by creating a yaml file named e.g. test.eventing.yaml. Pressing Ctl + Space keys willshow pop-up menu for templates and suggestions.

## Uninstall

ToDo
