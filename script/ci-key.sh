function ci-key () {
    if [ -z $1 ] ; then
        return 1
    fi

    ssh-keygen -m pem -C 'circleci' -f ~/.ssh/ci.$1.id_rsa
}
