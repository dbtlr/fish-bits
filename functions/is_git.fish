function is_git
  env git rev-parse --git-dir ^/dev/null >/dev/null
end