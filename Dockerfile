FROM registry.k8s.io/pause:3.9 AS pause

FROM alpine:3.21.3

RUN apk --no-cache add wireguard-tools nftables

COPY --from=pause /pause /

COPY assets/ /

CMD ["/usr/local/sbin/wg.sh"]
