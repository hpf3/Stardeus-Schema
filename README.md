# Stardeus Schema

This repository contains unofficial, community-maintained JSON schema definitions for validating and developing mods for *Stardeus*.
last edited for game version 0.11.18
> **⚠️ Warning**: These schemas are community-developed and may not cover all edge cases or be fully comprehensive. They are designed to help catch basic errors but do not ensure that your mod will function correctly.

only the device and research schemas are currently done

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Contributing](#contributing)

## Introduction

This repository provides JSON schema definitions designed to assist in the validation and development of mods for *Stardeus*. These schemas are unofficial and maintained by the community.

## Getting Started

To start using the JSON schemas in this repository, follow these steps:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/hpf3/Stardeus-Schema.git
    ```
2. **Navigate to the project directory**:
    ```sh
    cd Stardeus-Schema
    ```
3. **Open the project in Visual Studio Code**:
    ```sh
    code Stardeus-Schema.code-workspace
    ```
4. **Add your mod's folder to the workspace**:
    - From the top menu, click `File` → `Add Folder to Workspace...`
    - In the dialog, navigate to and select your mod's folder, then click `Add`.

You can use Visual Studio Code's built-in JSON validator to validate your mod files against the schemas in this repository.

Alternatively, you can add the following to your `.code-workspace` file:
```json
	"settings": {
		"json.validate.enable":true,
		"json.schemaDownload.enable": true,
		"json.schemas": [
			{
				"fileMatch": [
					"Definitions/Objects/Devices/*.json"
				],
				"url": "https://raw.githubusercontent.com/hpf3/Stardeus-Schema/stable-web/schema/Obj-Devices.schema.json"
			},
			{
				"fileMatch": [
					"Definitions/Research/*/*.json"
				],
				"url": "https://raw.githubusercontent.com/hpf3/Stardeus-Schema/stable-web/schema/research.schema.json"
			}
		],
	}
```

## Contributing

Contributions are welcome! To contribute:

1. Fork this repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes with clear, descriptive commit messages.
4. Push your changes to your fork.
5. Open a pull request, detailing your changes and their purpose.