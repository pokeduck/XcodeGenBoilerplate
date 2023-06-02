list:
	@echo 'The following lists all the commands for the Makefile.'
	@echo 'gen -> Install and generate all the necessary elements for the project.'
	@echo 'pi -> Execute "pod install" via Bundler.'
	@echo 'piur -> Execute "pod install --repo-update" via Bundler.'
	@echo 'install -> Install all the necessary for this project.'
	@echo 'install_rbenv -> Install rbenv and use Ruby version 2.7.7.'
	@echo 'install_git_hook -> Install nvm and use Node.js version 18.16.0,then install git-format-staged and set up a Git hook for SwiftFormat.'
	@echo 'nvm -> The script to install nvm using the official method.'
	@echo 'brew -> The script to install Homebrew using the official method.'

gen:
	mint bootstrap --link
	zsh ./scripts/create-rswift.sh
	mint run xcodegen generate
	bundle install
	make pi
	xcodebuild -workspace XcodeGenSample.xcworkspace -scheme XcodeGenSample-PROD -sdk "iphonesimulator"
	xed XcodeGenSample.xcworkspace


pi:
#pod install
	bundle install
	bundle exec pod install
piur:
#pod install update repo
	bundle install
	bundle exec pod install --repo-update

install:
#Install mint
	brew install mint
	
	make install_rbenv
	make install_githook

install_rbenv:
#Install rbenv & Bundler
	zsh ./scripts/install-ruby2-7-7.sh
	

install_githook:
# The method of invoking nvm is derived from  https://github.com/nvm-sh/nvm/issues/1446#issuecomment-527027575
	source $(HOME)/.nvm/nvm.sh;\
	nvm install v18.16.0;\
	nvm use v18.16.0;\
	source ~/.zshrc
	node -v
	npm -v

#Install git-format-staged
	npm install --global git-format-staged
#Install git hook pre-commit
	zsh ./scripts/install-pre-commit-hooks.sh
nvm:
# The following installation steps are provided directly from the official website at https://github.com/nvm-sh/nvm#installing-and-updating
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
	zsh ./scripts/nvm-after-install.sh

brew:
# The following installation steps are provided directly from the official website at https://brew.sh/
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

