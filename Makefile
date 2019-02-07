.PHONY: all

INSTALL = sudo pacman
INSTALL_ARGUMENTS = -S --noconfirm
SHELL = sh

EDITORS = vim neovim
DEBUGGERS = gdb
ENVIRONMENTS = gcc
LANGUAGES = python python-pip
TOOLS = git 

all: development 

development: editors debuggers environments languages tools tools nvim

tools: 
	${INSTALL} ${INSTALL_ARGUMENTS} ${TOOLS}

languages: 
	${INSTALL} ${INSTALL_ARGUMENTS} ${LANGUAGES}

environments: 
	${INSTALL} ${INSTALL_ARGUMENTS} ${ENVIRONMENTS}

debuggers: 
	${INSTALL} ${INSTALL_ARGUMENTS} ${DEBUGGERS}

editors:
	${INSTALL} ${INSTALL_ARGUMENTS} ${EDITORS} 

nvim: editors tools
	${SHELL} nvim/setup.sh	
