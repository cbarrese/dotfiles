all: dotfiles gitconfig

dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".*.swp" -not -name ".irssi" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		echo ln -sfn $$file $(HOME)/$$f; \
	done; \
	ln -fn $(CURDIR)/gitignore $(HOME)/.gitignore;

gitconfig:
	# add git global config
	git config --global user.name "Chris Barrese";
	git config --global user.email chris.barrese@gmail.com;
	git config --global core.excludesfile ~/.gitignore;

