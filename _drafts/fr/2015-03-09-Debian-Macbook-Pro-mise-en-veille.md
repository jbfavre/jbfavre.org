---
layout: post
title: "Améliorer la mise en veille d'un Macbook Pro 11-1 sous Debian Jessie"
category: sysadmin
tags: [debian,jessie,macbook pro]
keywords: [suspend,acpi]
date: 2015-03-09 09:00:00 +0100
name: debian-jessie-suspend-on-macbookpro-111
---

Dans le billet [installation de `Debian Jessie` sur un Macbook Pro 11-1](/2015/03/06/Debian-Jessie-sur-un-Macbook-Pro-11-1/), je faisais état des problèmes liés à la mise en veille et l'hibernation. Nous allons voir ici comment améliorer la situation.

## Mise en veille

Dans certains cas, la mise en veille ne fonctionne tout simplement pas. Dans d'autres, elle fonctionne une fois, mais pas deux. Bref, ça ne semble pas au point.  
Mes recherches m'ont amenées à mettre en cause l'USB (si, si) qui, semble-t-il, interrompt la mise en veille de temps en temps.

La solution est donc d'indiquer à `acpi` qu'il ne doit pas tenir compte des évènements provenant de l'USB

    # cat /proc/acpi/wakeup |grep XHC1
    XHC1	  S3	*enabled   pci:0000:00:14.0

Du coup, pour désactiver le réveil par USB, il suffit d'exécuter

    # echo XHC1 >/proc/acpi/wakeup
    # cat /proc/acpi/wakeup |grep XHC1
    XHC1	  S3	*disabled  pci:0000:00:14.0

L'appel à la première commande permettant de basculer l'état du support USB, il faut bien entendu vérifier l'état initial afin de ne pas l'activer par mégarde. Mon fichier `/etc/rc.local` s'enrichit donc d'une commande supplémentaire

    (grep XHC1 /proc/acpi/wakeup | grep enable) && echo XHC1 >/proc/acpi/wakeup

Par la même occasion, je désactive la possibilité de réveiller le Macbook sur tous les ports USB

    for usb in /sys/bus/usb/devices/*/power/wakeup;
    do
       echo disabled > $usb;
    done

Le fichier `/etc/rc.local` final

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
