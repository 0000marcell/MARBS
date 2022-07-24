# Arch Linux Auto Rice Bootstrap Scripts

Minimalist archlinux rice boostrap with just the essentials.
These script will install and configure linux tools in your archlinux environment how to install and what is included 
is described in each section.

## Instalation

In a fresh archlinux install with internet access
```
curl https://raw.githubusercontent.com/0000marcell/MARBS/master/download.sh | bash

```

## Xorg

### Keyboards
Two different layouts are used, 
* .Xmodmap(US) with caps_lock swapped for super 
* .Xmodmap(BR) with caps_lock swapped for super 

I also use a script to toggle between the two kb layouts
```
#!/usr/bin/bash

LAYOUT=$(cat ~/kbstate)
echo $LAYOUT

if [ $LAYOUT = us ]; then
  notify-send "keyboard layout changed to BR"
  xmodmap ~/.Xmodmapbr
  echo "br" > ~/kbstate
else
  notify-send "keyboard layout changed to US"
  xmodmap ~/.Xmodmap
  echo "us" > ~/kbstate
fi
```
if you don't want caps_lock swapped by super you can just swap back editing these two
files, if you have problems with the mapping you can use xev to figure out your keysym 
and edit the files

## Fonts

I use Liberation Mono everywhere, if you want to use a different font you can add fonts
in /usr/share/fonts then
```
fc-cache -vf
```
and run
```
fc-list
```
you should see a list of all available fonts in your system, you can grab the name of 
the font in the second argument after the first `:` then you can use this name on 
`~/.config/fontconfig/fonts.conf` most apps get the fonts from that file, for the 
st terminal you need to compile again with the font name that you want to use

## ST

## i3WM


## nvim
neovim very simple configuration with plug
https://github.com/0000marcell/MARBS/blob/master/config/nvim/init.vim

## checkbatcapacity

Script to check bat capacity and send notification when battery is low
needs to be adapted to different computers

`https://github.com/0000marcell/MARBS/blob/master/scripts/checkbatcapacity`

## Notifications

Dunst is used for notifications




