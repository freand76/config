if test -n "$1"; then
    emacsclient --no-wait "$@" 2> /dev/null || emacs "$@" &
else
    emacsclient --eval "(raise-frame (selected-frame))" 2> /dev/null || emacs &
fi
