FROM jhipster/jhipster:v6.8.0

USER root
RUN apt-get -qq update \
    && apt-get -qq -y install \
       python3 \
       jq \
       ca-certificates \
       curl \
    && curl -sSL https://get.docker.com/ | sh \
    && usermod -a -G docker jhipster 
    && usermod -a -G docker root

USER jhipster
