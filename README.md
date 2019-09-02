# RT-Extension-Pluginmanager

RT-Extension-Pluginmanager is a RT plugin for managing - activate/deactivate plugins.
Also it will have a marketlace function. It means, you can download and install plugins from "maketplace"

## Features

- [x] Activate/deactivate installed plugins
- [x] Installing plugins from DOCCA's marketlace
- [x] Installing plugins from www.cpan.org
- [x] Using JSON catalogue
- [x] Interface powered with jQuery and DataTables

## Installation

Just simply clone this plugin to /opt/rt4/local/plugins

```bash
git clone https://github.com/docca/RT-Extension-Pluginmanager.git
```

You will need to create a **Queue**: *_Pluginmanager*. Also you will need some **CustomFields**: 

- _mp_PluginName, _mp_RestartDate, _mp_LinkToDownload
- _pm_OffDate, _pm_OnDate, _pm_PlannedOffDate, _pm_PlannedOnDate, _pm_PluginName,  _pm_PluginStatus

All data placed to initial data file in `/opt/rt4/local/plugins/RT-Extension-Pluginmanager/etc/initialdata`

You just need to import it :) 

## Usage
You can use this plugin to install plugins from "Marketplace", activate it. Also You can activate or deactivate already installed plugins. After that (first run) you have to click on `(Re)Scan` button to make set of tickets with info of installed plugins.
Note: you cannot manage plugins, if config files for activation are not in `/opt/rt4/etc/RT-SiteConfig.d` and not refer to plugin filename convention. 

Also you will need to configure some tasks in cron
```
*/2 * * * * /opt/rt4/local/plugins/RT-Extension-Pluginmanager/bin/rt-pm-cli
*/11 * * * * /opt/rt4/local/plugins/RT-Extension-Pluginmanager/bin/rt-marketplace
```

Also you will need to configure some tasks in cron
```
*/11 * * * * /opt/rt4/local/plugins/RT-Extension-Pluginmanager/bin/rt-pm-cli
*/20 * * * * /opt/rt4/local/plugins/RT-Extension-Pluginmanager/bin/rt-marketplace
* 23 * * * /opt/rt4/local/plugins/RT-Extension-Pluginmanager/bin/rt-restart-apache.sh
```

## Warnings
Use this plugin at Your own risk.


## TODO

- [x] manage installed plugins configs, if any exist.