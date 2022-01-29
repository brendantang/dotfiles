export EDITOR=vim

# My personal scripts
PATH="/Users/brendantang/scripts:$PATH" 

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# prompt 
PROMPT='%B%F{magenta}%K{}%* %1~/ → %k%f%b '

# set window title to current directory
DISABLE_AUTO_TITLE="false"
precmd () {print -Pn "\e]0;%~\a"}

# fixes 'gpg: signing failed: Inappropriate ioctl for device'
# https://gist.github.com/repodevs/a18c7bb42b2ab293155aca889d447f1b
export GPG_TTY=$(tty)

# load auto completion files
autoload -U compinit
compinit

# Dokku
export DOKKU_HOST=leveler.xyz

# Go 
PATH="/Users/brendantang/go/bin:$PATH"

# Haskell
[ -f "/Users/brendantang/.ghcup/env" ] && source "/Users/brendantang/.ghcup/env" # ghcup-env

# Postgres
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# manually installed stuff
export PATH="$HOME/.bin:$PATH" 

# hledger plain text accounting
export LEDGER_FILE=~/finance/2021.journal

# fancy prompt: starship.rs
# eval "$(starship init zsh)"

# auto-completion like fish
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# asdf version manager
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Rust
. "$HOME/.cargo/env"

# Nix in multi-user mode
export NIX_REMOTE=daemon
