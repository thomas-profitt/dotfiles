# BEGIN path ###################################################################
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"

export PATH="$PATH:$HOME/scripts"
export PATH="$PATH:$HOME/scripts/by-uname/$(uname)"
export PATH="$PATH:$HOME/scripts/by-uname/$(uname)/by-hostname/$(uname -n)"
export PATH="$PATH:$HOME/scripts/by-hostname/$(uname -n)"

export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/software/go/bin"
export GOPATH="$HOME/software/go"
# END path #####################################################################

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
# END aliases ################################################################

# BEGIN set common environment variables #####################################
export VISUAL=vim
export EDITOR="$VISUAL"
# END set common environment variables #######################################

# BEGIN run on shell startup ###################################################
if ( hash tmux 2>/dev/null ) && [ $TERM != "screen-256color" ]; then
  tmux
fi

if hash docker-machine 2>/dev/null; then
  eval "$(docker-machine env default > /dev/null 2>&1)"
fi
# END run on shell startup #####################################################
