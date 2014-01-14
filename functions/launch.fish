function launch -a command service
    switch $command
        case reload
        	echo "Unloading $service ..."
        	sudo launchctl unload -F /Library/LaunchDaemons/dev.$service.plist

        	echo "Loading $service ..."
        	sudo launchctl load -F /Library/LaunchDaemons/dev.$service.plist

        case '*'
			sudo launchctl $command -F /Library/LaunchDaemons/dev.$service.plist
	end
end