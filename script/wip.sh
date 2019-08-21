function wip () {
    topic=$1
    git switch -c feature/$topic
    git commit -m "wip" --allow-empty
}
