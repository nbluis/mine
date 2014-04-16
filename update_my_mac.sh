#!/bin/sh

LOG_PATH=/tmp/update_my_mac.log

rm -f $LOG_PATH

function log() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" 2>&1 | tee -a $LOG_PATH
}

log "Starting system update"
log "This log is also available in $LOG_PATH"

if [ "$(whoami)" = 'root' ]; then
  log "Do not use sudo to run this scripts!";
  exit 1;
fi

#Homebrew
if which -s brew; then
  log "===> Updating homebrew"
  brew update 2>&1 | tee -a $LOG_PATH
  brew upgrade 2>&1 | tee -a $LOG_PATH
  log "===> Cleaning homebrew"
  brew cleanup 2>&1 | tee -a $LOG_PATH
fi

#MacPorts
if which -s port; then
  log "===> Updating MacPorts"
  sudo port selfupdate 2>&1 | tee -a $LOG_PATH
  sudo port upgrade outdated 2>&1 | tee -a $LOG_PATH
  log "===> Cleaning MacPorts"
  sudo port -f uninstall inactive 2>&1 | tee -a $LOG_PATH
  sudo port clean -f --all all 2>&1 | tee -a $LOG_PATH
  #Remove leftover build files
  sudo rm -rf /opt/local/var/macports/build/* 2>&1 | tee -a $LOG_PATH
  #Remove download files
  sudo rm -rf /opt/local/var/macports/distfiles/* 2>&1 | tee -a $LOG_PATH
  #Remove archives
  sudo rm -rf /opt/local/var/macports/packages/* 2>&1 | tee -a $LOG_PATH
fi

#RVM
if which -s rvm; then
  log "===> Updating RVM"
  rvm get head 2>&1 | tee -a $LOG_PATH
  log "===> Cleaning RVM"
  rvm cleanup all 2>&1 | tee -a $LOG_PATH
fi

#NPM
if which -s npm; then
  log "===> Updating NPM"
  npm update -g 2>&1 | tee -a $LOG_PATH
fi

log "===> System update finished."
log "See full update log in $LOG_PATH"
