# OJLinux — Command Reference

This document describes the command-line utilities currently available in the OJLinux root filesystem.

## Current Status

| Component                                    | Current Status   |
| -------------------------------------------- | ---------------- |
| BusyBox                                      | 1.38.0           |
| Supported BusyBox applets                    | 407              |
| Total symbolic links in `rootfs`             | 407              |
| Essential commands checked for executability | 10               |
| Native OJLinux utilities                     | OJinit prototype |

These figures describe the current development build and may change as the system evolves.

## 1. BusyBox

OJLinux currently uses BusyBox as its primary collection of command-line utilities.

BusyBox combines many Unix utilities into a single executable. The same binary can provide different commands depending on the name used to invoke it.

For example:

* `ls` — list directory contents.
* `cat` — display file contents.
* `grep` — search text.
* `mount` — mount filesystems.
* `cp` — copy files.
* `mv` — move or rename files.
* `sh` — provide a command-line shell.
* `vi` — provide a text editor.
* `ps` — display running processes.
* `wget` — retrieve files over HTTP and other supported protocols.

The availability and functionality of individual applets depend on the BusyBox build configuration and runtime environment.

## 2. Command Locations

BusyBox applet links are organized across the root filesystem using conventional Linux directory layouts.

| Directory   | Typical Contents                         |
| ----------- | ---------------------------------------- |
| `/bin`      | Essential commands and shells            |
| `/sbin`     | System administration and boot utilities |
| `/usr/bin`  | General-purpose user utilities           |
| `/usr/sbin` | Additional administrative utilities      |

Most of these entries are symbolic links to the BusyBox executable rather than separate program binaries.

## 3. Native OJLinux Components

### OJinit

OJinit is an OJLinux-native init-system prototype.

Its current implementation mounts basic virtual filesystems and starts a shell as a child process. It is still under development and is not yet a complete production init system.

## 4. Inspecting Available Commands

Run these commands from the OJLinux source directory to inspect the current build.

Count supported BusyBox applets:

```sh
sources/busybox-1.38.0/busybox --list | wc -l
```

List supported applets:

```sh
sources/busybox-1.38.0/busybox --list | sort
```

Count all symbolic links in the root filesystem:

```sh
find rootfs -type l | wc -l
```

List executable regular files in the main binary directories:

```sh
find rootfs/bin rootfs/sbin rootfs/usr/bin rootfs/usr/sbin \
    -maxdepth 1 -type f -executable -print 2>/dev/null
```

These measurements are different: supported applets, symbolic links, and independent executable files are not interchangeable counts.

## 5. Limitations

* A supported applet is not necessarily tested in every operating condition.
* A symbolic link does not guarantee that a command can complete its intended task.
* Some utilities require kernel features, device nodes, configuration files, libraries, or other runtime dependencies.
* BusyBox compatibility with a command name does not imply full compatibility with a separate implementation of that utility.
* The presence of commands such as `dpkg` or `rpm` does not establish full compatibility with Debian or RPM package ecosystems.
* OJLinux does not yet have a completed native package manager or package repository.

## 6. Development Direction

The command environment will evolve alongside the OJLinux base system.

Planned work includes:

* Completing the permanent ext4 root filesystem and boot process.
* Improving OJinit and system startup.
* Developing `ojpkg` and the OJLinux package repository.
* Expanding native utilities where they provide value beyond BusyBox.

This document describes the current development state, not a promise of complete compatibility or production readiness.

