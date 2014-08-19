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

# use nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
nodebrew use 0.10.2 > /dev/null

# use plenv
export PATH=$HOME/.plenv/bin:$PATH
eval "$(plenv init -)"
plenv global 5.18.2

# use rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
rbenv global 2.1.1

# java_home
export JAVA_HOME=`/usr/libexec/java_home`

# cocos2dx
# export COCOS2DX_ROOT=$HOME/dev/cocos2d-x-3.2/
export COCOS2DX_ROOT=$HOME/dev/cocos2d-js-v3.0-rc1/

# android sdk
export ANDROID_SDK_ROOT=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/tools:$PATH
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/platform-tools:$PATH
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/apache-ant-1.9.3/bin:$PATH

# android ndk
export NDK_TOOLCHAIN_VERSION=4.8
export NDK_ROOT=$HOME/dev/android-ndk-r9d
export PATH=$HOME/dev/android-ndk-r9d/:$PATH

# go path & go root
export GOROOT=/usr/local/go
export GOPATH=$HOME/dev/gocode
export PATH=$GOPATH/bin:$PATH

# haskell
export PATH=~/Library/Haskell/bin:$PATH

# include scripts
for file in $( ls $bash_root/script/*.sh ); do
    source $file
done

# npm completion
source ~/.npm-completion

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=$COCOS2DX_ROOT"tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/Users/fujisawa-shin/dev/adt-bundle-mac-x86_64-20131030/apache-ant-1.9.3/bin
export PATH=$ANT_ROOT:$PATH

# emacs shellenv
source ~/bash.conf/emacs-shellenv.sh
