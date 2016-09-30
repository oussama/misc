sudo docker run -d -v /data/rancher:/var/lib/mysql --restart=unless-stopped -p 18080:8080 rancher/server
