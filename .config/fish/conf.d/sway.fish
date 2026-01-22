# If running from tty1 start sway
if test (hostname) = "andromeda"
    set -gx XDG_CURRENT_DESKTOP "sway:wlroots"
    set -gx WLR_RENDERER "vulkan"
    set TTY1 (tty)
    [ "$TTY1" = "/dev/tty1" ] && exec dbus-run-session sway
end
