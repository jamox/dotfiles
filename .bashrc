if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#source ~/.bash/git-completion.bash
#source ~/.bash/extract.bash
if [ -d $HOME/.rbenv ]; then
  export PATH=/Users/jamo/.rbenv/shims:/Users/jamo/android-sdks/platform-tools:/Users/jamo/android-sdks/tools:/Users/jamo/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$PATH
  eval "$(rbenv init -)"
fi


export ANDROID_HOME=/usr/local/opt/android-sdk

# added by travis gem
[ -f /Users/jamo/.travis/travis.sh ] && source /Users/jamo/.travis/travis.sh
