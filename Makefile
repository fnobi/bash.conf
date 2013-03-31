BASH_CONF = ~/bash.conf

all: ~/.bashrc ~/.bash_profile

~/.bashrc: ~/.npm-completion
	ln -s $(BASH_CONF)/bashrc.sh ~/.bashrc

~/.bash_profile:
	ln -s $(BASH_CONF)/bashrc.sh ~/.bash_profile

~/.npm-completion:
	npm completion > $(BASH_CONF)/.npm-completion

clean:
	if [ -L ~/.bashrc ]; then rm ~/.bashrc ; fi
	if [ -L ~/.bash_profile ]; then rm ~/.bash_profile ; fi
	if [ -L ~/.npm-completion ]; then rm ~/.npm-completion ; fi
