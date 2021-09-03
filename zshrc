export EDITOR=vim

# My personal scripts
PATH="/Users/brendantang/scripts:$PATH" 

# Homebrew
PATH="/Users/brendantang/.local/bin:$PATH" 

# prompt 
PROMPT='%B%F{black}%K{green} %* %1~/ → %k%f%b '

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

# Rust
source "$HOME/.cargo/env"

# Postgres
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# manually installed stuff
export PATH="$HOME/.bin:$PATH" 


# Nix package manager
if [ -e /Users/brendantang/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/brendantang/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# hledger plain text accounting
export LEDGER_FILE=~/finance/2021.journal

# fancy prompt: starship.rs
# eval "$(starship init zsh)"

# auto-completion like fish
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# opam configuration
test -r /Users/brendantang/.opam/opam-init/init.zsh && . /Users/brendantang/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# scala3
export PATH="$PATH:/Users/brendantang/Library/Application Support/Coursier/bin"

# >>> JVM installed by coursier >>>
export JAVA_HOME="/Users/brendantang/Library/Caches/Coursier/jvm/adopt@1.8.0-292/Contents/Home"
# <<< JVM installed by coursier <<<

alias scalac="scala3-compiler"

# asdf version manager
. /usr/local/opt/asdf/libexec/asdf.sh
