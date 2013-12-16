function launch -a command service
	sudo launchctl $command -F /Library/LaunchDaemons/dev.$service.plist
end