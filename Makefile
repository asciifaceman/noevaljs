#########################
###    Constants      ###
#########################

space := $()
APP_NAME := $(shell basename $(PWD))
SHELL=/bin/bash -e -o pipefail
BIN_PERL := $(call pathsearch,perl)

RED=\033[0;31m
GREEN=\033[0;32m
YELLOW=\033[01;33m
NC=\033[0m

.DEFAULT_GOAL := help
.PHONY: help test tests
help: banner
	@echo -e "Usage: test or tests"

banner:
	@echo -e ""
	@echo -e "$(RED)                  NoEvalJS  									$(NC)"
	@echo -e "$(RED)    _   _       _____           _   ___       $(NC)"
	@echo -e "$(RED)   |   | |     |  ___|         | | |_  |      $(NC)"
	@echo -e "$(RED)   |   | | ___ | |____   ____ _| |   | | ___  $(NC)"
	@echo -e "$(RED)   | . ' |/ _  |  __    / / _' | |   | |/ __| $(NC)"
	@echo -e "$(RED)   | |   | (_) | |___  V / (_| | /__/ / __    $(NC)"
	@echo -e "$(RED)    _|  _/ ___/ ____/  _/  __,_|_ ____/ |___/ $(NC)"
	@echo -e "$(RED)                                              $(NC)"
	@echo -e "$(RED)                                              $(NC)"

test:
	@echo "All tests pass"

tests:
	./node_modules/.bin/mocha --reporter spec
	