sudo docker run -d -v /data/rancher/mysql:/var/lib/mysql --restart=unless-stopped -p 18080:8080 rancher/server
