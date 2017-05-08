FROM alpine:3.5

ENTRYPOINT ["/bin/registrator"]

COPY . /go/src/github.com/syukur/registrator
RUN apk --no-cache add -t build-deps build-base go git \
	&& apk --no-cache add ca-certificates \
	&& cd /go/src/github.com/syukur/registrator \
	&& export GOPATH=/go \
    # && git config --global http.https://gopkg.in.followRedirects true \
	&& go get \
	# && go build -ldflags "-X main.Version=$(cat VERSION)" -o /bin/registrator \
	&& go build  -o /bin/registrator \	
	&& rm -rf /go \
	&& apk del --purge build-deps






# FROM ubuntu:16.04

# RUN apt-get update \
#  && apt-get install -y --force-yes --no-install-recommends \
#       apt-transport-https \
#       curl \
#       ca-certificates \
#  && apt-get clean \
#  && apt-get autoremove \
#  && rm -rf /var/lib/apt/lists/*




# ADD bin/registrator /apps/registrator

# RUN chmod -R 777 /apps/registrator

# WORKDIR /apps

# ENTRYPOINT /apps/registrator


