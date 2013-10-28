function parse_git_tag_or_branch
    if [ (parse_git_branch) != "(no branch)" ]
        parse_git_branch
    else
        parse_git_tag
    end
end