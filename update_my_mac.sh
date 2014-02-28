#!/bin/sh

if [ "$(whoami)" = 'root' ]; then
  echo "Do not use sudo to run this scripts!";
  exit 1;
fi

#Homebrew
if which -s brew; then
	echo "===> Updating homebrew"
	brew update
	brew upgrade
	echo "===> Cleaning homebrew"
	brew cleanup
fi

#MacPorts
if which -s port; then
	echo "===> Updating MacPorts"
	sudo port selfupdate
	sudo port upgrade outdated
	echo "===> Cleaning MacPorts"
	sudo port -f uninstall inactive
	sudo port clean -f --all all
	#Remove leftover build files
	sudo rm -rf /opt/local/var/macports/build/*
	#Remove download files
	sudo rm -rf /opt/local/var/macports/distfiles/*
	#Remove archives
	sudo rm -rf /opt/local/var/macports/packages/*
fi

#RVM
if which -s rvm; then
	echo "===> Updating RVM"
	rvm get head
	echo "===> Cleaning RVM"
	rvm cleanup all
fi

#NPM
if which -s npm; then
	echo "===> Updating NPM"
	npm update -g
fi

echo "===> System successfully updated!"