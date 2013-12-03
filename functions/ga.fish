function ga
    if [ (count $argv) -gt 0 ]
        git add $argv
    else
        git add .
    end
end