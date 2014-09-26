function current_version_staging
	curl -s https://equity-stagingb.rtp-ops.net/server/info | python -m json.tool
end