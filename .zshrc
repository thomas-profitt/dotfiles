export PATH="$PATH:$HOME/scripts"

if [[ $(uname) == 'Darwin' ]]; then
  export CLICOLOR=1
  export PATH="$PATH:$HOME/scripts/osx"
  if [[ $(uname -n) == 'snowy' ]]; then
    export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"
    export PATH="$PATH:$HOME/scripts/osx/snowy"
    export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools/"
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
    export PATH="/usr/local/Cellar/qt5/5.4.0/bin:$PATH"
    export PATH="$HOME/software/apache-maven-3.3.3/bin:$PATH"
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  fi
fi

if [[ $(uname) == 'Linux' ]]; then
  export PATH="$PATH:$HOME/scripts/linux"
  if [[ $(uname -n) == 'snowy' ]]; then
    export PATH="$PATH:$HOME/scripts/linux/snowy"
  fi
fi

export PATH="$PATH:$HOME/.rvm/bin"

HISTFILE=$HOME/.zsh_history
HISTSIZE=65535
SAVEHIST=4294967295

setopt autocd
setopt autolist
setopt badpattern
setopt banghist
setopt incappendhistory

autoload -U colors
colors

autoload -U promptinit
promptinit

export PROMPT='%F{cyan}> %f'
export RPROMPT='%F{cyan}%~%f'

if hash nvim 2>/dev/null; then
  export VISUAL=nvim
  export NVIM_TUI_ENABLE_TRUE_COLOR=1
  alias vim=nvim
  alias view=nvim
else
  export VISUAL=vim
fi
export EDITOR="$VISUAL"

alias ls='ls -Fh'
alias l=ls
alias vcat='vim --cmd "set t_ti= t_te=" +redraw +q'

if hash docker-machine 2>/dev/null; then
  eval "$(docker-machine env default > /dev/null 2>&1)"
fi

if hash tmux 2>/dev/null; then
  tmux
fi
