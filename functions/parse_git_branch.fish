function parse_git_branch
  # make sure the directory is a git repo
  if not is_git
    return
  end

  if has_git_changes
    set_color red
  else
    set_color blue
  end

  set branch (env git symbolic-ref -q HEAD | sed -e 's/refs\/heads\///')
  printf '%s (%s)' (set_color blue) $branch

  set git_ahead_of_remote (git_parse_ahead_of_remote)
  if [ -n "$git_ahead_of_remote" -a "$git_ahead_of_remote" != "0" ]
    printf ' +%s' (git_parse_ahead_of_remote)
  end
end