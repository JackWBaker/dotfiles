# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

# General
unsetopt BEEP
bindkey -v # Use vi mode

# zgen-prebuilt: A lightweight zsh plugin manager.
# https://github.com/zgen-dev/zgen-prebuilt
# Clone it with: git clone https://github.com/zgen-dev/zgen-prebuilt.git "${HOME}/.zgen"
if [[ ! -f ${HOME}/.zgen/zgen.zsh ]]
then
    print "zgen not found. Please clone it with:"
    print "git clone https://github.com/tarjoilija/zgen.git \"${HOME}/.zgen\""
else
    source "${HOME}/.zgen/zgen.zsh"

    # Check if there are any changes to the plugins
    if ! zgen saved
    then
        # --- Plugins ---
        zgen load zsh-users/zsh-autosuggestions
        zgen load zsh-users/zsh-completions
        zgen load zsh-users/zsh-history-substring-search
        zgen load zsh-users/zsh-syntax-highlighting

        # Save the plugin list to a file
        zgen save
    fi
fi

# Completions
autoload -Uz compinit
compinit -i

# pnpm
export PNPM_HOME="/home/jbaker/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"* ) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#nvm end

# angular
source <(ng completion script)
# angular end

# rust
. "$HOME/.cargo/env"
# rust end

# starship
eval "$(starship init zsh)"
# starship end

# Aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
