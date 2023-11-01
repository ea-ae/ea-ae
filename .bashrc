# Directory shortcuts
alias devd="cd /d/dev"
alias pyd="cd /d/dev/py"
alias jd="cd /d/dev/java/icd0011"
alias dopamid="cd /d/dev/cs/dopami"
alias soodudd="cd /d/dev/py/soodud/django && pipenv shell"

alias v="nvim -u ~/.config/nvim/init.vim"
alias slash="sed 's/\\\/\\//g'"
alias la='ls -lA'
alias gcg="git branch | grep '$@' | xargs git switch"

# Tools
alias v="nvim -u ~/.config/nvim/init.vim"
alias f="fzf --preview 'bat --style=numbers --color=always --line-range=:500 {}'"
alias fdir='echo $(f | sd "^(.*)\\[^\\]*$" "$1")'
alias rgf="rg --color=always --line-number --no-heading --smart-case . | fzf --color --ansi --exact --preview 'bat --style=numbers --color=always --line-range=:500 {}'"

# eval `ssh-agent`
# ssh-add
