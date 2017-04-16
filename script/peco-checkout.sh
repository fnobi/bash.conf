function peco-checkout () {          
    branch=$(git branch -a | peco --prompt "GIT BRANCH" | head -n 1)
    git checkout $branch
}
