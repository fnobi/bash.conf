function wip () {
    topic=$1
    git checkout -b feature/$topic
    git commit -m "wip" --allow-empty
}
