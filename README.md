# CommsChampion Ecosystem APT Repository

This repository hosts the Debian/Ubuntu APT repository for CommsChampion Ecosystem
packages.

The `master` branch contains repository management information.

The `ppa` branch contains the actual deb packages and serviced via github pages.

## Using the repository

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

Currently supported distributions:

- noble (Ubuntu-24.04)

