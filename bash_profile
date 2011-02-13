# This loads RVM into a shell session.
"$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#PATH
export PYTHON_HOME=/usr/local/Cellar/python/2.7.1
export SCALA_HOME=/usr/local/lib/scala
export MAVEN_HOME=/usr/local/lib/apache-maven-3.0.2
export ANT_HOME=/usr/local/lib/apache-ant-1.8.2

export PATH=$PYTHON_HOME/bin:$SCALA_HOME/bin:$MAVEN_HOME\bin:$ANT_HOME\bin:$PATH

#aliases
alias tw="open -a TextWrangler"
alias ..="cd .."

