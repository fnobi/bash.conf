function g-delete-merged-branch () {
    echo "git branch --merged | grep -v '*' | xargs -I % git branch -d %"
    git branch --merged | grep -v '*' | xargs -I % git branch -d %
}

