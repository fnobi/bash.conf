function ni () {
    if [ -z $1 ] ; then
        if [ -f ./yarn.lock ] ; then
            yarn
        elif [ -f ./package-lock.json ] ; then
            npm install
        else
            echo "lock file is not found."
        fi
    else
        npm $@
    fi
}
