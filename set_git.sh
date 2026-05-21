if [ -f ~/.gitconfig ];then
       	cp ~/.gitconfig ~/.gitconfig.backup
        if grep alias ~/.gitconfig ;then
		echo 'Pass'
		continue
	else
		cat gitconfig.txt >> ~/.gitconfig
		echo 'Add alias'
	fi
else
	cp gitconfig.txt ~/.gitconfig
fi
