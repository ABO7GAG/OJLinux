# OJLinux

**OJLinux (OJL)** is an independent Linux distribution project focused on
building a minimal, understandable, and user-controlled Linux foundation.

> It boots. It's your problem now.

## Project status

OJLinux is in early development. The cross-toolchain and system foundation
are under construction. It is not yet a bootable, general-purpose operating
system.

Interfaces, build procedures, and project structure may change.

## Philosophy

- Keep the base system minimal.
- Make system behavior explicit and understandable.
- Keep optional functionality under the user's control.
- Document the build process and system architecture.
- Work toward a reproducible and self-hosted build environment.

## Planned components

- Linux kernel and bootable base system
- Minimal userland and BusyBox-based recovery environment
- OJinit, the planned init system
- ext4 as the primary filesystem
- Build and package management tools

These are project goals, not claims that the components are already complete.

## Building

Build instructions are being developed alongside the toolchain and system
foundation. Do not assume that the current tree can produce a bootable image.

## License

OJLinux is intended to be distributed under the GNU General Public License
version 3 or any later version. See [LICENSE](LICENSE) for the license text.

## Maintainer

Created by [ABO-7GAG](https://github.com/ABO7GAG).
