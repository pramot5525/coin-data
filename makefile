PKG=github.com/pramot5525/coin-data
REV=`git rev-parse --short HEAD`
DATE=`date -u '+%Y-%m-%d_%I:%M:%S%p'`
BUILDFLAGS= -ldflags "-X main.date=$(DATE) -X main.release=$(REV)"
TAGS=mysql

server:
	go build $(BUILDFLAGS) -tags $(TAGS) -o $@ $(PKG)
