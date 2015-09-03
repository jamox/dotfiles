if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#source ~/.bash/git-completion.bash
#source ~/.bash/extract.bash
export PATH=/Users/jamo/.rbenv/shims:/Users/jamo/android-sdks/platform-tools:/Users/jamo/android-sdks/tools:/Users/jamo/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$PATH
eval "$(rbenv init -)"


export ANDROID_HOME=/usr/local/opt/android-sdk
