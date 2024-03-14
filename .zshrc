# To speed up loading time
skip_global_compinit=1

# COmpletion System
# autoload -U compinit; compinit
# _comp_options+=(globdots) # hidden files


# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# THIS IS REQUIRED FOR NPM AND NODE TO WORK
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PY_ENV SETUP
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# GO SETUP
export GO_PATH="/usr/local/go/bin"
export PATH="$GO_PATH:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"


# RBENV
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
export PATH="$RBENV_ROOT/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"

# ANDROID STUDIO
export ANDROID_STUDIO_PATH="/home/kraigochieng/programs/android-studio/bin"
export PATH="$ANDROID_STUDIO_PATH:$PATH"

# POSTGRES COLORS
export PG_COLOR="always"
export PG_COLORS="error=01;31:warning=01;35:note=01;36:locus=01"

export QEMU_AUDIO_DRV="spice"

## BINDINGS
# This is to start in vi mode command mode
# bindkey -a
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

## Aliases
source "$ZDOTDIR/aliases.zsh"

## Plugins
PLUGINS_DIR="$ZDOTDIR/plugins"

# Syntax Highlighting
source "$PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# Autocompletion(too verbose)
# source "$PLUGINS_DIR/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

# Autosuggestion
source "$PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
