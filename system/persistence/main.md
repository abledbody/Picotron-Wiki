# Persistence

## Overview

How System persistence works.

System persistence allows or you to customise the `/system` folder in Picotron (the system files of it)

## Persisting Picotron
You can do this easily by opening the Picotron Terminal and typing
```lua
cp("/system","/system.")
```

This creates a clone of your picotron system that is editable by the Host Operating System - this causes all changes to `/system` to be **permenant** from both edits within and outside of Picotron.

## Use cases

You could use this for editing system files such as the default software used, e.g: using a different filenav or code editor by default.

This is used within the [Picotron Distribution System](https://github.com/Astralsparv/Distribution_Manager.p64/blob/main/distribution_manager.p64) to allow custom operating systems.

## v0.2.2 (unreleased)

Going by communications with Zep, `/system` persistence is going to be supported more, allowing for you to have passthrough files rather than cloning the entire `/system` drive to change something.

This allows for stuff like distributions to not affect the licensing of `/system`.

This works by:

Picotron's `/system` being defaulted to the system rom (stored within the Picotron runtime).

*If* the folder `/picotron/drive/system` exists, it will overwrite any files that exist in `/picotron/drive/system` into Picotron's loaded `/system`.

This adds better support for updating Picotron with a persistent system as you can safely edit stuff like system apps without losing any updates to other things like libraries or the wm & pm.

### Example

Within `/picotron/drive/system`, you have the folder `/apps/` which contains `filenav.p64`, this is a custom filenav for Picotron - rather than the built in filenav.

When opening Picotron, everything will be loaded as if that doesn't exist and the `filenav.p64` will then overwrite `/system/apps/filenav.p64` in Picotron.

This happens *before* the boot sequence (running `boot.lua`) so that your system can be fully edited.