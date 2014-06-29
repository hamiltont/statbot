test:
	node_modules/mocha/bin/mocha --compilers coffee:coffee-script --reporter min --watch

install:
	npm install .
	mkdir data
	echo "{}" > data/counters
	mkdir src/config

spec:
	node_modules/mocha/bin/mocha --compilers coffee:coffee-script --reporter spec

run:
	if [ ! -f src/config/config.coffee ] ; \
	then \
		cp src/config.coffee.sample src/config/config.coffee ; \
	fi;
	if [ ! -f data/counters ] ; \
	then \
		echo "{}" > data/counters ; \
	fi;
	node_modules/coffee-script/bin/coffee src/statbot.coffee

daemon:
	node_modules/coffee-script/bin/coffee src/statbot.coffee &

compile:
	node_modules/coffee-script/bin/coffee --compile --output lib/ src/

.PHONY: test spec run daemon install compile
