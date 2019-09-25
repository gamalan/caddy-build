module github.com/gamalan/caddy-build

go 1.12

require (
	github.com/BTBurke/caddy-jwt v3.7.1+incompatible
	github.com/abiosoft/caddy-git v0.0.0-20190703061829-f8cc2f20c9e7
	github.com/caddyserver/caddy v1.0.3
	github.com/caddyserver/dnsproviders v0.3.0
	github.com/captncraig/caddy-realip v0.0.0-20190710144553-6df827e22ab8
	github.com/epicagency/caddy-expires v1.1.1
	github.com/freman/caddy-reauth v0.0.0-20190703014110-860404f878d8
	github.com/gamalan/caddy-tlsredis v0.1.1
	github.com/hacdias/caddy-minify v1.0.2
	github.com/lucaslorentz/caddy-docker-proxy/plugin v0.0.0-20190825191011-add5f834ffa0
	github.com/miekg/caddy-prometheus v0.0.0-20190709133612-1fe4cb19becd
	github.com/nicolasazrak/caddy-cache v0.3.4
	github.com/payintech/caddy-datadog v0.0.0-20190812115610-44482c4c027a
	github.com/philhofer/fwd v1.0.0 // indirect
	github.com/pquerna/cachecontrol v0.0.0-20180517163645-1555304b9b35 // indirect
	github.com/pteich/caddy-tlsconsul v0.0.0-20190709201921-ebc221e392e1
	github.com/tarent/lib-compose v0.0.0-20170829113806-69430f91d1d6 // indirect
	github.com/tarent/loginsrv v1.3.1
	github.com/tarent/logrus v0.11.5 // indirect
	github.com/techknowlogick/caddy-s3browser v0.0.0-20190806030829-f6605b39579a
	github.com/tinylib/msgp v1.1.0 // indirect
	github.com/xuqingfeng/caddy-rate-limit v1.6.4
	gopkg.in/DataDog/dd-trace-go.v1 v1.17.0 // indirect
)

replace (
	git.apache.org/thrift.git => github.com/apache/thrift v0.0.0-20180902110319-2566ecd5d999
	github.com/h2non/gock => gopkg.in/h2non/gock.v1 v1.0.14
	github.com/tarent/loginsrv => github.com/gamalan/loginsrv v1.3.2-0.20190825053956-8c5eaaf7f554
)
