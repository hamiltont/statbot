test:
	node_modules/mocha/bin/mocha --compilers coffee:coffee-script --reporter min --watch

install:
	npm install .
	mkdir data
	echo "{}" > data/counters

spec:
	node_modules/mocha/bin/mocha --compilers coffee:coffee-script --reporter spec

run:
	node_modules/coffee-script/bin/coffee src/statbot.coffee

daemon:
	node_modules/coffee-script/bin/coffee src/statbot.coffee &

.PHONY: test spec run daemon install
