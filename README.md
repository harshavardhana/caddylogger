# caddylogger
Caddy access logger is an experimental middleware which logs incoming HTTP requests in parsable json format.

### Quick Start
`go get` this middleware

```shell
$ go get bitbucket.org/minimalists/caddylogger
```

`cd` into the source directory

```shell
$ cd $GOPATH/src/bitbucket.org/minimalists/caddylogger
```

Run [caddydev](https://github.com/caddyserver/caddydev) to start Caddy with your new middleware.

```shell
$ caddydev
Starting caddy...
0.0.0.0:2015
```

Test the middleware

```
$ curl localhost:2015
```

Following entry in your `access.log`

```
$ tail access.log
{"StartTime":"2015-12-13T22:27:42.620192916Z","Duration":5952,"StatusMessage":"","ContentLength":"","HTTP":{"ResponseHeaders":{"Server":["Caddy"]},"Request":{"Method":"GET","URL":{"Scheme":"","Opaque":"","User":null,"Host":"","Path":"/","RawPath":"","RawQuery":"","Fragment":""},"Proto":"HTTP/1.1","ProtoMajor":1,"ProtoMinor":1,"Header":{"Accept":["*/*"],"User-Agent":["curl/7.43.0"]},"Host":"0.0.0.0:2015","Form":null,"PostForm":null,"Trailer":{"Accept":["*/*"],"User-Agent":["curl/7.43.0"]},"RemoteAddr":"127.0.0.1:63454","RequestURI":"/"}}}
```

### How did it happen ?
By default, Caddy looks for [`Caddyfile`](https://caddyserver.com/docs/caddyfile) in the current directory and this repository contains a suitable one. **Note** new directive `caddylogger`.
```conf
0.0.0.0

caddylogger
```
This repository also contains a [`config.json`](https://github.com/caddyserver/caddydev#1-configjson-file) file.
```
{
  "directive" : "caddylogger"
}
```
