function dict () {
    if [ -z $1 ] ; then
        return 1
    fi

    open dict://$1
}
