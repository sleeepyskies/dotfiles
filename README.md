# `dotfiles`

This is no longer active and has migrated to https://git.sleeepy.dev/sleeepy/dotfiles.

This repo contains all of my dot files to sync across machines.

A setup script has been provided that _should_ handle configuring the new machine.
The script will download any basic packages, download the dotfiles and place
symlinks in the correct place. After running the script, you should log out of
the machine and log back in again for the changes to have taken full effect.

The script can be run by running the following command in your console:

```bash
curl -fsSL https://raw.githubusercontent.com/sleeepyskies/dotfiles/main/setup.sh | bash
```
