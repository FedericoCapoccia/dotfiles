# If running from tty1 start sway
export XDG_CURRENT_DESKTOP=sway:wlroots
set TTY1 (tty)
[ "$TTY1" = "/dev/tty1" ] && exec dbus-run-session sway
