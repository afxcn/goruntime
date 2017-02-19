FROM scratch
MAINTAINER https://github.com/afxcn/goruntime
COPY . /

LABEL name="GO Runtime" \
    vendor="GZItech.com" \
    license="MIT" \
    build-date="20170220"

USER nobody
