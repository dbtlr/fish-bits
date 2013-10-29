function grb
    git branch -D $argv[1]
    git push origin :$argv[1]
end
