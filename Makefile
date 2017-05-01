bin = node_modules/.bin/gulp
files=$(filter-out Makefile, $(wildcard *))

tests:
	npm install

install:; @npm install

$(files) %:;@$(bin) $@

count:; find . -name '*.css' ! -path './node_modules*' ! -path './dist*' | xargs wc -l

.PHONY: install $(files) count
