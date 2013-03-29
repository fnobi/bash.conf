bash.conf
=========

bash config files, and Makefile for installation.

## Install
```bash
cd ~
git clone https://github.com/fnobi/bash.conf.git

cd bash.conf
make
```

## Uninstall
```bash
% cd ~/bash.conf
% make clean
```

## Add shell script
```bash
% emacs ~/bash.conf/script/hoge.sh
# edit "hoge" shell script
exit
```

```bash
# when bash start, "hoge" have been loaded.
% hoge
```
