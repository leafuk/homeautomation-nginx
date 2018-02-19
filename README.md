
## Create Cert
```
export LETSENCRYPT_EMAIL=lea@leaforeman.co.uk
export DNSNAME=homeautomation.leaforeman.co.uk

docker run --rm -p 443:443 -p 80:80 --name letsencrypt -v "/etc/letsencrypt:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" bcecchinato/letsencrypt-rpi:latest certonly -n -m $LETSENCRYPT_EMAIL -d $DNSNAME --standalone --agree-tos
```

## Renew Cert
```
export LETSENCRYPT_EMAIL=lea@leaforeman.co.uk
export DNSNAME=homeautomation.leaforeman.co.uk

docker run --rm --name letsencrypt \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    -v "/usr/share/nginx/html:/usr/share/nginx/html" \
    bcecchinato/letsencrypt-rpi:latest \
    certonly -n --webroot -w /usr/share/nginx/html -d $DNSNAME --agree-tos
```