#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="life"
iso_label="LIFE_$(date +%Y%m)"
iso_publisher="Human Instrumentality Project <https://humaninstrumentalityproject.org>"
iso_application="Life"
iso_version="$(date +%Y.%m.%d)"
install_dir="life"
buildmodes=('iso'
            'dongle')
bootmodes=('bios.grub.mbr'
           'bios.grub.eltorito'
           'uefi-ia32.grub.esp'
           'uefi-ia32.grub.eltorito'
           'uefi-x64.grub.esp'
           'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs+luks"
airootfs_image_tool_options=('-zlz4hc,12'
                             -E ztailpacking)
airootfs_encryption_key="auto"
persistent_size=3000000 # 3GB
persistent_image_type="ext4+luks"
persistent_encryption_key="auto"
dongle_persistent_size=3000000 # 3GB
dongle_persistent_image_type="ext4+luks"
dongle_persistent_encryption_key="auto"
swap_size="6000000" # 6GB
swap_image_type="swap+luks"
keys_image_type="erofs+luks"
keys_size="50000" # 50 MB
keys_image_tool_options=('-zlz4hc,12'
                         -E ztailpacking)
keys_encryption_key="auto"
dongle_swap_size="3000000" # 3GB
recovery="true"
recovery_encryption_key="auto"
file_permissions=(
  ["/etc/cryptsetup-keys.d"]="0:0:700"
  ["/etc/shadow"]="0:0:400"
  ["/run/archiso/keys"]="0:0:700"
)
