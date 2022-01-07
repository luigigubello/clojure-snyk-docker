# clojure-snyk-docker
Docker container to scan Clojure projects using Snyk CLI.

## How to run

Add your SNYK_TOKEN in the file `SNYK_TOKEN` and move the folder `clojure-snyk-docker` folder in your Clojure project.

Build the Docker container:

````
docker build -t clojure-snyk .
````

Run the container to scan your project:

````
docker container run --rm -ti -v $PWD/../:/app clojure-snyk
````

