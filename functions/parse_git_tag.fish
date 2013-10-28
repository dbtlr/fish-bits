function parse_git_tag
    git describe --tags --always ^/dev/null
end