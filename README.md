# clojure-snyk-docker
Docker container to scan Clojure projects using Snyk CLI.

## How to run

Add your SNYK_TOKEN in the file `env.file`.

Build the Docker container:

````
docker build -t clojure-snyk .
````

Run the container to scan your project:

````
./start.sh /PATH/to/Clojure/project
````

