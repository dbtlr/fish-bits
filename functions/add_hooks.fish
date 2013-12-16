function add_hooks
    mkdir .tmp
    cd .tmp
	wget https://github.com/dbtlr/git-hooks/archive/1.0.0.tar.gz
	tar -xzf 1.0.0.tar.gz
	cp git-hooks-1.0.0/hooks/* ../.git/hooks/
	cd ..
	rm -rf .tmp
end