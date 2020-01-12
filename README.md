# kvm-cli-manager (kvmgr)

A tool to manage you KVM from cli (using virsh)

## How to install?

```bash
chmod +x install.sh
sudo ./install
```

OR

```bash
sudo bash install.sh
```

After  the installation you can start using kvm cli manager using the command `kvmgr`

## Configuring a VM with kvmgr

1. If you have not configured any vm's just run
```bash
kvmgr
```

which will ask you for configuring a vm.

2. Direct vm config

```bash
kvmgr -c
```
which will guide you through the configuration.

## Using KVM Manager

### 1. Starting a vm from cli

```bash
kvmgr --start <name of vm>
```
OR
```bash
kvmgr -s <name of vm>
```

### 2. Stopping a vm from cli
```
kvmgr --stop <name of vm>
```
OR
```
kvmgr -x <name of vm>
```

### 3. Taking snapshot of a vm
```
kvmgr --snapshot <name of vm>
```
OR
```
kvmgr -ss <name of vm>
```

### 4. Restoring a VM's snapshot

If you have specified a base snapshot, that snapshot will be used to restore or you will be prompted to a list of available snapshots for restoring.

```
kvmgr --reset <name of vm>
```
OR
```
kvmgr -r <name of vm>
```

## Advanced options

You can find advanced options in the menu. To access the menu just enter `kvmgr` and the menu will be displayed.

# Got questions? Have sugesstions?

Always here to hear it :smile: [Contact Me](mailto:amaljohnronkha@protonmail.com)




