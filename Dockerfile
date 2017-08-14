FROM jdubz/elixir:1.5.1

MAINTAINER Josh Williams <vmizzle@gmail.com>

ENV REFRESHED_AT=2017-09-14

RUN apk --update add \
		bash \
		erlang-asn1 \
		erlang-crypto \
		erlang-dev \
		erlang-erl-interface \
		erlang-eunit \
		erlang-inets \
		erlang-parsetools \
		erlang-public-key \
		erlang-sasl \
		erlang-ssl \
		erlang-syntax-tools \
		git \
		wget && \
	rm -rf /var/cache/apk/* && \
	mix local.hex --force && \
	mix local.rebar --force

CMD ["/bin/bash"]
