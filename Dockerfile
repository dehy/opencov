FROM alpine:latest

ENV MIX_ENV prod

ADD ./docker/build /build
RUN /build/docker-build.sh

ADD . /opencov
WORKDIR /opencov

RUN /build/docker-configure.sh

CMD ["mix", "phoenix.server"]