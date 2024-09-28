ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}
ARG TARGETARCH

ADD src/install.sh install.sh
RUN sh install.sh && rm install.sh

ENV IMMICH_API_KEY ''
ENV IMMICH_INSTANCE_URL ''
ENV SCHEDULE ''

ADD src/run.sh run.sh
ADD src/upload.sh upload.sh
ADD src/env.sh env.sh

CMD ["sh", "run.sh"]
