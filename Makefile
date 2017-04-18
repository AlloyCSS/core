bin = node_modules/.bin/gulp
files=$(filter-out Makefile, $(wildcard *))

tests:
	npm install

install:; @npm install

$(files) %:;@$(bin) $@

count:; find . -name '*.css' -not -path './node_modules*' | xargs wc -l

.PHONY: install $(files) count
