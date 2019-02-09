.PHONY: all

include Make.conf

all: development system

system: configure_dns

configure_dns:
	$(INSTALL) ${INSTALL_ARGUMENTS} ${DNS_TOOLS}
	$(info !!!Change Listening Port of dnscrypt to 53000)
	sh dns/setup.sh

development: editors debuggers environments languages tools tools nvim

tools: 
	$(INSTALL) ${INSTALL_ARGUMENTS} ${TOOLS}

languages: 
	$(INSTALL) ${INSTALL_ARGUMENTS} ${LANGUAGES}

environments: 
	$(INSTALL) ${INSTALL_ARGUMENTS} ${ENVIRONMENTS}

debuggers: 
	$(INSTALL) ${INSTALL_ARGUMENTS} ${DEBUGGERS}

editors:
	$(INSTALL) ${INSTALL_ARGUMENTS} ${EDITORS} 

nvim: editors tools
	sh nvim/setup.sh
