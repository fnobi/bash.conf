function buzz () {
    export url=$1
    export logfile=$(echo $url | sed -e 's/https*:\/\//./g' -e 's/\/$//g' -e 's/\//_/g')

    while :
    do
        likes=$(curl "http://graph.facebook.com/$url" -s | jq '.shares')
        tweets=$(curl "http://urls.api.twitter.com/1/urls/count.json?url=$url" -s | jq '.count')

        clear
        echo $url
        echo " - likes:  $likes"
        echo " - tweets: $tweets"
        date

        echo $(date)",$likes,$tweets" >> ~/$logfile.csv

        sleep 30
    done
}
