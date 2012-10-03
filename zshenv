# Set vim as the default editor
export EDITOR=vim

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Custom executables.
export PATH="$HOME/.executables:$PATH"

# Import proxy settings, if present.
if [[ -a ~/.proxy ]]
then
  source ~/.proxy
fi
