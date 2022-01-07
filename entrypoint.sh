#!/bin/bash
snyk_token=($(cat SNYK_TOKEN))
rsync -a --progress /app/. /tmp/app
snyk auth $snyk_token
cd /tmp/app
lein pom
mvn install
cd /tmp/app
# https://docs.snyk.io/features/snyk-cli/cli-reference
snyk monitor --file=pom.xml --project-name=clojure-test || true
snyk test --file=pom.xml --project-name=clojure-test  || true
