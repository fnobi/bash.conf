# extend path
PATH="/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:~/bin:$PATH"
export PATH

# use perlbrew
source ~/perl5/perlbrew/etc/bashrc
perlbrew use 5.14.4

# use nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
nodebrew use 0.10.2 > /dev/null

# use rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin
source $HOME/.rvm/scripts/rvm
rvm use 2.1.1 > /dev/null

# java_home
export JAVA_HOME=`/usr/libexec/java_home`

# android sdk
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/tools:$PATH
export PATH=$HOME/dev/adt-bundle-mac-x86_64-20131030/sdk/platform-tools:$PATH

# go path & go root
export GOROOT=/usr/local/go
export GOPATH=$HOME/dev/gocode
export PATH=$PATH:$GOPATH/bin

# include scripts
for file in $( ls ~/bash.conf/script/*.sh ); do
    source $file
done

# npm completion
source ~/.npm-completion

# emacs shellenv
source ~/bash.conf/emacs-shellenv.sh
