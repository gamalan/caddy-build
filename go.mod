module github.com/gamalan/caddy-build

go 1.12

require (
	github.com/abiosoft/caddy-git v0.0.0-20190703061829-f8cc2f20c9e7
	github.com/caddyserver/caddy v1.0.2
	github.com/caddyserver/dnsproviders v0.3.0
	github.com/captncraig/caddy-realip v0.0.0-20190710144553-6df827e22ab8
	github.com/epicagency/caddy-expires v1.1.1
	github.com/freman/caddy-reauth v0.0.0-20190703014110-860404f878d8
	github.com/gamalan/caddy-docker-proxy v0.3.1-0.20190810075619-d84552ec09d1
	github.com/hacdias/caddy-minify v1.0.2
	github.com/miekg/caddy-prometheus v0.0.0-20190709133612-1fe4cb19becd
	github.com/nicolasazrak/caddy-cache v0.3.4
	github.com/techknowlogick/caddy-s3browser v0.0.0-20190806030829-f6605b39579a
	github.com/xuqingfeng/caddy-rate-limit v1.6.4
)

replace github.com/h2non/gock => gopkg.in/h2non/gock.v1 v1.0.14
