# Set vim as the default editor
export EDITOR=vim

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Import proxy settings, if present.
if [[ -a ~/.proxy ]]
then
  source ~/.proxy
fi
