function np () {
    url=$NP_URL
    post_path=$NP_POST_PATH
    tmp=$NP_TMP_FILE

    text=$(pbpaste)
    curl $url$post_path -X POST -d "text=$text" -v 2>$tmp
    share_path=$(cat $tmp | grep Location | cut -d ' ' -f 3,3)
    share_path=$(echo $share_path | tr -d '\r' | tr -d '\n')
    open "$url$share_path"
}
