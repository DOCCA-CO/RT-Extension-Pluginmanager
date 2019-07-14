# RT-Extension-Pluginmanager

RT-Extension-Pluginmanager is a RT plugin for managing - activate/deactivate plugins.
Also it will have a marketlace function. It means, you can download and install plugins from "maketplace"

## Installation

Just simply clone this plugin to /opt/rt4/local/plugins

```bash
https://github.com/docca/RT-Extension-Pluginmanager.git
```

## Usage

You will need to create two **Queues**: *_Pluginmanager* and *_Marketplace*. Also you will need some **CustomFields**: 
* _mp_PluginName, _mp_RestartDate for *_Marketplace* 
* _pm_OffDate, _pm_OnDate, _pm_PlannedOffDate, _pm_PlannedOnDate, _pm_PluginName,  _pm_PluginStatus for *_Pluginmanager*.

## Warnings
Use this plugin at Your own risk.

## TODO

* Try module https://metacpan.org/release/Module-Install-RTx
* Automate the creation of Queues and Customfields.
