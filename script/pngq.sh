function pngq () {
    pngquant 256 --force --skip-if-larger --speed 1 --ext .png -- $*
}
