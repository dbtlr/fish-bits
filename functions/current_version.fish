function current_version
	curl -s https://rockthepost.com/server/info | python -m json.tool
end