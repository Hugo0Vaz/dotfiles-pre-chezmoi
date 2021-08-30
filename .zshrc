if command -v tmux \
    &> /dev/null \
    && [ -n "$PS1" ] \
    && [[ ! "$TERM" =~ screen ]] \
    && [[ ! "$TERM" =~ tmux ]] \
    && [ -z "$TMUX" ]; then
  exec tmux
fi

export PATH=$HOME/bin:/usr/local/bin:$HOME/Projetos/obsidian_scripts:$PATH

export ZSH="$HOME/.oh-my-zsh"

export EDITOR='vim'

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

alias tt="taskwarrior-tui"
alias ts="task sync"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias viebrc="vim ~/.config/Vieb/viebrc"

alias ss="source ~/.zshrc"
alias sv="source ~/.vimrc"

# alias para o repositório bare de dotfiles.
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias ds="dotfiles status"
alias da="dotfiles add -u"
alias dc="dotfiles commit -m "auto-commit""
alias dp="dotfiles push origin master"
alias dotall="da && dc && dp"

# para garantir o teclado br
$(setxkbmap br)
