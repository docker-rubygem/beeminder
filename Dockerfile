FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.9

RUN gem install beeminder --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["beemind"]
CMD ["--help"]
