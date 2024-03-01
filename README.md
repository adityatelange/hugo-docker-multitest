# hugo-docker-multitest

Build

```sh
docker build --pull --rm -f "Dockerfile" -t hugodockermultitest:latest "."
```

Add following to ~/.bashrc

```sh
function hugopreview() {
    if [ -z "$1" ] && [ -z "$2" ]; then
        echo -e "No args passed.\n  hugobuild <SRC_DIR> <HUGO_VERSION>\n  ex. hugobuild ~/blog 0.122.0"
    else
        docker run -e HUGO_VERSION=$2 -v $1:/src -v ~/.cache/hugo-debs-cache:/debs -p 1313:1313 -it hugodockermultitest
    fi
}
```

Now you can run in current dir:

```sh
$ hugopreview . 0.122.0
```
