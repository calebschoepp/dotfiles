## Chrome

## vim

## Grub customizer
1. Install
2. Edit options to only leave Ubuntu and Windows
3. Install Fallout theme

## Gnome Tweaks
TODO

## Canta Theme
https://github.com/vinceliuice/Canta-theme
```
sudo add-apt-repository ppa:numix/ppa
sudo apt update
sudo apt install numix-icon-theme-circle
./install.sh -i
```
Background

## Git

## Fix Dual Monitor Issue
- https://askubuntu.com/questions/1105332/external-monitor-not-working-ubuntu-nvidia/1134579#1134579
- https://askubuntu.com/a/1138792
- https://bugs.launchpad.net/ubuntu/+source/gdm3/+bug/1716857/comments/26
```
The solution to this is to run X11 as root, so it can use VGA arbiter and detect displays on both the NVIDIA and modesetting drivers.

Add this to /etc/X11/Xwrapper.config :
needs_root_rights = yes
```

Fix login monitor: https://askubuntu.com/questions/1043337/is-there-to-make-the-login-screen-appear-on-the-external-display-in-18-04

## Htop

## Software
- Discord
- Spotify
- Code
