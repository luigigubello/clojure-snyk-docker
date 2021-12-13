docker container run --rm -ti --env-file env.list -v $1:/app clojure-snyk bash -c "cp -a /app/. /tmp/app/ && lein pom && snyk auth \$SNYK_TOKEN && snyk test"
