function alias
  if [ (count $argv) -eq 2 ]
    echo -e "function $argv[1]\n  $argv[2]\nend" > ~/.config/fish/functions/"$argv[1].fish"
  else
    echo "Invalid syntax: should be called with two arguments."
    echo "  Syntax: alias <name> <command>"
  end
end