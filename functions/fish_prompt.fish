function fish_prompt -d "Write out the prompt"
    printf '%s[%s] %s%s@%s%s' (set_color red) (date +"%T") (set_color brown) (whoami) (hostname|cut -d . -f 1) (set_color normal) 

    # Color writeable dirs green, read-only dirs red
    if test -w "."
        printf ' %s%s' (set_color green) (prompt_pwd)
    else
        printf ' %s%s' (set_color red) (prompt_pwd)
    end

    # Print git tag or branch
    if is_git
        printf ' %s%s(%s)' (set_color normal) (set_color blue) (parse_git_tag_or_branch)
        set git_ahead_of_remote (git_parse_ahead_of_remote)
        if [ -n "$git_ahead_of_remote" -a "$git_ahead_of_remote" != "0" ]
            printf ' +%s' (git_parse_ahead_of_remote)
        end
    end
    printf "%s\n> " (set_color normal)
end