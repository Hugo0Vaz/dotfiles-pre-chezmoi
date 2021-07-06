export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

autoload -Uz compinit && compinit

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
    venv
    user
    host
    dir
    git
    exec_time
    line_sep
    exit_code
    char
)

SPACESHIP_USER_SHOW=always
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_SYMBOL='✘'

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias kb="setxkbmap br"
alias la="ls -a"
alias ll="ls -l"
alias lal="ls -al"

# sincroniza o taskwarrior e abre o tt.
# quando executado causa a janela do tt à demorar a abrir.
alias tt="task sync && taskwarrior-tui"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"

alias ss="source ~/.zshrc"

# alias para o repositório bare de dotfiles.
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias ds="dotfiles status"
alias da="dotfiles add -u"
alias dc="dotfiles commit -m "auto-commit""
alias dp="dotfiles push origin master"
alias dotall="da && dc && dp"
