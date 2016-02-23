caps.drop all
seccomp
protocol unix,inet,inet6,netlink
netfilter
tracelog
noroot
private-dev
shell none
include /etc/firejail/whitelist-common.inc
whitelist /tmp/.X11-unix
whitelist ~/.mozilla
whitelist ~/.cache/mozilla/firefox
whitelist ~/Downloads
