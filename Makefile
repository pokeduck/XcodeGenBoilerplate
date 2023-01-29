gen:
	mint bootstrap --link
	mint run xcodegen generate
	bundle install
	bundle exec pod install
	xed .

install:
	#mint
	brew install mint

	#node
	brew install node@18
	zsh ./after-node-install.sh

	#安裝 git-format-staged
	npm install --global git-format-staged
	#安裝 git hook pre-commit
	zsh ./install-pre-commit-hooks.sh
	
	#rbenv
	brew install rbenv
	
	#安裝 Bundler
	rbenv install 2.7.2
	rbenv local 2.7.2
	rbenv rehash
	gem install bundler

brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
