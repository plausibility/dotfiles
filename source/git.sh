function current_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(git rev-parse --short HEAD 2> /dev/null) || return
    echo ${ref#refs/heads/}
}

function current_repository() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(git rev-parse --short HEAD 2> /dev/null) || return
    echo $(git remote -v | cut -d':' -f 2)
}

function git_is_dirty() { return $(git status --porcelain | wc -l) }
