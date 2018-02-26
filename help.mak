# Makefile help system

.PHONY: help
help:	## display help messages
	@grep -E -h '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "} { printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 }'
