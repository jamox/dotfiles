function fish_prompt
  set -l home_escaped (echo -n $HOME | sed 's/\//\\\\\//g')
  set -l min_pwd (echo -n $PWD | sed "s/^$home_escaped/~/")
  set -l cyan (set_color -o cyan)
  set -l green (set_color -o green)
  set -l blue (set_color -o blue)
  set -l git (git rev-parse --abbrev-ref HEAD ^/dev/null)
  if set -q git
    set git (set_color magenta)'('$git')'(set_color normal)
  end

  printf '%s%s %s %s%s ' "$blue" "$min_pwd" "$git" "$green" "\$"
  set -e git
end
