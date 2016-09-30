sudo docker run -e "VIRTUAL_HOST=rancher.zorend.com" -d -v /data/rancher/mysql:/var/lib/mysql --restart=unless-stopped --expose 8080 rancher/server
