FROM clojure:lein-bullseye

WORKDIR /tmp/app

RUN apt update && \
    apt install nodejs npm maven libmaven-dependency-plugin-java -y && \
    npm install -g snyk
