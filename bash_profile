 "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

##
# Your previous /Users/eduardobohrer/.profile file was backed up as /Users/eduardobohrer/.profile.macports-saved_2010-12-27_at_23:32:42
##

# MacPorts Installer addition on 2010-12-27_at_23:32:42: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#aliases
alias tw="open -a TextWrangler"
alias ..="cd .."

#PATH
export PYTHON_HOME=/usr/local/Cellar/python/2.7.1

export PATH=$PYTHON_HOME/bin:$PATH