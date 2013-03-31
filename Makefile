BASH_CONF = ~/bash.conf
NPM_COMPLETION = ~/.npm-completion

all: ~/.bashrc ~/.bash_profile

~/.bashrc: $(NPM_COMPLETION)
	ln -s $(BASH_CONF)/bashrc.sh ~/.bashrc

~/.bash_profile:
	ln -s $(BASH_CONF)/bashrc.sh ~/.bash_profile

$(NPM_COMPLETION):
	npm completion > $(NPM_COMPLETION)

clean:
	if [ -L ~/.bashrc ]; then rm ~/.bashrc ; fi
	if [ -L ~/.bash_profile ]; then rm ~/.bash_profile ; fi
	if [ -L $(NPM_COMPLETION) ]; then rm $(NPM_COMPLETION) ; fi
