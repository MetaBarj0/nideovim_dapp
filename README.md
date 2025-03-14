# nideovim_dapp

An extension of `nideovim` especially suited for decentralize decentralized
application development for the Ethereum Virtual Machine (EVM)

## prerequisites

### usage

- terminal based
- no graphical user interface

### tooling

- POSIX compliant shell
- git (`nideovim is a submodule`)
- rev
- cut
- docker (either native or Docker Desktop or Orbstack)
  - buildx plugin
  - compose plugin
- make
- command
- GNU sed
- (optional) less

Generally speaking, a recent linux distribution or MacOS should do the job.
For MacOS, ensure to install `gsed` using Homebrew for instance.

### hardware

- some giga-bytes of free storage to build and use the stuff

## how to use?

1. configure the project interactively with the `make init` command.
2. build the `IDE` with the `make build` command.
3. start the `IDE` with the `make up` command.
4. use the `IDE` with the `make shell` command.
5. shutdown with the `make down` command.
6. getting some help with the `make help` command.

## base project

`nideovim_dapp` is an extension of the parent project
[nideovim](https://github.com/MetaBarj0/nideovim.git). It is specified as
submodule in the `nideovim` folder.
