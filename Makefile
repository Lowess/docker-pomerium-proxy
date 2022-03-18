.PHONY: dev

pomerium-proxy:
	docker run \
                --name pomerium-proxy \
                --rm -it \
                -p 80 \
                -p 443 \
                -v $(PWD)/nginx/templates:/etc/nginx/templates \
                -v $(PWD)/nginx/proxy.conf:/etc/nginx/proxy.conf \
                -v $(PWD)/fullchain.pem:/etc/nginx/nginx.pem \
                -v $(PWD)/privkey.pem:/etc/nginx/nginx-key.pem \
                oauth

build:
	docker build . -t lowess/pomerium-proxy
