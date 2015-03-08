---
layout: post
title: "Improve suspend on a Macbook Pro 11-1 with Debian Jessie"
category: sysadmin
tags: [debian,jessie,macbook pro]
keywords: [suspend,acpi]
date: 2015-03-09 09:00:00 +0100
name: debian-jessie-suspend-on-macbookpro-111
---

In the post about [installing `Debian Jessie` on a Macbook Pro 11-1](/2015/03/07/Debian-on-Macbook-Pro-11-1/), I talked about suspend & hibernation issues. Here, I'll talk about how to improve suspend support.

## Suspend

Depending on the bug reports found, suspend sometimes does not work at all, sometimes it works once but not twice. Not really a great situation.  
Since I really want it to work, I did some research on the Internet and found out USB could be the culprit.

The solution I found it to tell `acpi` to ignore wakeup signals coming from USB, which is enabled by default

    # cat /proc/acpi/wakeup |grep XHC1
    XHC1	  S3	*enabled   pci:0000:00:14.0

To disable it, you just have to execute

    # echo XHC1 >/proc/acpi/wakeup
    # cat /proc/acpi/wakeup |grep XHC1
    XHC1	  S3	*disabled  pci:0000:00:14.0

This command will switch the USB wakeup support, therefore you have to check initial state so that it won't be enabled. My `/etc/rc.local` file then gets another command

    (grep XHC1 /proc/acpi/wakeup | grep enable) && echo XHC1 >/proc/acpi/wakeup

I also full disabled laptop wakeup from USB devices

    for usb in /sys/bus/usb/devices/*/power/wakeup;
    do
       echo disabled > $usb;
    done

Final `/etc/rc.local` file is as follow

    #!/bin/sh -e
    #
    # rc.local
    #
    # This script is executed at the end of each multiuser runlevel.
    # Make sure that the script will "exit 0" on success or any other
    # value on error.
    #
    # In order to enable or disable this script just change the execution
    # bits.
    #
    # By default this script does nothing.
    
    # Disable SPDIF output (light off red light)
    # https://bugzilla.kernel.org/show_bug.cgi?id=64401#c25
    /usr/bin/hda-verb /dev/snd/hwC1D0 0x0e SET_POWER_STATE 0x03
    
    # workaround for Kernel bug #85881
    # https://bugzilla.kernel.org/show_bug.cgi?id=85881
    grep enable /sys/firmware/acpi/interrupts/gpe66 && echo disable > /sys/firmware/acpi/interrupts/gpe66
    
    # workaround for non working suspend (laptop got waked up by USB)
    # https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1371159
    (grep XHC1 /proc/acpi/wakeup | grep enable) && echo XHC1 >/proc/acpi/wakeup
    for usb in /sys/bus/usb/devices/*/power/wakeup;
    do
       echo disabled > $usb;
    done
    
    exit 0
