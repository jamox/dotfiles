# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="risto"
#ZSH_THEME="alanpeabody"
#robbyrussell

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-hubflow github hub)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=$HOME/bin:/Applications/eclipse:$HOME/android-sdks/platform-tools:$HOME/android-sdks/tools:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/Cellar/ansible/1.4.3/bin/:$PATH

if [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
  eval "$(rbenv init -)" >/dev/null 2>&1
  rbenv rehash  >/dev/null 2>&1
fi



alias mlab="matlab -nodesktop"

alias psql-start="postgres -D /usr/local/var/postgres"

alias cswlan="sudo spoof-mac set 74:2f:68:CB:B5:2E en0"
alias csnet="sudo spoof-mac set 74:2f:68:CB:B5:2E en0"
alias cslan="sudo spoof-mac set 74:2f:68:CB:B5:2E en2"
alias chrome-sleep='killall -STOP "Google Chrome"'
alias chrome-start='killall -CONT "Google Chrome"'

export LC_CTYPE=en_US.UTF-8
export ANDROID_HOME=/usr/local/opt/android-sdk
export GNUTERM x11

if [ -d "/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/" ]
then
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/"
elif [ -d "/usr/lib/jvm/java-7-openjdk-amd64/jre/" ]
then
  export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/"
fi

if [ -f /usr/local/rvm/scripts/rvm ]
then
  source /usr/local/rvm/scripts/rvm
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# added by travis gem
[ -f /Users/jamo/.travis/travis.sh ] && source /Users/jamo/.travis/travis.sh

export NVM_DIR="/home/jamo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export M3_HOME=/usr/local/Cellar/maven/3.3.3/
eval "$(docker-machine env default)"
