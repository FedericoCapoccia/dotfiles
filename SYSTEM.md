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

```
noatime,compress=zstd:3,ssd,discard=async,space_cache=v2,subvol=
```

Enable Docker
<a target=_blank href="https://docs.docker.com/storage/storagedriver/btrfs-driver">Btrfs Driver</a>

## Locales
```
Generate locales editing /etc/locale.gen and then: # locale-gen
Link timezone: # ln -sf /usr/share/zoneinfo/Europe/Rome /etc/localtime
Syncronize clock: # hwclock --systohc
```
<table>
    <tr><td>LANG</td><td>en_US.UTF-8</td></tr>
    <tr><td>LANGUAGE</td><td>en_US</td></tr>
    <tr><td>LC_TIME</td><td>it_IT.UTF-8</td></tr>
    <tr><td>LC_MONETARY</td><td>it_IT.UTF-8</td></tr>
    <tr><td>LC_NUMERIC</td><td>it_IT.UTF-8</td></tr>
    <tr><td>LC_PAPER</td><td>it_IT.UTF-8</td></tr>
    <tr><td>LC_NAME</td><td>it_IT.UTF-8</td></tr>
    <tr><td>LC_ADDRESS</td><td>it_IT.UTF-8</td></tr>
    <tr><td>LC_TELEPHONE</td><td>it_IT.UTF-8</td></tr>
    <tr><td>LC_MEASUREMENT</td><td>it_IT.UTF-8</td></tr>
    <tr><td>LC_IDENTIFICATION</td><td>it_IT.UTF-8</td></tr>
</table>

## GRUB
```
grub-install --efi-direcotry=/boot/efi --bootloader-id=GRUB
```

```
# /etc/default/grub
GRUB_DEFAULT=0
GRUB_TIMEOUT=2
GRUB_DISTRIBUTOR="Arch"
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 amdgpu.ppfeaturemask=0xffffffff"
GRUB_CMDLINE_LINUX=""
GRUB_PRELOAD_MODULES="part_gpt part_msdos"
GRUB_TIMEOUT_STYLE=menu
GRUB_TERMINAL_INPUT=console
GRUB_GFXMODE=2560x1440
GRUB_GFXPAYLOAD_LINUX=keep
GRUB_DISABLE_RECOVERY=true
GRUB_DISABLE_OS_PROBER=false
```

## Reflector
```
# /etx/xdg/reflector/reflector.conf
--save /etc/pacman.d/mirrorlist
--protocol https
--country Italy,France,Germany
--latest 10
--sort rate
```
```
systemctl enable reflector.service
```

## XDG User Dirs
```
# /etc/xdg/user-dirs.defaults
DESKTOP=.desktop
DOWNLOAD=Downloads
TEMPLATES=.templates
PUBLICSHARE=.public
DOCUMENTS=Documents
MUSIC=Media/Music
PICTURES=Media/Pictures
VIDEOS=Media/Videos
```
```
xdg-user-dirs-update
```

## Packages
### Headless minimal
```
amd-ucode
base
base-devel
btop
btrfs-progs
curl
efibootmgr
fastfetch
firewalld
fd
git
grub
imv
iptables-nft
linux
linux-firmware
linux-headers
man-db
neovim
networkmanager
openssh
os-prober
reflector
stow
terminus-font
tldr
tree
unzip
wget
xdg-user-dirs
zip
zsh

```
### Window Manager (sway)
```
# AUR
autotiling
hyprpicker
```
```
cliphist
corectrl
flatpak
gnome-software
grim
gtk-engine-murrine
gtk4
libva-mesa-driver
mesa
mesa-utils
mesa-vdpau
noto-fonts-emoji
papirus-icon-theme
pavucontrol
pipewire
pipewire-alsa
pipewire-audio
pipewire-jack
pipewire-pulse
polkit-gnome
qt5-wayland
qt6-wayland
slurp
sway
sway-contrib
swaybg
swayimg
swaync
thunar
thunar-archive-plugin
thunar-volman
ttf-jetbrains-mono-nerd
ttf-nerd-fonts-symbols-mono
ttf-ubuntu-mono-nerd
ttf-ubuntu-nerd
vulkan-radeon
waybar
wezterm
wl-clipboard
wofi
xdg-desktop-portal-gtk
xdg-desktop-portal-wlr
xorg-xwayland

```
### Extra (CLI e Dev)
```
# AUR
# If Steam is in flatpak
game-devices-udev
oh-my-posh-bin
```
```
clang
cmake
fzf
go
jdk21-openjdk
jetbrains-toolbox
materia-gtk-theme
npm
ripgrep
rustup

```

### Virtualization and Docker
```
dnsmasq
docker
docker-compose
virt-manager
qemu-full
```
### Headless extra
```

```
