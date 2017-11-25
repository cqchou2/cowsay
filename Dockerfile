# Cowsay Container -v 0.5
# docker run -it -v /tmp:/cow cqchou2/cowsay:0.4 bash    // TO Get default.com
# Go to the bash we want to get 2 file: /usr/share/cowsay/default.cow  and /usr/bin/cowsay
# copy these 2 files to the shared folder with the host, e.g.  -v /tmp:/cow 
# place these 2 files in the same folder with the Dockerfile to be built


FROM alpine:3.5

Maintainer q1.chou@gmail@gmail.com

RUN apk add --no-cache perl
COPY cowsay /usr/bin/cowsay
COPY default.cow /usr/share/cowsay/default.cow
CMD ["/usr/bin/cowsay", "Docker is very good ! Version: fr Github v.3.5"]     

