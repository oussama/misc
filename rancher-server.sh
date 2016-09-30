docker run -d \
    --name rancher \
    -e "VIRTUAL_HOST=rancher.zorend.com" \
    -e "LETSENCRYPT_HOST=rancher.zorend.com" \
    -e "LETSENCRYPT_EMAIL=oussama_md@hotmail.com" \
     --restart=unless-stopped --expose 8080 \
    rancher/server
