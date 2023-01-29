gen:
	mint bootstrap --link
	mint run xcodegen generate
	bundle install
	bundle exec pod install
	xed .
