---
layout: post
title: GNU/Linux Debian sur un Macbook Pro 11-1
category: sysadmin
tags: [jessie,installation,macbook pro]
---

J'ai eu l'occasion d'installer `Debian` sur un `Macbook Pro 11-1`. Il s'agissait pour moi d'avoir un matériel plus performant, notamment pour la batterie. Voici rassemblées les notes d'installation.

## Préparation

L'installation de `Debian` sur un Macbook Pro ne s'improvise pas totalement.  
Il faut d'une part lire les documentations existantes, voir en fin d'article, mais également préparer un minimum de chose, à commencer par la clef USB qui nous permettra de démarrer sous notre système d'exploitation préféré.

J'ai utilisé une image `iso` netinst de l'installeur `Jessie`. Bien que non stable, c'est cette version que j'utilisait sur mon ancien portable. Il était donc naturel pour moi de continuer sur ma lancée. Accessoirement, c'était aussi l'occasion de tester l'installeur.

L'image que j'ai utilisée est disponible ici: [http://cdimage.debian.org/cdimage/weekly-builds/](http://cdimage.debian.org/cdimage/weekly-builds/). Il s'agit d'images générées automatiquement chaque semaine. L'installeur de Jessie est actuellement en `release candidate`, il était donc logique de prendre la denrière version disponible.

La création de la clef USB de démarrage est extrêmement simple

    dd if=~/Downloads/debian-testing-amd64-netinst.iso of=/dev/sdX bs=4M

## Installation

Au démarrage du Mac, dès que vous entendez le son, appuyez sur la touche `alt`, symbole `⌥` pour accéder au menu de démarrage. Sans ça, vous entamerez l'installation de `MacOS`.  Vous verrez apparaître le menu graphique vous permettant de choisir le péripherique de démarrage.

Choisissez votre clef USB.

L'installation de Debian en elle-même s'est parfaitement déroulée, modulo un bug de l'installeur qui ne connaissait plus ni `ext4`, ni `btrsf`, ni `jfs`. Gênant...  
J'en ai été quitte pour recommencer la procédure avec la `Release Candidate 1` de l'installeur, disponible à cette adresse: [http://cdimage.debian.org/cdimage/jessie_di_rc1/](http://cdimage.debian.org/cdimage/jessie_di_rc1/). Cette fois là, tout s'est très bien déroulé.

Le Macbook Pro est donc installé sur un `LVM` chiffré.

## Post-install

Une fois le Mac redémarré, c'est là que les choses marrantes commencent. D'abord, globalement ça fonctionne plutôt pas mal. Dans mon cas, l'écran est reconnu en résolution native (2560x1600) et le support de HiDPI par Gnome est activé.  
Reste que pas mal de choses devront être adaptées...

Je n'aime pas, personnellement, le HiDPI sous Gnome. Je préfère de très très loin être en résolution native. J'ai de très bons yeux et préfère avoir de la place sur mon écran. J'ai donc désactivé de HiDPI sous Gnome avec la commande `gsettings set org.gnome.desktop.interface scaling-factor 1`.

### Réseau

La carte Wifi utilise les pilotes Broadcom. Il faut donc installer un logiciel propriétaire:

    apt-get install broadcom-sta-dkms

L'adaptateur USB ethernet n'est pas en reste. Lui aussi a besoin d'un firmware, en l'occurrence `tg3`

    apt-get install firmware-linux-nonfree

### Thunderbolt

Sous Jessie, le support de thunderbolt fonctionne.  
En revanche, il y a de grandes chances pour que le module noyau `thunderbolt` vous pose des soucis en sortie de veille ou d'hibernation.

Dans mon cas, le passage à `sid` a résolu le problème. À présent, le branchement à chaud de périphérique thunderbolt fonctionne \o/

### Mise en veille & hibernation

On commence à attaquer le cœur du problème...  
La mise en veille et l'hibernation par défaut sont tout simplement catastrophiques. Sauvegardez __toujours__ vos documents avant une mise en veille: vous n'êtes jamais certains de les retrouver tant la sortie de veille est cahotique.

Dans mon cas, là encore, le passage à `sid` a améliorer la situation. Mais ce n'est pas encore ça !

Si toutefois la mise à jour vers `sid` vous rebute, quelques astuces

    apt-get install acpi-support

Ceci installera différents scripts par défaut pour gérer les évènements liés à la gestion de l'énergie. Vous devriez pouvoir obtenir une mise en veille acceptable.  
Dans le cas contraire, le paquet `hibernate` peut également être utile.

Enfin, d'un point de vue plus général, j'ai résolu quelques soucis de stabilité en ajoutant des options de démarrage au noyau. Pour cela, il faut modifier le fichier `/etc/default/grub` pour obtenir

    GRUB_CMDLINE_LINUX_DEFAULT="quiet rootflags=data=writeback libata.force=noncq acpi_osi=Darwin"
    GRUB_CMDLINE_LINUX="init=/bin/systemd"

Notamment, `acpi_osi` est nécessaire pour que l'ACPI fonctionne convenablement et `init!/bin/systemd` m'a permis de faire fonctionner la mise en veille depuis Gnome.

Malheureusement, si l'hibernation fonctionne plutôt pas mal, la mise en veille reste parfois vacillante. Par exemple, évitez de mettre en veille votre Mac plusieurs fois d'affilée (comprendre, sans redémarrage entre deux. Je sais, c'est stupide :-/)

### Son

Le son fonctione correctement. Néanmoins, la prise casque comporte également une sortie optique qui est allumée par défaut. Impossible de l'éteindre par les menus "classiques". Seule manière de faire, exécuter

    /usr/bin/hda-verb /dev/snd/hwC1D0 0x0e SET_POWER_STATE 0x03

La commande a terminé dans `/etc/rc.local`

### kworker

J'ai été confronté à un bug particulièrement vicieux: un process `kworker` qui bouffe 80% d'un CPU en permamence. Seule solution, désactiver l'interruption qui en est responsable

    echo disable > /sys/firmware/acpi/interrupts/gpe66

La commande a également terminé dans `/etc/rc.local`

## Soucis restant

Il reste néanmoins quelques soucis plus persistants...  
Le plus gênant aujourd'hui concerne le pilote graphique `i915`. De temps à autres, il semble ne pas très bien supporter la mise en veille et manifeste son mécontement dans `dmesg`

    Mar  3 12:01:02 jbfavre kernel: [ 8881.708464] ------------[ cut here ]------------
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708480] WARNING: CPU: 0 PID: 782 at /build/linux-SAvLSw/linux-3.16.7-ckt7/drivers/gpu/drm/i915/intel_display.c:4954 intel_modeset_check_state
    +0x756/0x780 [i915]()
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708559] active connector not linked to encoder
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708577] Modules linked in: bnep nfsd auth_rpcgss oid_registry nfs_acl nfs lockd fscache sunrpc snd_hda_codec_hdmi iTCO_wdt iTCO_vendor_suppor
    t nls_utf8 nls_cp437 vfat fat joydev applesmc input_polldev x86_pkg_temp_thermal intel_powerclamp intel_rapl coretemp ecb efi_pstore kvm_intel wl(PO) kvm btusb bluetooth pcspkr bcm
    5974 6lowpan_iphc evdev cfg80211 efivars snd_hda_codec_cirrus snd_hda_codec_generic i2c_i801 rfkill thunderbolt lpc_ich mfd_core i915 snd_hda_intel snd_hda_controller sbs drm_kms_h
    elper sbshc snd_hda_codec snd_hwdep drm snd_pcm snd_timer i2c_algo_bit ac i2c_core snd battery mei_me apple_bl video soundcore button mei shpchp processor thermal_sys fuse parport_
    pc ppdev lp parport autofs4 ext4 crc16 mbcache jbd2 algif_skcipher af_alg hid_generic usb_storage hid_apple usbhid hid dm_crypt dm_mod sg sd_mod crc_t10dif crct10dif_generic crct10
    dif_pclmul crct10dif_common crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64 lrw gf128mul glue_helper ablk_helper cryptd ahci libahci libata scsi_mod tg3 ptp pp
    s_core xhci_hcd libphy usbcore usb_common
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708587] CPU: 0 PID: 782 Comm: Xorg Tainted: P           O  3.16.0-4-amd64 #1 Debian 3.16.7-ckt7-1
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708588] Hardware name: Apple Inc. MacBookPro11,1/Mac-189A3D4F975D5FFC, BIOS MBP111.88Z.0138.B11.1408291433 08/29/2014
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708589]  0000000000000009 ffffffff81509e7c ffff88045d2739f8 ffffffff81067727
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708590]  ffff88045af06000 ffff88045d273a48 ffff88045d2171f8 ffff88045c4fd000
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708591]  ffff88045c4fd000 ffffffff8106778c ffffffffa04d7bc8 ffff880400000018
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708591] Call Trace:
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708596]  [<ffffffff81509e7c>] ? dump_stack+0x41/0x51
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708598]  [<ffffffff81067727>] ? warn_slowpath_common+0x77/0x90
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708599]  [<ffffffff8106778c>] ? warn_slowpath_fmt+0x4c/0x50
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708605]  [<ffffffffa049d0c0>] ? intel_ddi_connector_get_hw_state+0xa0/0x110 [i915]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708610]  [<ffffffffa048a3e6>] ? intel_modeset_check_state+0x756/0x780 [i915]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708614]  [<ffffffffa048a4a2>] ? intel_set_mode+0x22/0x30 [i915]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708619]  [<ffffffffa048b39f>] ? intel_crtc_set_config+0x8cf/0xd50 [i915]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708623]  [<ffffffffa03e5d11>] ? drm_mode_set_config_internal+0x61/0xe0 [drm]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708626]  [<ffffffffa0381a6b>] ? restore_fbdev_mode+0xab/0xd0 [drm_kms_helper]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708628]  [<ffffffffa03835f0>] ? drm_fb_helper_restore_fbdev_mode_unlocked+0x20/0x60 [drm_kms_helper]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708629]  [<ffffffffa038364e>] ? drm_fb_helper_set_par+0x1e/0x50 [drm_kms_helper]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708631]  [<ffffffff8130f28e>] ? fb_set_var+0x15e/0x3b0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708634]  [<ffffffffa021c176>] ? jbd2_journal_stop+0x1b6/0x390 [jbd2]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708636]  [<ffffffff8130697b>] ? fbcon_blank+0x1cb/0x2b0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708638]  [<ffffffff81379ca1>] ? do_unblank_screen+0xb1/0x1d0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708640]  [<ffffffff81370373>] ? complete_change_console+0x53/0xe0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708641]  [<ffffffff81371349>] ? vt_ioctl+0xf49/0x10d0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708643]  [<ffffffffa03da774>] ? drm_ioctl+0x84/0x5b0 [drm]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708647]  [<ffffffffa03e0c60>] ? drm_setmaster_ioctl+0xd0/0xd0 [drm]
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708649]  [<ffffffff8136556c>] ? tty_ioctl+0x26c/0xb40
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708651]  [<ffffffff811e263c>] ? fsnotify+0x23c/0x300
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708653]  [<ffffffff811b9ecf>] ? do_vfs_ioctl+0x2cf/0x4b0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708654]  [<ffffffff811a9fad>] ? __sb_end_write+0x2d/0x70
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708657]  [<ffffffff811a7d32>] ? vfs_write+0x172/0x1f0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708657]  [<ffffffff811ba131>] ? SyS_ioctl+0x81/0xa0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708659]  [<ffffffff81078b03>] ? SyS_rt_sigprocmask+0x83/0xb0
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708661]  [<ffffffff8150ff6d>] ? system_call_fast_compare_end+0x10/0x15
    Mar  3 12:01:02 jbfavre kernel: [ 8881.708662] ---[ end trace c412b1dd6b4dfc1b ]---

Principale conséquence a priori, je suis limité à 1 écran externe, la où je pourrais en brancher 2 (oui j'aime avoir 3 écrans simultanés :p)

J'attends avec impatience l'arrivée du noyau 3.19 dans Debian. Il semble que la version 3.18 corrige ou améliore pas mal de choses concernant `thunderbolt` et `i915`.

##Conclusion

Voilà quelques notes rapides liées à l'installation de Debian sur un Macbook Pro.  
Bonne impression au final, c'est une belle machine et le support par Debian est plutôt bon.

Un seul regret: j'ai totalement supprimé MacOS. __Ne le faites pas__  
En effet, je ne peux plus maintenant réaliser de mise à jour des firmware Apple (ils sont fournis dans MacOS).

De la même manière, je ne peux pas faire taire la machine au démarrage.  
Du coup, tous les collègues sont au courant quand je suis obligé de redémarrer à cause de l'un ou l'autre bug :-D

## Sources

### Documentation

- [Wiki Debian MacBookPro 11-1](https://wiki.debian.org/InstallingDebianOn/Apple/MacBookPro/11-1)
- [Wiki Ubuntu MacBookPro 11-1](https://help.ubuntu.com/community/MacBookPro11-1/Saucy)
- [Wiki ArchLinux MacBookPro 11-1](https://wiki.archlinux.org/index.php/MacBookPro11,x)

### Bugs

- [SPDIF light off](https://bugzilla.kernel.org/show_bug.cgi?id=64401#c25)
- [Kernel kworker process uses 80% CPU]https://bugzilla.kernel.org/show_bug.cgi?id=85881)

- [i915 Ubuntu bug](https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1384297)  
- [i915 RedHat / Fedora bug](https://bugzilla.redhat.com/show_bug.cgi?id=1120901)
