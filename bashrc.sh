# config
bash_root=~/bash.conf
config_file=$bash_root/config.sh

if [ -f $config_file ]; then
    source $config_file
fi

# extend path
PATH=$HOME/bin:$PATH
PATH=/opt/local/sbin:$PATH
PATH=/opt/local/bin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/usr/local/bin:$PATH
export PATH

# use anyenv
if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

# git diff-highlight
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight/

# java_home
export JAVA_HOME=`/usr/libexec/java_home`

# android sdk
export ANDROID_SDK_ROOT=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/tools:$PATH
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/platform-tools:$PATH
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/apache-ant-1.9.3/bin:$PATH

# android ndk
export NDK_TOOLCHAIN_VERSION=4.8
export NDK_ROOT=$HOME/dev/android-ndk-r10d
export PATH=$HOME/dev/android-ndk-r10d/:$PATH

# go path & go root
export GOROOT=/usr/local/go
export GOPATH=$HOME/dev/gocode
export PATH=$GOPATH/bin:$PATH

# haskell
export PATH=~/Library/Haskell/bin:$PATH

# yarn
export PATH=$HOME/.yarn/bin:$PATH

# flutter
export PATH=$HOME/dev/flutter/bin:$PATH

# google-cloud-sdk
# 本当は後の記述で不要なはずだが…？ :thinking:
export PATH=$HOME/google-cloud-sdk/bin:$PATH

# include scripts
for file in $( ls $bash_root/script/*.{sh,bash} ); do
    source $file
done

# completion
source /usr/local/etc/bash_completion.d/*.bash

# npm completion
source ~/.npm-completion

# Add PGDATA
export PGDATA=/usr/local/var/postgres

# mod ulimit
ulimit -n 2048

# mod pkg-config path
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig/

# emacs shellenv
source ~/bash.conf/emacs-shellenv.sh

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "~/.gvm/bin/gvm-init.sh" ]] && source "~/.gvm/bin/gvm-init.sh"

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then . '~/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then . '~/google-cloud-sdk/completion.bash.inc'; fi
