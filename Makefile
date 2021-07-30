# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

.DEFAULT_GOAL := default

DOC = draft-harwood-krb-pkinit-dh-upsize

X := $(if $(shell which xml2rfc), xml2rfc, \
	$(error "xml2rfc not found; exiting"))

%.html: %.xml
	$(X) --html $<

%.txt: %.xml
	$(X) --text $<

default: $(DOC).txt

all: $(DOC).txt $(DOC).html

clean:
	rm -f $(DOC).html $(DOC).txt
