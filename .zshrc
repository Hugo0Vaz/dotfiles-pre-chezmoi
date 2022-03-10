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

# if not exported as true pyenv venv prompt shows twice
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

plugins=(git)

source $ZSH/oh-my-zsh.sh

if command -v /usr/bin/exa &> /dev/null
then
    alias ls="exa --icons"
    alias la="exa -a --icons"
    alias ll="exa -l --icons"
    alias lal="exa -la --icons"
else
    alias la="ls -a"
    alias ll="ls -l"
    alias lal="ls -al"
fi

if command -v /usr/bin/nvim &> /dev/null
then
    export EDITOR='nvim'
fi

alias vi="$EDITOR"
alias vim="$EDITOR"
alias nv="$EDITOR"
alias nvim="$EDITOR"
alias e="$EDITOR"

# aliases for taskwarrior
alias tt="taskwarrior-tui"
alias ts="task sync"
alias ta="task sync && taskwarrior-tui"
alias tl="task list"
alias tw="task list +work"
alias tp="task list +puc"

# alias for clearing the screen
alias cls="clear"

alias vimrc="$EDITOR ~/.vimrc"
alias nvimrc="$EDITOR ~/.config/nvim/init.lua"
alias zshrc="$EDITOR ~/.zshrc"
alias viebrc="$EDITOR ~/.config/Vieb/viebrc"
alias tmuxrc="$EDITOR ~/.tmux.conf"

# alias for sourcing configuration files
alias ss="source ~/.zshrc"
alias st="tmux source-file ~/.tmux.conf"

# alias for git bare repo of dotfiles.
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias ds="dotfiles status"
alias da="dotfiles add -u"
alias dc="dotfiles commit -m "auto-commit""
alias dotpush="dotfiles add -u && dotfiles commit -m "auto-commit" && dotfiles push origin master" 
alias dotpull="dotfiles pull origin master"

alias ...="../.."
alias ....="../../.."

eval "$(pyenv virtualenv-init -)"

# para garantir o teclado br
# exec $(setxkbmap br)

source ~/.scripts/goto.sh

# função para lidar com arquivos comprimidos
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

set_proxy (){
    source ~/.scripts/proxy-utils/set_proxy.sh
}

unset_proxy (){
    source ~/.scripts/proxy-utils/unset_proxy.sh
}

list_proxy (){
    source ~/.scripts/proxy-utils/list_proxy.sh
}
