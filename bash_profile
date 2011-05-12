#!/bin/sh

#environment
export BREW_HOME=/usr/local/Cellar
export NODE_PATH=$BREW_HOME/node/0.4.7
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export PYTHON_HOME=/opt/local/Library/Frameworks/Python.framework/Versions/2.7
export SCALA_HOME=/usr/local/lib/scala
export MAVEN_HOME=/usr/local/lib/apache-maven-3.0.2
export ANT_HOME=/usr/local/lib/apache-ant-1.8.2
export CLICOLOR=1
export MKTOOLNIX=/Applications/Mkvtoolnix.app/Contents/MacOS/
export PORTS_TOOL=/opt/local/bin:/opt/local/sbin

#path
export PATH=$JAVA_HOME/bin:$PYTHON_HOME/bin:$SCALA_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$MKTOOLNIX:$NODE_PATH/lib/node_modules:$PORTS_TOOL:$PATH

#aliases
alias tw="open -a TextWrangler"
alias ..="cd .. && pwd"
alias mongo.start="mongod run --config /usr/local/Cellar/mongodb/1.8.1-x86_64/mongod.conf"
alias redis.start="redis-server /usr/local/etc/redis.conf"

#utility
cl () { 
	pwd
	cd "$1"
	ls -lah
}

#rvm
"$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
