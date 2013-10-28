function refreshdns
    switch (uname)
        case Darwin
            sudo killall -HUP mDNSResponder\
            break
        case '*'
            echo Not implemented yet.
    end
end