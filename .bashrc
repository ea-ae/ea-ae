# Directory shortcuts
alias devd="cd /d/dev"
alias pyd="cd /d/dev/py"
alias jd="cd /d/dev/java/icd0011"

# Tools
eval "$(zoxide init bash)"
alias v="nvim -u ~/.config/nvim/init.vim"
alias f="fzf --preview 'bat --style=numbers --color=always --line-range=:500 {}'"
alias rgf="rg --color=always --line-number --no-heading --smart-case . | fzf --color --ansi --exact --preview 'bat --style=numbers --color=always --line-range=:500 {}'"

# eval `ssh-agent`
