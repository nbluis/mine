#!/bin/sh

#environment
export BREW_HOME=/usr/local/Cellar
export NODE_HOME=$BREW_HOME/node/0.4.7
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export PYTHON_HOME=/usr/local/Cellar/python/2.7.1
export SCALA_HOME=/usr/local/lib/scala
export MAVEN_HOME=/usr/local/lib/apache-maven-3.0.2
export ANT_HOME=/usr/local/lib/apache-ant-1.8.2
export CLICOLOR=1
export MKTOOLNIX=/Applications/Mkvtoolnix.app/Contents/MacOS/

#path
export PATH=$JAVA_HOME\bin:$PYTHON_HOME\bin:$SCALA_HOME\bin:$MAVEN_HOME\bin:$ANT_HOME\bin:$MKTOOLNIX:$NODE_HOME\lib:$PATH


#aliases
alias tw="open -a TextWrangler"
alias ..="cd .. && pwd"

#utility
cl () { 
	pwd
	cd "$1"
	ls -lah
}

#rvm
"$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
