# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="alanpeabody"
#robbyrussell

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

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

export PATH=$HOME/bin:/Applications/eclipse:$HOME/android-sdks/platform-tools:$HOME/android-sdks/tools:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/usr/local/Cellar/ansible/1.4.3/bin/
eval "$(rbenv init -)"

alias bower='noglob bower' # bower fix
alias jamo="mosh jamo.fi"
alias kapsi="mosh lakka.kapsi.fi"
alias tmc-server="mosh tmc.mooc.fi"
alias melkinkari="ssh jarmoiso@melkinkari.cs.helsinki.fi -C"
alias rr=/usr/bin/r
#alias vim="mvim -v"
alias e="emacsclient -n"
alias mlab="matlab -nodesktop"

alias psql-start="postgres -D /usr/local/var/postgres"

alias cswlan="sudo spoof-mac set 74:2f:68:CB:B5:2E en0"
alias csnet="sudo spoof-mac set 74:2f:68:CB:B5:2E en0"
alias cslan="sudo spoof-mac set 74:2f:68:CB:B5:2E en2"
alias chrome-sleep='killall -STOP "Google Chrome Canary"'
alias chrome-start='killall -CONT "Google Chrome Canary"'

export LC_CTYPE=en_US.UTF-8
export ANDROID_HOME=/usr/local/opt/android-sdk
export GNUTERM x11

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
