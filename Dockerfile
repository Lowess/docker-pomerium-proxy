FROM nginx:1.21

## POMERIUM_DOMAIN Domain name to setup Nginx reverse proxy
ENV POMERIUM_DOMAIN "localhost.pomerium.io"

## POMERIUM_UPSTREAM Name or IP/Port where Pomerium is running
ENV POMERIUM_UPSTREAM "pomerium"
ENV POMERIUM_VERIFY_UPSTREAM "verify:8000"

ENV POMERIUM_AUTHENTICATE_SERVER_NAME "authenticate"
ENV POMERIUM_FWDAUTH_SERVER_NAME "fwdauth"
ENV POMERIUM_VERIFY_SERVER_NAME "verify"

ENV POMERIUM_SSL_CERTFICATE "/etc/nginx/nginx.pem"
ENV POMERIUM_SSL_CERTIFICATE_KEY "/etc/nginx/nginx-key.pem"

COPY nginx/ /etc/nginx/
