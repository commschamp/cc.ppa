# CommsChampion Ecosystem APT Repository

This repository hosts the Debian/Ubuntu APT repository for CommsChampion Ecosystem packages.

The `master` branch contains repository management information.

The [ppa](https://github.com/commschamp/cc.ppa/tree/ppa) branch contains the actual deb packages which are serviced via github pages.

The packages are built by the [cc.cmake](https://github.com/commschamp/cc.cmake) project. As the result they are
date versioned rather than using the actual [semver](https://semver.org/) version of the original sources. It means
that a package upgrade does not necessarily mean the contents change. Please refer to the relevant
[release notes](https://github.com/commschamp/cc.cmake/releases) to verify what actual version of the package
contents is installed.

## Using the Repository

The repository is available at:

https://commschamp.github.io/cc.ppa/

Import the repository signing key:
```
sudo curl -o /etc/apt/keyrings/commschamp.asc https://commschamp.github.io/cc.ppa/commschamp.asc
```
Create `/etc/apt/sources.list.d/commschamp.list` and inside configure an APT source pointing to the appropriate Ubuntu distribution.
```
deb [signed-by=/etc/apt/keyrings/commschamp.asc] https://commschamp.github.io/cc.ppa/ <distro> main
```
For example for Ubuntu-24.04 (noble) use:
```
deb [signed-by=/etc/apt/keyrings/commschamp.asc] https://commschamp.github.io/cc.ppa/ noble main
```
Don't forget to run `sudo apt update` to be able to use new package.

## Supported Distributions:

- noble (Ubuntu-24.04)

## Available Packages

Alphabetically sorted.

- **cc-comms-dev** - [COMMS library](https://github.com/commschamp/comms)
- **cc-commsdsl-dev** - Development files for the CommsDSL [code generators](https://github.com/commschamp/commsdsl)
- **cc-commsdsl-utils** - Binary CommsDSL [code generators](https://github.com/commschamp/commsdsl).
- **cc-mqtt311-dev** - [MQTT v3.1.1 protocol definition library](https://github.com/commschamp/cc.mqtt311.generated/)
- **cc-mqtt311-client-bin** - Binary [MQTT v3.1.1 client applications](https://github.com/commschamp/cc.mqtt5.libs)
- **cc-mqtt311-client-dev** - Development files for the [MQTT v3.1.1 client library](https://github.com/commschamp/cc.mqtt311.libs)
- **cc-mqtt5-dev** - [MQTT v5 protocol definition library](https://github.com/commschamp/cc.mqtt5.generated/)
- **cc-mqtt5-client-bin** - Binary [MQTT v5 client applications](https://github.com/commschamp/cc.mqtt5.libs)
- **cc-mqtt5-client-dev** - Development files for the [MQTT v5 client library](https://github.com/commschamp/cc.mqtt5.libs)
- **cc-mqttsn-dev** - [MQTT-SN protocol definition library](https://github.com/commschamp/cc.mqttsn.generated/)
- **cc-mqttsn-client-bin** - Binary [MQTT-SN client applications](https://github.com/commschamp/cc.mqtt5.libs)
- **cc-mqttsn-client-dev** - Development files for the [MQTT-SN client library](https://github.com/commschamp/cc.mqttsn.libs)
- **cc-mqttsn-gateway-bin** - Binary [MQTT-SN gateway application](https://github.com/commschamp/cc.mqtt5.libs)
- **cc-mqttsn-gateway-dev** - Development files for the [MQTT-SN gateway library](https://github.com/commschamp/cc.mqttsn.libs)
- **cc-tools-qt-bin** - Binary [CommsChampion Tools applications](https://github.com/commschamp/cc_tools_qt/)
- **cc-tools-qt-dev** - Development files for the [CommsChampion Tools](https://github.com/commschamp/cc_tools_qt/)
- **cc-tools-qt-lib** - [CommsChampion Tools library](https://github.com/commschamp/cc_tools_qt/)
- **cc-tools-qt-plugins** - Various plugins for the [CommsChampion Tools](https://github.com/commschamp/cc_tools_qt/)
- **cc-ublox-dev** - [U-blox (UBX) protocol definition library](https://github.com/commschamp/cc.ublox.generated/)
- **cc-x509-dev** - [X509 certificate definition library](https://github.com/commschamp/cc.x509.generated/)
