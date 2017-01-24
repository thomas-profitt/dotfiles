# BEGIN path ###################################################################
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

export PATH="$PATH:$HOME/scripts"
export PATH="$PATH:$HOME/scripts/by-uname/$(uname)"
export PATH="$PATH:$HOME/scripts/by-uname/$(uname)/by-hostname/$(uname -n)"
export PATH="$PATH:$HOME/scripts/by-hostname/$(uname -n)"

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export GOPATH="$HOME/software/go"
export PATH="$PATH:$HOME/software/go/bin"
# END path #####################################################################

# BEGIN uname switching ########################################################
if [[ $(uname) == 'Darwin' ]]; then
  export CLICOLOR=1
  if [[ $(uname -n) == 'snowy' ]]; then
    export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"
    export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools/"
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
    export PATH="/usr/local/Cellar/qt5/5.4.0/bin:$PATH"
    export PATH="$HOME/software/apache-maven-3.3.3/bin:$PATH"
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  fi
fi
# END uname switching ##########################################################

# BEGIN zsh features ###########################################################
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
# END zsh features #############################################################

# BEGIN prompt #################################################################
if [[ $(uname -n) == 'snowy' ]]; then
  PROMPTCOLOR=cyan
elif [[ $(uname -n) == 'owlbear' ]]; then
  PROMPTCOLOR=yellow
elif [[ $(uname -n) == 'frogmouth' ]]; then
  PROMPTCOLOR=red
else
  PROMPTCOLOR=white
fi

export PROMPT="%F{$PROMPTCOLOR}> %f"
export RPROMPT="%F{$PROMPTCOLOR}%~%"
# END prompt ###################################################################

# BEGIN aliases ################################################################
alias ls='ls -Fh'
if [[ $(uname) == 'Linux' ]]; then
  alias ls='ls -Fh --color=always --group-directories-first'
fi
alias l=ls
alias ll='ls -l'
alias q='exit'
alias vcat='vim --cmd "set t_ti= t_te=" +redraw +q'
# BEGIN aliases ################################################################

# BEGIN run on shell startup ###################################################
if ( hash tmux 2>/dev/null ) && [ $TERM != "screen-256color" ]; then
  tmux
fi

if hash docker-machine 2>/dev/null; then
  eval "$(docker-machine env default > /dev/null 2>&1)"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# END run on shell startup #####################################################
