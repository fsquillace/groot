GRoot
======
I am GRoot! Yet another enhanced chroot command with mounting capabilities.

**Table of Contents**
- [Description](#description)
- [Quickstart](#quickstart)
- [Installation](#installation)
- [Contributing](#contributing)
- [Donating](#donating)
- [Authors](#authors)

Description
===========
GRoot is a simplified and portable version of
[arch-chroot](https://wiki.archlinux.org/index.php/Chroot#Using_arch-chroot).
Before it runs `chroot`, the script allows to mount api filesystems like `/proc`
and makes them available from the chroot.
It automatically detects how to mount special directories like `/proc/`,
`/dev`, `/sys`, `/run` and `/tmp`.

Quickstart
==========

```sh
groot -b /dev -b /proc -b /run -b /sys -b /tmp /new-root-dir bash
```

Installation
============
Just clone the GRoot repo somewhere (for example in ~/.local/share/groot):

    git clone git://github.com/fsquillace/groot ~/.local/share/groot
    export PATH=~/.local/share/groot/bin:$PATH

Contributing
============
Contributions are welcome! You could help improving GRoot in the following ways:

- [Reporting Bugs](CONTRIBUTING.md#reporting-bugs)
- [Suggesting Enhancements](CONTRIBUTING.md#suggesting-enhancements)
- [Writing Code](CONTRIBUTING.md#your-first-code-contribution)

Donating
========
To sustain the project please consider funding by donations through
the [GitHub Sponsors page](https://github.com/sponsors/fsquillace/).

Authors
=======
GRoot was originally created in late 2014 by [Filippo Squillace (feel.sqoox@gmail.com)](https://github.com/fsquillace).

