function git {
    if [ $1 == 'checkout' ] ; then
        echo 'use "switch" or "restore".'
        echo '[ref] https://twitter.com/sonatard/status/1162496925934870528'
    else
        /usr/local/bin/git $*
    fi
}