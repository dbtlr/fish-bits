function fish_prompt -d "Write out the prompt"
    printf '%s[%s] %s%s@%s%s' (set_color red) (date +"%T") (set_color brown) (whoami) (hostname|cut -d . -f 1) (set_color normal) 

    # Color writeable dirs green, read-only dirs red
    if test -w "."
        printf ' %s%s' (set_color green) (prompt_pwd)
    else
        printf ' %s%s' (set_color red) (prompt_pwd)
    end

    # Print git tag or branch
    parse_git_branch
    printf "%s\n> " (set_color normal) 
end