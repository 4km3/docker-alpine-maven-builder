# maven-builder
Test and build a Java project using Apache Maven, complete with upload to GitHub releases

## Building
```console
$ docker build -t 4km3/maven-builder .
```
## Configuration
### Default values
```text

: "${GITHUB_TOKEN?Need a repository token}"
: "${GITHUB_REPO?Need a repository name}" 
: "${GITHUB_USER?Need a GitHub username}" 
: "${GITHUB_BRANCH:=master}" 
: "${REPO_DIR:=.}" 
: "${MAVEN_CLEAN_TARGET:=clean}" 
: "${MAVEN_TEST_TARGET:=test}" 
: "${MAVEN_BUILD_TARGET:=package}" 
```
### Recommended values
By passing these values when running:
```text
GITHUB_TOKEN=<GitHub personal access token with repo scope>
GITHUB_REPO=<Repository name containing the Maven project>
GITHUB_USER=<GitHub user> 
```
you will meet the minimum requirements. Also you might need to modify some of the other default values.

## Running
```console
$ docker run                                                                     \
    --rm                                                                         \
    -e GITHUB_TOKEN=$GITHUB_TOKEN                                                \
    -e GITHUB_REPO=$GITHUB_REPO                                                  \
    -e GITHUB_USER=$GITHUB_USER                                                  \
    -e GITHUB_BRANCH=$GITHUB_BRANCH                                              \
    -e REPO_DIR=$REPO_DIR                                                        \
    -e MAVEN_CLEAN_TARGET=$MAVEN_CLEAN_TARGET                                    \
    -e MAVEN_TEST_TARGET=$MAVEN_TEST_TARGET                                      \
    -e MAVEN_BUILD_TARGET=$MAVEN_BUILD_TARGET                                    \
    -e GITHUB_RELEASE_BIN=$GITHUB_RELEASE_BIN                                    \
    4km3/maven-builder
```
Also a runme script is provided for convenience

## Authors
pancho horrillo <pancho@pancho.name>

Rodrigo de la Fuente <rodrigo@delafuente.email>

## Acknowledgements
Thanks to Raúl Sánchez @rawmind0 for his invaluable guidance!
