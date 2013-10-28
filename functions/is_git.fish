function is_git
    git status >/dev/null ^&1        
    return $status
end