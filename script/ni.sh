function ni () {
    if [ -z $1 ] ; then
        args=install
    else
        args=$*
    fi
    if [ -f ./yarn.lock ] ; then
        echo yarn $args
        yarn $args
        return
    elif [ -f ./package-lock.json ] ; then
        echo npm $args
        npm $args
        return
    else
        echo "lock file is not found."
    fi
}
