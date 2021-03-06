#!/bin/sh

#environment
export BREW_HOME=/usr/local/Cellar
export NODE_HOME=$BREW_HOME/node/0.4.7
export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_29-b11-402.jdk/Contents/Home
export PYTHON_HOME=/opt/local/Library/Frameworks/Python.framework/Versions/2.7
export SCALA_HOME=/usr/local/lib/scala
export MAVEN_HOME=/usr/local/lib/apache-maven-3.0.2
export ANT_HOME=/usr/local/lib/apache-ant-1.8.2
export CLICOLOR=1
export PS1="\e[0;33m[\u@\w]\$ \e[m "
export MKTOOLNIX=/Applications/Mkvtoolnix.app/Contents/MacOS
export PORTS_TOOL=/opt/local/bin:/opt/local/sbin
export POSTGRES_HOME=/usr/local/Cellar/postgresql/9.2.4
export PLAY_FRAMEWORK=/usr/local/Cellar/play/2.1.2
export NPM_BIN=/usr/local/share/npm/bin

#path
export PATH=$JAVA_HOME/bin:$PYTHON_HOME/bin:$SCALA_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$MKTOOLNIX:$PORTS_TOOL:$POSTGRES_HOME/bin:PLAY_FRAMEWORK\bin:/usr/local/sbin:$NPM_BIN:$PATH

#aliases
alias ..="cd .. && pwd"
alias mongo.start="sudo mongod run --config /usr/local/Cellar/mongodb/1.8.1-x86_64/mongod.conf"
alias redis.start="sudo redis-server /usr/local/etc/redis.conf"
alias pg="pg_ctl -D /opt/local/var/db/default -l /opt/local/var/db/default/postgres.log"
alias apache2="sudo apachectl"
alias finder="open -a 'Finder'"
alias tmreload="osascript -e 'tell app \"TextMate\" to reload bundles'"
alias sub="open -a 'Sublime Text'"
alias sub2="open -a 'Sublime Text 2'"
alias b2g="open 'Library/Application Support/Firefox/Profiles/csd4golj.default/extensions/r2d2b2g@mozilla.org/resources/r2d2b2g/data/mac64/B2G.app' --args"

#utility
function cl () {
	pwd
	cd "$1"
	ls -lah
}

#rvm
"$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#NVM
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
