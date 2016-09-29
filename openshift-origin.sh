docker run -d --name "origin" \
        --privileged --pid=host --net=host \
        -v /:/rootfs:ro -v /var/run:/var/run:rw -v /sys:/sys -v /var/lib/docker:/var/lib/docker:rw \
        -v /var/lib/origin/openshift.local.volumes:/var/lib/origin/openshift.local.volumes \
        -p 8080:8080 -e USE_LOCAL_IMAGES=true -e OPENSHIFT_ROUTE_SUBDOMAIN=apps \
        openshift/origin start --public-master=origin.zorend.com --latest-images=true
