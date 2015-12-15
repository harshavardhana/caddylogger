
build:
	@go build

all: build caddy-logger

t1:
	@caddydev --after gzip caddylogger

caddy-logger:
	@caddydev --after gzip --output caddy-logger caddylogger
