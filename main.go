package main

import (
	caddycmd "github.com/caddyserver/caddy/v2/cmd"

	// plug in Caddy modules here
	_ "github.com/caddyserver/caddy/v2/modules/standard"
	_ "github.com/abiosoft/caddy-exec"
	_ "github.com/caddy-dns/cloudflare"
	_ "github.com/greenpau/caddy-auth-jwt"
	_ "github.com/greenpau/caddy-auth-portal"
	_ "github.com/caddyserver/ntlm-transport"
	_ "github.com/RussellLuo/caddy-ext/ratelimit"
	_ "github.com/kirsch33/realip"
	_ "github.com/porech/caddy-maxmind-geolocation"
	_ "github.com/caddy-dns/digitalocean"
	_ "github.com/gamalan/caddy-tlsredis"
	_ "github.com/lucaslorentz/caddy-docker-proxy/plugin/v2"
)

func main() {
	caddycmd.Main()
}