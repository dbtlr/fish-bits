function git_parse_ahead_of_remote
    git status ^/dev/null | grep 'Your branch is ahead of' | sed -e 's/# Your branch is ahead of .* by \(.*\) commit.*/\1/g'
end