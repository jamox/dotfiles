set fish_greeting ''
# Make colors render properly
set TERM xterm-256color
set GOPATH $HOME/Code/go
set PATH $GOPATH/bin $HOME/bin /Applications/eclipse $HOME/android-sdks/platform-tools $HOME/android-sdks/tools $HOME/bin $PATH
#set PATH (ruby -rubygems -e "puts Gem.user_dir")/bin $PATH


alias psql-start="postgres -D /usr/local/var/postgres"
set LC_CTYPE en_US.UTF-8
set ANDROID_HOME /usr/local/opt/android-sdk
set GNUTERM x11

set JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/

# Abbreviations
set -e _a

set _a $_a 'be=bundle exec'
set _a $_a 'gc=git commit'

set fish_user_abbreviations $_a
set -e _a

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
rvm default
