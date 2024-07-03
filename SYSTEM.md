# System Installation

## Partitions
<b>
<table>
    <tr><td>Size</td><td>Mount Point</td><td>Label</td><td>Filesystem</td></tr>
    <tr><td>1GB</td><td>/mnt/boot/efi</td><td>EFI</td><td>vFAT 32</td></tr>
    <tr><td>Fill</td><td>/mnt</td><td>Linux</td><td>Btrfs</td></tr>
</table>
</b>

### Btrfs layout
<table>
    <tr>
        <td>Name</td>
        <td>Path</td>
        <td>CoW</td>
    </tr>
    <tr>
        <td>@</td>
        <td>/</td>
        <td>Y</td>
    </tr>
    <tr>
        <td>@home</td>
        <td>/home</td>
        <td>Y</td>
    </tr>
    <tr>
        <td>@log</td>
        <td>/var/log</td>
        <td>N</td>
    </tr>
    <tr>
        <td>@cache</td>
        <td>/var/cache</td>
        <td>Y</td>
    </tr>
    <tr>
        <td>@tmp</td>
        <td>/var/tmp</td>
        <td>Y</td>
    </tr>
    <tr>
        <td>@docker</td>
        <td>/var/lib/docker</td>
        <td>Y</td>
    </tr>
    <tr>
        <td>@flatpak</td>
        <td>/var/lib/flatpak</td>
        <td>Y</td>
    </tr>
    <tr>
        <td>@libvirt</td>
        <td>/var/lib/libvirt</td>
        <td>Y (/var/lib/libvirt/images No CoW)</td>
    </tr>
    <tr>
        <td>TLD</td>
        <td>/.btrfsroot</td>
        <td></td>
    </tr>
</table>
Mount Options <br>
<b>noatime,compress=zstd:3,ssd,discard=async,space_cache=v2,subvol=</b><br>
Enable Docker [BTRFS driver](https://docs.docker.com/storage/storagedriver/btrfs-driver)

## System Packages
### Headless minimal


