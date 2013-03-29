BASH_CONF = ~/bash.conf

all: ~/.bashrc ~/.bash_profile

~/.bashrc:
	ln -s $(BASH_CONF)/bashrc.sh ~/.bashrc

~/.bash_profile:
	ln -s $(BASH_CONF)/bashrc.sh ~/.bash_profile

clean:
	rm ~/.bashrc
	rm ~/.bash_profile
