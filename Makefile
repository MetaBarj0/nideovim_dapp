include make.d/Makefile.variables
include make.d/Makefile.targets

export

help:
	@. nideovim/make.d/scripts/help.sh

init:
	@. nideovim/make.d/scripts/init.sh

build:
	@$(MAKE) target_stage=end -C nideovim build
	@. make.d/scripts/build.sh

up:
	@. nideovim/make.d/scripts/up.sh

shell:
	@. nideovim/make.d/scripts/shell.sh

down:
	@. nideovim/make.d/scripts/down.sh

