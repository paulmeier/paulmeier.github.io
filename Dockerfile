FROM jojomi/hugo:0.74
ARG HUGO_WATCH
ARG HUGO_THEME
ARG HUGO_BASEURL

ENV HUGO_WATCH=${HUGO_WATCH}
ENV HUGO_THEME=${HUGO_THEME}
ENV HUGO_BASEURL=${HUGO_BASEURL}

COPY . /src

CMD ["sh","-c", "/run.sh --port=${PORT} --appendPort=false"]
