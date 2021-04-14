# My personal scripts
PATH="/Users/brendan/scripts:$PATH" 

# Homebrew
PATH="/Users/brendan/.local/bin:$PATH" 

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
PATH="/Users/brendan/go/bin:$PATH"

# Haskell
[ -f "/Users/brendan/.ghcup/env" ] && source "/Users/brendan/.ghcup/env" # ghcup-env

# Rust
source "$HOME/.cargo/env"

# Postgres
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# manually installed stuff
export PATH="$HOME/.bin:$PATH" 

# asdf version manager
source /Users/brendan/.asdf/asdf.sh
