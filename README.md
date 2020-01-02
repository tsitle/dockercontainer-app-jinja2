# Jinja2 general purpose templating language Docker Container for AARCH64, ARMv7l, X86 and X64

For for compiling [Jinja2](https://palletsprojects.com/p/jinja/) based templates with [j2cli](https://github.com/kolypto/j2cli) using Docker.  

## Docker Container usage

Put your source in `./mpapp/` and then run something like:

```
$ ./dc-run.sh j2 -f json -o example1-output-nginx1.conf example1/nginx.j2 example1/nginx.json
```

See the files `./mpapp/compile-example*.sh` for example build scripts.  
You can use them by running e.g.:

```
$ ./dc-run.sh ./compile-example1.sh
```

(Examples taken from [https://github.com/kolypto/j2cli/blob/v0.3.12b/README.md](https://github.com/kolypto/j2cli/blob/v0.3.12b/README.md))

Show version numbers of **j2cli** and **Jinja2**:

```
$ ./dc-run.sh j2 -v
```

## Required Docker Image
The Docker Image **app-jinja2-\<ARCH\>** will automaticly be downloaded from the Docker Hub.  
The source for the image can be found here [https://github.com/tsitle/dockerimage-app-jinja2](https://github.com/tsitle/dockerimage-app-jinja2).
