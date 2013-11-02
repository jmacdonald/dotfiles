# Set vim as the default editor
export EDITOR=vim

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

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
