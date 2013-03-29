function eject () {
    if [ -z $1 ] ; then
        echo "Error. No device name." 1>&2
        return 1
    fi

    if ! [ -d /Volumes/$1 ] ; then
        echo "Error. /Volumes/$1 does'nt exist." 1>&2
        return
    fi

    diskutil unmount /Volumes/$1
}
