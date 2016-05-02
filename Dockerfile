FROM ruby:2.3.1-slim
MAINTAINER Brian Pitts <brian@polibyte.com>

WORKDIR /lita
ADD .env .
ADD lita_config.rb .
ADD Gemfile .
ADD Gemfile.lock .
RUN set -ex \
    && buildDeps=' \
        gcc \
        g++ \
        make \
        patch \
    ' \
    && apt-get update \
    && apt-get install -y --no-install-recommends $buildDeps \
    && rm -rf /var/lib/apt/lists/* \
    && bundle install --deployment \
    && apt-get purge -y --auto-remove $buildDeps

CMD ["bundle", "exec", "lita"]
