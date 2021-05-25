FROM chrisgarrett/athenapdf-service:20170612

RUN set -x \
    && apt-get update \
    && apt-get install -y --force-yes debian-keyring debian-archive-keyring apt-utils \
    && apt-key update \
    && apt-get update \
    && apt-get upgrade -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
