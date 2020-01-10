function fish_greeting -d "What's up, fish?"
  set_color $fish_color_autosuggestion
  printf '%s @ ' "$USER"
  uname -nmsr
  set_color normal
end
