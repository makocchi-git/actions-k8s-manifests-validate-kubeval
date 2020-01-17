FROM garethr/kubeval:0.14.0 AS kubeval

FROM makocchi/alpine-curl-jq:latest

COPY entrypoint.sh /entrypoint.sh
COPY --from=kubeval /kubeval .

WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]
