# Nochi Kernel Project README Document

## 1. What is "Nochi Kernel Project"?
**Nochi Kernel Project** (abbreviation: **Nochi**), formerly named **OS x86 Build Project** (abbreviation: **OS x86**), is a 32-bit operating system kernel built by **Project Novalight**. The former name was retired because it could be easily confused with Apple's Mac OS X.

The name **Nochi** comes from the Slavic word for "night", symbolizing how the night sky carries many Nochi Kernel Project kernel distributions. This includes the **Novalight Operating System**, which is still in the conceptual stage.

## 2. What can it do right now?
- Boot via GNU GRUB with Multiboot 2 support
- Provides serial (UART) debug output via COM1
- Manage physical memory with a custom MAT32 bitmap allocator
- VBE framebuffer display (in progress)

## 3. How can I build it on my device?

Before building, you need to install these packages and ensure they meet the **most recommended version**:
- GNU GRUB Utilities (`grub-mkrescue`) ≥ 2.12
- NASM ≥ 2.16
- GNU C Compiler ≥ 14
- ld.bfd ≥ 2.44
- GNU Make ≥ 4.4
- QEMU i386 Emulator ≥ 10.0
(Older versions of the tool might work, but the developers do not have the energy to test them.)

On Debian/Ubuntu-based systems, you can install them with:

```bash
sudo apt install nasm gcc binutils grub-pc qemu-system-x86
```

> **Note:** `grub-pc` provides the necessary `grub-mkrescue` tool for building the bootable ISO. It does *not* modify your system's bootloader unless you explicitly run `grub-install`.

Clone or navigate to the project directory, then run:

```bash
make run
```

This will compile the kernel and launch it in the QEMU emulator, displaying the system window.

## 4. Who is behind this?
**Nochi Kernel Project** is developed by **Project Novalight**, an independent development group.

## 5. What license does it use?
**Apache License 2.0**. See [LICENSE.md](LICENSE.md) for details. Third-party components are listed in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

## 6. How can I contribute?
Not open for contributions yet. Project is in its early stages.
