function apacheswitch () {
    docroot=/Library/WebServer/Documents
    sudo rm $docroot
    sudo ln -s $PWD/$1 $docroot
    echo $PWD/$1
}
