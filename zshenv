# Set vim as the default editor
export EDITOR=vim

# Set tab width to 4 columns
eval "tabs -4"

# Rbenv
eval "$(rbenv init -)"

# Pow
export PATH="/usr/local/opt/rbenv/shims:/usr/local/opt/rbenv/bin:$PATH"

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Custom executables.
export PATH="$HOME/.executables:$PATH"

# Perl
export PATH="/usr/local/ActivePerl-5.16/bin:$PATH"

# NodeJS
export PATH="/usr/local/share/npm/bin:$PATH"

# Go
export GOPATH="$HOME/projects/go"
export PATH=$PATH:$GOPATH/bin

# Import proxy settings, if present.
if [[ -a ~/.proxy ]]
then
  source ~/.proxy
fi
