function ni () {
    if [ -f ./yarn.lock ] ; then
        echo "yarn.lock is found."
        yarn install
        return
    elif [ -f ./package-lock.json ] ; then
        echo "package-lock.json is found."
        npm install
        return
    else
        echo "lock file is not found."
    fi
}
