all: dotfiles gitconfig

dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".gitconfig" -not -name ".git" -not -name ".*.swp" -not -name ".irssi" -not -name ".gnupg" -not -name ".dotfiles"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \

	rm -f $(HOME)/.gitignore; 
	cp $(CURDIR)/gitignore $(HOME)/.gitignore;
	rm -f $(HOME)/.gitconfig;
	cp $(CURDIR)/gitconfig $(HOME)/.gitconfig;

gitconfig:
	# add git global config
	git config --global user.name "Chris Barrese";
	git config --global user.email chris.barrese@gmail.com;
	git config --global core.excludesfile ~/.gitignore;

