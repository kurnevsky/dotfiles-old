#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrdb ~/.Xresources

xsetroot -cursor_name left_ptr

syndaemon -d -t -k -R

numlockx

dunst &

exec xmonad 2>> ~/.xsession-errors

