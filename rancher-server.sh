docker run -d \
    --name rancher \
    -e "VIRTUAL_HOST=rancher.zorend.com" \
    -e "LETSENCRYPT_HOST=rancher.zorend.com" \
    -e "LETSENCRYPT_EMAIL=oussama_md@hotmail.com" \
     --restart=unless-stopped --expose 8080 \
    rancher/server

sudo docker run -d -v /data/rancher/mysql:/var/lib/mysql  -v /data/rancher/cert.crt:/ca.crt --restart=unless-stopped -p 8080:8080 rancher/server
