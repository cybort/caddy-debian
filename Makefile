 # Makefile for building packages for Caddy.

.PHONY: debian
debian:
	dpkg-buildpackage -us -uc -b --target-arch amd64

.PHONY: cp
cp:
	cp $$GOPATH/src/github.com/mholt/caddy/caddy/caddy .

.PHONY: clean
clean:
	rm -f caddy
	dh_clean
