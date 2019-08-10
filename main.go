package main

import(
	"flag"
	"os"
	"regexp"

	// Docker loader
	_ "github.com/gamalan/caddy-docker-proxy/plugin"

	// DNS Plugins
	_ "github.com/caddyserver/dnsproviders/azure"
	_ "github.com/caddyserver/dnsproviders/cloudflare"
	_ "github.com/caddyserver/dnsproviders/digitalocean"
	_ "github.com/caddyserver/dnsproviders/googlecloud"
	_ "github.com/caddyserver/dnsproviders/namecheap"

	// Plugins
	_ "github.com/nicolasazrak/caddy-cache"
	_ "github.com/epicagency/caddy-expires"
	_ "github.com/abiosoft/caddy-git"
	_ "github.com/hacdias/caddy-minify"
	_ "github.com/miekg/caddy-prometheus"
	_ "github.com/xuqingfeng/caddy-rate-limit"
	_ "github.com/captncraig/caddy-realip"
	_ "github.com/freman/caddy-reauth"
	_ "github.com/techknowlogick/caddy-s3browser"

	"github.com/caddyserver/caddy/caddy/caddymain"
)

var enableTelemetryFlag bool
var isTrue = regexp.MustCompile("(?i)^(true|yes|1)$")

// main build caddy with docker loader for caddy version 1.0.1
func main() {
	flag.BoolVar(&enableTelemetryFlag, "enable-telemetry", false, "Enable caddy telemetry")

	flag.Parse()

	if enableTelemetryEnv := os.Getenv("CADDY_ENABLE_TELEMETRY"); enableTelemetryEnv != "" {
		caddymain.EnableTelemetry = isTrue.MatchString(enableTelemetryEnv)
	} else {
		caddymain.EnableTelemetry = enableTelemetryFlag
	}

	caddymain.Run()

	// Keep caddy running after main instance is stopped
	select {}
}