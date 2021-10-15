if command -v tmux \
    &> /dev/null \
    && [ -n "$PS1" ] \
    && [[ ! "$TERM" =~ screen ]] \
    && [[ ! "$TERM" =~ tmux ]] \
    && [ -z "$TMUX" ]; then
  exec tmux
fi

export PATH=$HOME/bin:/usr/local/bin:$HOME/Projetos/obsidian_scripts:$HOME/.scripts:$PATH

export ZSH="$HOME/.oh-my-zsh"

export EDITOR='nvim'

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

# aliases for editors
alias vim="$EDITOR"
alias nv="$EDITOR"
alias vi="$EDITOR"

# aliases for ls
alias la="ls -a"
alias ll="ls -l"
alias lal="ls -al"

# aliases for taskwarrior
alias tt="taskwarrior-tui"
alias ts="task sync"
alias ta="task sync && taskwarrior-tui"

# aliases for configuration files
alias vimrc="$EDITOR ~/.vimrc"
alias nvimrc="$EDITOR ~/.config/nvim/init.lua"
alias zshrc="$EDITOR ~/.zshrc"
alias viebrc="$EDITOR ~/.config/Vieb/viebrc"
alias tmuxrc="$EDITOR ~/.tmux.conf"

# alias for sourcing configuration files
alias ss="source ~/.zshrc"
alias st="tmux source-file ~/.tmux.conf"

# alias para o repositório bare de dotfiles.
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias ds="dotfiles status"
alias da="dotfiles add -u"
alias dc="dotfiles commit -m "auto-commit""
alias dotpush="dotfiles add -u && dotfiles commit -m "auto-commit" && dotfiles push origin master" 
alias dotpull="dotfiles pull origin master"

# para garantir o teclado br
exec $(setxkbmap br)
