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

# android sdk
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/tools:$PATH
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/platform-tools:$PATH
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/apache-ant-1.9.3/bin:$PATH

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

# emacs shellenv
source ~/bash.conf/emacs-shellenv.sh
