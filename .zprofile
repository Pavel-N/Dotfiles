if [[ "$(tty)" = "/dev/tty1" ]]
then
    exec startx
fi

if [[ "$(tty)" = "/dev/tty2" ]]
then
    # exec startx
fi

