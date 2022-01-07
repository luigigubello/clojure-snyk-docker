FROM clojure:lein-bullseye

WORKDIR /tmp

COPY SNYK_TOKEN .

COPY entrypoint.sh .

RUN apt update && \
    apt install nodejs npm maven libmaven-dependency-plugin-java rsync -y && \
    npm install -g snyk

ENTRYPOINT ["/tmp/entrypoint.sh"] 