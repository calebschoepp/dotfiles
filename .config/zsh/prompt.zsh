# Oh-my-posh initialization
if [ $TERM_PROGRAM != "Apple_Terminal" ]; then
  # The old theme I used: eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/jandedobbeleer.omp.json)"
  eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/custom-theme.omp.json)"
fi
