# OJLinux Roadmap

**Project:** OJLinux (OJL)
**Creator:** ABO-7GAG
**Status:** Early development
**Goal:** A minimal, user-controlled Linux operating system.

## Phase 1 — Cross-Toolchain

* [x] Build Binutils.
* [x] Install Linux UAPI headers.
* [x] Build GCC Stage 1.
* [x] Build and install glibc.
* [x] Install libgcc.
* [x] Complete the final GCC build.
* [x] Verify C and C++ compilation against the target sysroot.

## Phase 2 — Base Userland

* [x] Build the required base utilities.
* [x] Establish the target filesystem hierarchy.
* [x] Create the initial root filesystem.
* [x] Define the base system configuration.

## Phase 3 — Bootable System

* [x] Build the Linux kernel.
* [ ] Create a minimal initramfs and recovery environment.
* [ ] Implement OJinit as PID 1.
* [ ] Mount the root filesystem and switch to the real root.
* [ ] Reach a working login prompt and shell.

## Phase 4 — Package Management

* [ ] Define the package format and metadata.
* [ ] Implement the initial ojpkg workflow.
* [ ] Establish package repositories and signing requirements.

## Phase 5 — Developer Tools

* [ ] Develop ojbuild.
* [ ] Develop ojrepo.
* [ ] Document reproducible build procedures.

## Phase 6 — Testing and Release

* [ ] Test booting in a virtual machine where supported.
* [ ] Test installation, recovery, and system upgrades.
* [ ] Publish reproducible build instructions.
* [ ] Prepare the first experimental release.

## Project Principle

"It boots. It's your problem now."

The roadmap describes intended milestones. A checkbox means a task has been completed and verified, not merely planned.

