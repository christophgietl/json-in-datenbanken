REVEAL_DIR = docs/reveal.js

help:	## Display this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

present_slides:	## Start a local webserver using gulp serve
	cd "${REVEAL_DIR}" && node_modules/.bin/gulp serve --root=..

set_up_local_reveal_js_environment:	## Install reveal.js to allow local preview of slides
	git submodule update --init
	cd "${REVEAL_DIR}" && npm install
