HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/jbaker/.zshrc'
autoload -Uz compinit
compinit

# pnpm
export PNPM_HOME="/home/jbaker/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
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

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# homebrew end

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-autosuggestions end

# starship
eval "$(starship init zsh)"
# starship end



# bun completions
[ -s "/home/jbaker/.bun/_bun" ] && source "/home/jbaker/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
