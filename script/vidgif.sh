function vidgif () {
    file=$1
    size=$2

    vidcap -s $size -i 0.15 -z $file
    convert -delay 15 $file.vidcap/image.*.jpg $file.gif
}
