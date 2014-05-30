function buzz () {
    export url=$1

    while :
    do
        likes=$(curl "http://graph.facebook.com/$url" -s | jq '.shares')
        tweets=$(curl "http://urls.api.twitter.com/1/urls/count.json?url=$url" -s | jq '.count')

        clear
        echo $url
        echo " - likes:  $likes"
        echo " - tweets: $tweets"
        date

        sleep 30
    done
}
