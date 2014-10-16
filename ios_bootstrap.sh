
#!/bin/bash

echo 'RUNNING IOS BOOTSTRAP SCRIPT THE FOLLOWING WILL BE INSTALLED IN YOUR COMPUTER'


echo '1. HOMEBREW'
echo '2. GIT'
echo '3. COCOAPOD'

#assist functions
doExist()
{
	
	if foobar_loc="$(type -p "$1")" || [ -z "$foobar_loc" ]; then
  		return 1
	fi

	return 0

}

doExist brew

if [ $? -eq 0 ]; then
	echo 'Installing Homebrew...'
	sudo ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

doExist git

if [ $? -eq 0 ]; then
	echo 'Installing Git...'
	sudo brew install git
fi

doExist pod

if [ $? -eq 0 ]; then
	echo 'Installing CocoaPods...'
	sudo gem install cocoapods
	sudo pod setup
fi


echo 'Finished installing dependencies for ios Project developments, for bugs contact rsenthilnathan@sapient.com'
#check for get version











