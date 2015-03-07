---
layout: post
title: GNU/Linux Debian on a Macbook Pro 11-1
category: sysadmin
tags: [debian,jessie,installation,macbook pro]
date: 2015-03-07 14:00:00 +0100
name: debian-jessie-installation-on-macbookpro-111
---

I've had the opportunity to install `Debian` on a `Macbook Pro 11-1`. The reason I change my laptop was to get a better one, especially regarding the battery and weight. Here are some notes about the installation.

## Pre-install

Installing `Debian` on a Macbook Pro, as on any other computer, needs some preparation.  
You should always read existing documentation, see at the end of this post, but also prepare things, like the USB key you will use to install your beloved operating system.

I used the `iso` netinst image of `Jessie` installer. Though it's not yet stable, I already used `Jessie` on my previous laptop, so this choice wasn't really a question. Beside, it was also the occasion to test the new installer.

The image I used is available there: [http://cdimage.debian.org/cdimage/weekly-builds/](http://cdimage.debian.org/cdimage/weekly-builds/). These images are built every week. `Jessie` installer is currently in `Release candidate` making quite natural to use the latest version available.

USB key creation is extremely easy

    dd if=~/Downloads/debian-testing-amd64-netinst.iso of=/dev/sdX bs=4M

where `/dev/sdX` is you USB key. Juste ensure it's not mounted befor writing it :)

## Installation

When starting your Macbook Pro, press `alt` (symbol `⌥`) as soon as you hear the start sound to acces boot menu, or you'll start MacOS installation process. When graphical menu is displayed, you'll be able to choose your USB key and boot.

Installing Debian on an encrypted LVM iq quite easy. The only issue I faced was related to a bug with installer: filesystem `ext4`, `btrsf` or `jfs` weren't available. Weird...  
I had to restart installation useing the `RC1` version of the `Jessie` installer. The image is available here: [http://cdimage.debian.org/cdimage/jessie_di_rc1/](http://cdimage.debian.org/cdimage/jessie_di_rc1/). This time, everything went fine.

I wrote an [installation report #779651](http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=779651) to explain what happened with the weekly image.

## Post-install

Once you installed you Macbook Pro and it has rebooted, here begin the fun part. First, the good thing is that it globally works pretty well. For example, the native screen resolution (2560x1600) is supported and HiDPI is automaticaly detected and enable with Gnome.  
Still, you'll have to adapt many things...

Personaly, I don't like HiDPI that much and prefer to get real native resolution.  
I therefore desactivated HiDPI on Gnome with command `gsettings set org.gnome.desktop.interface scaling-factor 1`.  
In some cases, the new parameter is not fully applied. You can fix this issue with `dconf-editor`.

### Network

Wifi card, a broadcom chipset, requires proprietary drivers. You can install them with

    apt-get install broadcom-sta-dkms

Some goes for the ethernet adapter,which requires `tg3` firmware

    apt-get install firmware-linux-nonfree

### Thunderbolt

Thunderbolt is supported under `Jessie`.  
But, chances are that you run into problems when resuming suspend or hibernation.

In my case, upgrading to `sid` solve some of the issues. Now, Thunderbolt hotplug "kind of works".

### Suspend & hibernation

Let's dive into core problmes...  
Do __always__ save your documents before you suspend or hibernate you computer: because of resume issues, you can never be sure to get them back.

Here again, upgrading to `sid` improve suspend and hibernation support. But I still see some issues :(

If you really don't want to upgrade, here are some tips

    apt-get install acpi-support

Installing this package will give you some default scripts to deal with ACPI stuff. You could get a better suspend / hibernation support.  
If it does not work, try installing `hibernate` and `uswsusp` packages

To hibernate

    hibernate

To suspend (in RAM)

    s2ram -f -p -m

To hibernate in hybrid mode (meaning you can resume from RAM as long as you have battery)

    sboth --force --vbe_post --vbe_mode

Finally, generaly speaking, I solve some stability issues adding some kernel options. Modify `/etc/default/grub` to get

    GRUB_CMDLINE_LINUX_DEFAULT="quiet rootflags=data=writeback libata.force=noncq acpi_osi=Darwin"
    GRUB_CMDLINE_LINUX="init=/bin/systemd"

You need `acpi_osi=Darwin` to ensure ACPI is working correctly. You also need `init=/bin/systemd` so that Gnome can manage suspend operations.

Unfortunatly, if hibernation works pretty well, suspend is not stable enough to be really usefull.

### Sound

Sound works out of the box. But you also have an [optical SPDIF output which can't be switched off](https://bugzilla.kernel.org/show_bug.cgi?id=64401#c25) via classical menus. The only way to switch it off is to use following command

    /usr/bin/hda-verb /dev/snd/hwC1D0 0x0e SET_POWER_STATE 0x03

That command ended up in my `/etc/rc.local` file.

### kworker

I also faced that annoying bug with [`kworker` process using 80% of a CPU](https://bugzilla.kernel.org/show_bug.cgi?id=85881). Only solution: disabling related IRQ

    echo disable > /sys/firmware/acpi/interrupts/gpe66

This command also ended up in my `/etc/rc.local` file.

## Remaining problems

First of all, the webcam, with no driver currently available. Previous Macbook Pro models shipped a USB webcam. Nowaday, webcamm uses a `PCIe` connection. I found a [project to implement a free driver](https://github.com/patjak/bcwc_pcie) but it's currently far from being usable.

Webcam apart, the most annoying issue concerns i915 graphic driver. From time to time, it seems having problems after a suspend resume and let you know it's not happy. It's a known bug on [Ubuntu](https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1384297) and [Redhat](https://bugzilla.redhat.com/show_bug.cgi?id=1120901)

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

After a suspend operation, it can display

    ------------[ cut here ]------------
    WARNING: CPU: 0 PID: 2076 at /build/linux-SAvLSw/linux-3.16.7-ckt7/drivers/gpu/drm/i915/intel_pm.c:5992 intel_display_power_put+0x127/0x150 [i915]()
    Modules linked in: bnep binfmt_misc nfsd auth_rpcgss oid_registry nfs_acl nfs lockd fscache sunrpc snd_hda_codec_hdmi iTCO_wdt iTCO_vendor_support nls_utf8 nls_cp437 vfat fat joydev applesmc input_polldev ecb x86_pkg_temp_thermal intel_powerclamp efi_pstore btusb intel_rapl wl(PO) bluetooth coretemp bcm5974 6lowpan_iphc kvm_intel kvm snd_hda_codec_cirrus evdev cfg80211 snd_hda_codec_generic rfkill pcspkr lpc_ich thunderbolt i2c_i801 efivars mfd_core i915 sbs snd_hda_intel snd_hda_controller battery sbshc drm_kms_helper snd_hda_codec drm snd_hwdep video snd_pcm ac apple_bl button snd_timer mei_me snd i2c_algo_bit mei shpchp i2c_core soundcore processor thermal_sys fuse parport_pc ppdev lp parport autofs4 ext4 crc16 mbcache jbd2 algif_skcipher af_alg hid_generic usb_storage hid_apple usbhid
     hid dm_crypt dm_mod sg sd_mod crc_t10dif crct10dif_generic crct10dif_pclmul crct10dif_common crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64 lrw gf128mul glue_helper ahci ablk_helper libahci cryptd libata scsi_mod xhci_hcd usbcore usb_common
    CPU: 0 PID: 2076 Comm: Xorg Tainted: P        W  O  3.16.0-4-amd64 #1 Debian 3.16.7-ckt7-1
    Hardware name: Apple Inc. MacBookPro11,1/Mac-189A3D4F975D5FFC, BIOS MBP111.88Z.0138.B11.1408291433 08/29/2014
     0000000000000009 ffffffff81509e7c 0000000000000000 ffffffff81067727
     ffff88045d70002c ffff88045afe0000 ffff88045d700000 000000000000000b
     ffff88045d708520 ffffffffa04ec127 ffff88045afe0000 ffff88045afe0000
    Call Trace:
     [<ffffffff81509e7c>] ? dump_stack+0x41/0x51
     [<ffffffff81067727>] ? warn_slowpath_common+0x77/0x90
     [<ffffffffa04ec127>] ? intel_display_power_put+0x127/0x150 [i915]
     [<ffffffffa054a92c>] ? intel_dp_get_modes+0x6c/0x100 [i915]
     [<ffffffffa0405966>] ? drm_helper_probe_single_connector_modes_merge_bits+0x286/0x370 [drm_kms_helper]
     [<ffffffffa03a9ccd>] ? drm_mode_getconnector+0x3dd/0x450 [drm]
     [<ffffffff811baad0>] ? poll_select_copy_remaining+0x140/0x140
     [<ffffffffa039b8b7>] ? drm_ioctl+0x1c7/0x5b0 [drm]
     [<ffffffff8108ab8d>] ? __hrtimer_start_range_ns+0x1cd/0x390
     [<ffffffff811b9ecf>] ? do_vfs_ioctl+0x2cf/0x4b0
     [<ffffffff8140420e>] ? __sys_recvmsg+0x3e/0x80
     [<ffffffff811ba131>] ? SyS_ioctl+0x81/0xa0
     [<ffffffff8150ff6d>] ? system_call_fast_compare_end+0x10/0x15
    ---[ end trace f899d968c5906660 ]---

And when Thhunberbolt does not like suspend resume either, it can be worst

    ------------[ cut here ]------------
    WARNING: CPU: 3 PID: 6627 at /build/linux-SAvLSw/linux-3.16.7-ckt7/drivers/thunderbolt/ctl.c:694 tb_cfg_read+0x7d/0x90 [thunderbolt]()
    tb_cfg_read: -110
    Modules linked in: bnep binfmt_misc nfsd auth_rpcgss oid_registry nfs_acl nfs lockd fscache sunrpc snd_hda_codec_hdmi iTCO_wdt iTCO_vendor_support nls_utf8 nls_cp437 vfat fat joydev applesmc input_polldev ecb x86_pkg_temp_thermal intel_powerclamp efi_pstore btusb intel_rapl wl(PO) bluetooth coretemp bcm5974 6lowpan_iphc kvm_intel kvm snd_hda_codec_cirrus evdev cfg80211 snd_hda_codec_generic rfkill pcspkr lpc_ich thunderbolt i2c_i801 efivars mfd_core i915 sbs snd_hda_intel snd_hda_controller battery sbshc drm_kms_helper snd_hda_codec drm snd_hwdep video snd_pcm ac apple_bl button snd_timer mei_me snd i2c_algo_bit mei shpchp i2c_core soundcore processor thermal_sys fuse parport_pc ppdev lp parport autofs4 ext4 crc16 mbcache jbd2 algif_skcipher af_alg hid_generic usb_storage hid_apple usbhid
     hid dm_crypt dm_mod sg sd_mod crc_t10dif crct10dif_generic crct10dif_pclmul crct10dif_common crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64 lrw gf128mul glue_helper ahci ablk_helper libahci cryptd libata scsi_mod xhci_hcd usbcore usb_common
    CPU: 3 PID: 6627 Comm: kworker/u16:9 Tainted: P        W  O  3.16.0-4-amd64 #1 Debian 3.16.7-ckt7-1
    Hardware name: Apple Inc. MacBookPro11,1/Mac-189A3D4F975D5FFC, BIOS MBP111.88Z.0138.B11.1408291433 08/29/2014
    Workqueue: events_unbound async_run_entry_fn
     0000000000000009 ffffffff81509e7c ffff8800795b7c28 ffffffff81067727
     ffff88008a6e2200 ffff8800795b7c78 ffff88007a4d3f08 ffffffff812e38e0
     0000000000000000 ffffffff8106778c ffffffffa03714ff f899d96800000020
    Call Trace:
     [<ffffffff81509e7c>] ? dump_stack+0x41/0x51
     [<ffffffff81067727>] ? warn_slowpath_common+0x77/0x90
     [<ffffffff812e38e0>] ? pci_add_dynid+0xe0/0xe0
     [<ffffffff8106778c>] ? warn_slowpath_fmt+0x4c/0x50
     [<ffffffffa036bcfd>] ? tb_cfg_read+0x7d/0x90 [thunderbolt]
     [<ffffffffa036f62e>] ? tb_eeprom_get_drom_offset+0x4e/0x140 [thunderbolt]
     [<ffffffff8139e67c>] ? _dev_info+0x5c/0x60
     [<ffffffffa036fc1b>] ? tb_drom_read_uid_only+0x2b/0x120 [thunderbolt]
     [<ffffffffa036de03>] ? tb_switch_resume+0x53/0x240 [thunderbolt]
     [<ffffffffa036b448>] ? tb_ctl_start+0x68/0x90 [thunderbolt]
     [<ffffffff812e38e0>] ? pci_add_dynid+0xe0/0xe0
     [<ffffffffa036cb71>] ? thunderbolt_resume+0x51/0x100 [thunderbolt]
     [<ffffffffa0369251>] ? nhi_resume_noirq+0x11/0x20 [thunderbolt]
     [<ffffffff813ac036>] ? dpm_run_callback+0x46/0xf0
     [<ffffffff813ac15c>] ? device_resume_noirq+0x7c/0x140
     [<ffffffff813ac239>] ? async_resume_noirq+0x19/0x40
     [<ffffffff8108d872>] ? async_run_entry_fn+0x32/0x120
     [<ffffffff810814e2>] ? process_one_work+0x172/0x420
     [<ffffffff81081b73>] ? worker_thread+0x113/0x4f0
     [<ffffffff81081a60>] ? rescuer_thread+0x2d0/0x2d0
     [<ffffffff81087dfd>] ? kthread+0xbd/0xe0
     [<ffffffff81087d40>] ? kthread_create_on_node+0x180/0x180
     [<ffffffff8150febc>] ? ret_from_fork+0x7c/0xb0
     [<ffffffff81087d40>] ? kthread_create_on_node+0x180/0x180
    ---[ end trace f899d968c5906656 ]---
    thunderbolt 0000:07:00.0: 0: uid read failed
    thunderbolt 0000:07:00.0: resume finished
    PM: noirq resume of devices complete after 10052.550 msecs
    PM: early resume of devices complete after 0.643 msecs
    snd_hda_intel 0000:00:03.0: irq 65 for MSI/MSI-X
    mei_me 0000:00:16.0: irq 66 for MSI/MSI-X
    snd_hda_intel 0000:00:1b.0: irq 69 for MSI/MSI-X
    wl_resume: PCI Resume handler
    ------------[ cut here ]------------

    ------------[ cut here ]------------
    WARNING: CPU: 3 PID: 6627 at /build/linux-SAvLSw/linux-3.16.7-ckt7/drivers/thunderbolt/ctl.c:449 tb_ctl_rx+0x82/0x370 [thunderbolt]()
    thunderbolt 0000:07:00.0: RX: timeout
    Modules linked in: bnep binfmt_misc nfsd auth_rpcgss oid_registry nfs_acl nfs lockd fscache sunrpc snd_hda_codec_hdmi iTCO_wdt iTCO_vendor_support nls_utf8 nls_cp437 vfat fat joydev applesmc input_polldev ecb x86_pkg_temp_thermal intel_powerclamp efi_pstore btusb intel_rapl wl(PO) bluetooth coretemp bcm5974 6lowpan_iphc kvm_intel kvm snd_hda_codec_cirrus evdev cfg80211 snd_hda_codec_generic rfkill pcspkr lpc_ich thunderbolt i2c_i801 efivars mfd_core i915 sbs snd_hda_intel snd_hda_controller battery sbshc drm_kms_helper snd_hda_codec drm snd_hwdep video snd_pcm ac apple_bl button snd_timer mei_me snd i2c_algo_bit mei shpchp i2c_core soundcore processor thermal_sys fuse parport_pc ppdev lp parport autofs4 ext4 crc16 mbcache jbd2 algif_skcipher af_alg hid_generic usb_storage hid_apple usbhid
     hid dm_crypt dm_mod sg sd_mod crc_t10dif crct10dif_generic crct10dif_pclmul crct10dif_common crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64 lrw gf128mul glue_helper ahci ablk_helper libahci cryptd libata scsi_mod xhci_hcd usbcore usb_common
    CPU: 3 PID: 6627 Comm: kworker/u16:9 Tainted: P        W  O  3.16.0-4-amd64 #1 Debian 3.16.7-ckt7-1
    Hardware name: Apple Inc. MacBookPro11,1/Mac-189A3D4F975D5FFC, BIOS MBP111.88Z.0138.B11.1408291433 08/29/2014
    Workqueue: events_unbound async_run_entry_fn
     0000000000000009 ffffffff81509e7c ffff8800795b7a88 ffffffff81067727
     ffff8800795b7ca0 ffff8800795b7ad8 0000000000000040 ffff8800795b7b44
     0000000000000000 ffffffff8106778c ffffffffa03713e1 ffffffff00000028
    Call Trace:
     [<ffffffff81509e7c>] ? dump_stack+0x41/0x51
     [<ffffffff81067727>] ? warn_slowpath_common+0x77/0x90
     [<ffffffff8106778c>] ? warn_slowpath_fmt+0x4c/0x50
     [<ffffffff81096af0>] ? wake_up_state+0x10/0x10
     [<ffffffffa036acc2>] ? tb_ctl_rx+0x82/0x370 [thunderbolt]
     [<ffffffffa036ba54>] ? tb_cfg_read_raw+0x134/0x1a0 [thunderbolt]
     [<ffffffff8139e16e>] ? dev_vprintk_emit+0xee/0x1e0
     [<ffffffffa036bd8d>] ? tb_cfg_write+0x7d/0x90 [thunderbolt]
     [<ffffffff8150768a>] ? printk+0x54/0x56
     [<ffffffff812e38e0>] ? pci_add_dynid+0xe0/0xe0
     [<ffffffffa036bcba>] ? tb_cfg_read+0x3a/0x90 [thunderbolt]
     [<ffffffffa036f62e>] ? tb_eeprom_get_drom_offset+0x4e/0x140 [thunderbolt]
     [<ffffffff8139e67c>] ? _dev_info+0x5c/0x60
     [<ffffffffa036fc1b>] ? tb_drom_read_uid_only+0x2b/0x120 [thunderbolt]
     [<ffffffffa036de03>] ? tb_switch_resume+0x53/0x240 [thunderbolt]
     [<ffffffffa036b448>] ? tb_ctl_start+0x68/0x90 [thunderbolt]
     [<ffffffff812e38e0>] ? pci_add_dynid+0xe0/0xe0
     [<ffffffffa036cb71>] ? thunderbolt_resume+0x51/0x100 [thunderbolt]
     [<ffffffffa0369251>] ? nhi_resume_noirq+0x11/0x20 [thunderbolt]
     [<ffffffff813ac036>] ? dpm_run_callback+0x46/0xf0
     [<ffffffff813ac15c>] ? device_resume_noirq+0x7c/0x140
     [<ffffffff813ac239>] ? async_resume_noirq+0x19/0x40
     [<ffffffff8108d872>] ? async_run_entry_fn+0x32/0x120
     [<ffffffff810814e2>] ? process_one_work+0x172/0x420
     [<ffffffff81081b73>] ? worker_thread+0x113/0x4f0
     [<ffffffff81081a60>] ? rescuer_thread+0x2d0/0x2d0
     [<ffffffff81087dfd>] ? kthread+0xbd/0xe0
     [<ffffffff81087d40>] ? kthread_create_on_node+0x180/0x180
     [<ffffffff8150febc>] ? ret_from_fork+0x7c/0xb0
     [<ffffffff81087d40>] ? kthread_create_on_node+0x180/0x180
    ---[ end trace f899d968c5906655 ]---
    ------------[ cut here ]------------

    ------------[ cut here ]------------
    WARNING: CPU: 3 PID: 6627 at /build/linux-SAvLSw/linux-3.16.7-ckt7/drivers/thunderbolt/ctl.c:707 tb_cfg_write+0x7d/0x90 [thunderbolt]()
    tb_cfg_write: -110
    Modules linked in: bnep binfmt_misc nfsd auth_rpcgss oid_registry nfs_acl nfs lockd fscache sunrpc snd_hda_codec_hdmi iTCO_wdt iTCO_vendor_support nls_utf8 nls_cp437 vfat fat joydev applesmc input_polldev ecb x86_pkg_temp_thermal intel_powerclamp efi_pstore btusb intel_rapl wl(PO) bluetooth coretemp bcm5974 6lowpan_iphc kvm_intel kvm snd_hda_codec_cirrus evdev cfg80211 snd_hda_codec_generic rfkill pcspkr lpc_ich thunderbolt i2c_i801 efivars mfd_core i915 sbs snd_hda_intel snd_hda_controller battery sbshc drm_kms_helper snd_hda_codec drm snd_hwdep video snd_pcm ac apple_bl button snd_timer mei_me snd i2c_algo_bit mei shpchp i2c_core soundcore processor thermal_sys fuse parport_pc ppdev lp parport autofs4 ext4 crc16 mbcache jbd2 algif_skcipher af_alg hid_generic usb_storage hid_apple usbhid
     hid dm_crypt dm_mod sg sd_mod crc_t10dif crct10dif_generic crct10dif_pclmul crct10dif_common crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64 lrw gf128mul glue_helper ahci ablk_helper libahci cryptd libata scsi_mod xhci_hcd usbcore usb_common
    CPU: 3 PID: 6627 Comm: kworker/u16:9 Tainted: P        W  O  3.16.0-4-amd64 #1 Debian 3.16.7-ckt7-1
    Hardware name: Apple Inc. MacBookPro11,1/Mac-189A3D4F975D5FFC, BIOS MBP111.88Z.0138.B11.1408291433 08/29/2014
    Workqueue: events_unbound async_run_entry_fn
     0000000000000009 ffffffff81509e7c ffff8800795b7c98 ffffffff81067727
     ffff88008a6e2200 ffff8800795b7ce8 ffff88007a4d3f08 ffffffff812e38e0
     0000000000000000 ffffffff8106778c ffffffffa0371510 0000000000000020
    Call Trace:
     [<ffffffff81509e7c>] ? dump_stack+0x41/0x51
     [<ffffffff81067727>] ? warn_slowpath_common+0x77/0x90
     [<ffffffff812e38e0>] ? pci_add_dynid+0xe0/0xe0
     [<ffffffff8106778c>] ? warn_slowpath_fmt+0x4c/0x50
     [<ffffffffa036bd8d>] ? tb_cfg_write+0x7d/0x90 [thunderbolt]
     [<ffffffffa036d307>] ? tb_switch_reset+0x97/0xd0 [thunderbolt]
     [<ffffffffa036b448>] ? tb_ctl_start+0x68/0x90 [thunderbolt]
     [<ffffffffa036cb68>] ? thunderbolt_resume+0x48/0x100 [thunderbolt]
     [<ffffffffa0369251>] ? nhi_resume_noirq+0x11/0x20 [thunderbolt]
     [<ffffffff813ac036>] ? dpm_run_callback+0x46/0xf0
     [<ffffffff813ac15c>] ? device_resume_noirq+0x7c/0x140
     [<ffffffff813ac239>] ? async_resume_noirq+0x19/0x40
     [<ffffffff8108d872>] ? async_run_entry_fn+0x32/0x120
     [<ffffffff810814e2>] ? process_one_work+0x172/0x420
     [<ffffffff81081b73>] ? worker_thread+0x113/0x4f0
     [<ffffffff81081a60>] ? rescuer_thread+0x2d0/0x2d0
     [<ffffffff81087dfd>] ? kthread+0xbd/0xe0
     [<ffffffff81087d40>] ? kthread_create_on_node+0x180/0x180
     [<ffffffff8150febc>] ? ret_from_fork+0x7c/0xb0
     [<ffffffff81087d40>] ? kthread_create_on_node+0x180/0x180
    ---[ end trace f899d968c5906654 ]---
    thunderbolt 0000:07:00.0: 0: resuming switch
    ------------[ cut here ]------------

    ------------[ cut here ]------------
    WARNING: CPU: 3 PID: 6627 at /build/linux-SAvLSw/linux-3.16.7-ckt7/drivers/thunderbolt/nhi.c:58 ring_interrupt_active+0x183/0x1d0 [thunderbolt]()
    thunderbolt 0000:07:00.0: interrupt for RX ring 0 is already enabled
    Modules linked in: bnep binfmt_misc nfsd auth_rpcgss oid_registry nfs_acl nfs lockd fscache sunrpc snd_hda_codec_hdmi iTCO_wdt iTCO_vendor_support nls_utf8 nls_cp437 vfat fat joydev applesmc input_polldev ecb x86_pkg_temp_thermal intel_powerclamp efi_pstore btusb intel_rapl wl(PO) bluetooth coretemp bcm5974 6lowpan_iphc kvm_intel kvm snd_hda_codec_cirrus evdev cfg80211 snd_hda_codec_generic rfkill pcspkr lpc_ich thunderbolt i2c_i801 efivars mfd_core i915 sbs snd_hda_intel snd_hda_controller battery sbshc drm_kms_helper snd_hda_codec drm snd_hwdep video snd_pcm ac apple_bl button snd_timer mei_me snd i2c_algo_bit mei shpchp i2c_core soundcore processor thermal_sys fuse parport_pc ppdev lp parport autofs4 ext4 crc16 mbcache jbd2 algif_skcipher af_alg hid_generic usb_storage hid_apple usbhid
     hid dm_crypt dm_mod sg sd_mod crc_t10dif crct10dif_generic crct10dif_pclmul crct10dif_common crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64 lrw gf128mul glue_helper ahci ablk_helper libahci cryptd libata scsi_mod xhci_hcd usbcore usb_common
    CPU: 3 PID: 6627 Comm: kworker/u16:9 Tainted: P        W  O  3.16.0-4-amd64 #1 Debian 3.16.7-ckt7-1
    Hardware name: Apple Inc. MacBookPro11,1/Mac-189A3D4F975D5FFC, BIOS MBP111.88Z.0138.B11.1408291433 08/29/2014
    Workqueue: events_unbound async_run_entry_fn
     0000000000000009 ffffffff81509e7c ffff8800795b7c98 ffffffff81067727
     ffff88045afd31c0 ffff8800795b7ce8 ffffffffa0371241 0000000000038200
     ffff88045e1ee980 ffffffff8106778c ffffffffa0371768 ffff880000000030
    Call Trace:
     [<ffffffff81509e7c>] ? dump_stack+0x41/0x51
     [<ffffffff81067727>] ? warn_slowpath_common+0x77/0x90
     [<ffffffff8106778c>] ? warn_slowpath_fmt+0x4c/0x50
     [<ffffffffa03691d3>] ? ring_interrupt_active+0x183/0x1d0 [thunderbolt]
     [<ffffffffa036a368>] ? ring_start+0x108/0x140 [thunderbolt]
     [<ffffffffa036b41e>] ? tb_ctl_start+0x3e/0x90 [thunderbolt]
     [<ffffffff812e38e0>] ? pci_add_dynid+0xe0/0xe0
     [<ffffffffa036cb5e>] ? thunderbolt_resume+0x3e/0x100 [thunderbolt]
     [<ffffffffa0369251>] ? nhi_resume_noirq+0x11/0x20 [thunderbolt]
     [<ffffffff813ac036>] ? dpm_run_callback+0x46/0xf0
     [<ffffffff813ac15c>] ? device_resume_noirq+0x7c/0x140
     [<ffffffff813ac239>] ? async_resume_noirq+0x19/0x40
     [<ffffffff8108d872>] ? async_run_entry_fn+0x32/0x120
     [<ffffffff810814e2>] ? process_one_work+0x172/0x420
     [<ffffffff81081b73>] ? worker_thread+0x113/0x4f0
     [<ffffffff81081a60>] ? rescuer_thread+0x2d0/0x2d0
     [<ffffffff81087dfd>] ? kthread+0xbd/0xe0
     [<ffffffff81087d40>] ? kthread_create_on_node+0x180/0x180
     [<ffffffff8150febc>] ? ret_from_fork+0x7c/0xb0
     [<ffffffff81087d40>] ? kthread_create_on_node+0x180/0x180
    ---[ end trace f899d968c5906652 ]---
    thunderbolt 0000:07:00.0: resetting switch at 0
    ------------[ cut here ]------------

Main consequence, I can not plug more than 1 external monitor, when I should plug 2 (and I like having 3 simultaneous screens :p)

I can't wait kernel 3.19 reaching Debian `sid`. It seems that many improvements have been done regarding `thunderbolt` et `i915` in kernel 3.18 which, sadly, is not available in Debian.

## Conclusion

Here are my Debian installation on a Macbook Pro quick notes.  
As a conclusion, things work pretty well, even if this post could let you feel the opposite.

I made one mistake though: I fully remove MacOS. __Do not do this !__  
Now, I can't upgrade any firmware since they're provided by MacOS updates.

Same way, I can't silence the Macbook Pro startup, it can be done only from MacOS.  
Now all my collegues know when I must reboot because of a bug. And they make fun of me :-D

## Sources

- [Debian Wiki MacBookPro 11-1](https://wiki.debian.org/InstallingDebianOn/Apple/MacBookPro/11-1)
- [Ubuntu Wiki MacBookPro 11-1](https://help.ubuntu.com/community/MacBookPro11-1/Saucy)
- [ArchLinux Wiki MacBookPro 11-1](https://wiki.archlinux.org/index.php/MacBookPro11,x)
