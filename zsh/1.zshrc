create_new_doc() {
    open https://doc.new
}
alias nd='create_new_doc'

check_moodle() {
    ~/.venvs/moodle_query/bin/python3 ~/moodle/query.py
}
alias cm='check_moodle'

get_password() {
    python3 "~/get_password.py"
}

get_rand() {
    curl "https://www.random.org/integers/?num=1&min=1000&max=10000&col=1&base=10&format=plain&rnd=new"
}

alias mvvn='mv -vn'

search_web() {
    url='https://www.google.com/search?q='
    for i in "$@" ; do
        url="${url}${i}+"
    done
    open $url[1,-2]
}
alias sw=search_web

alias ls='ls --color'

# added for case insensitive autocompletion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3 # run chruby to see actual version
eval "$(github-copilot-cli alias -- "$0")"
