function eject () {
    if [ -z $1 ] ; then
        echo "Error. No device name."
        return 1
    fi

    if ! [ -d /Volumes/$1 ] ; then
        echo "Error. /Volumes/$1 does'nt exist."
        return
    fi

    echo "eject /Volumes/$1."
    diskutil unmount /Volumes/$1
}
