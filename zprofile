if [ -f /Users/sjha/.zshrc ]; then
  source /Users/sjha/.zshrc
fi
if [ -f /Users/sjha/.blend_profile ]; then
  source /Users/sjha/.blend_profile
fi
eval "$(pyenv init --path)"
