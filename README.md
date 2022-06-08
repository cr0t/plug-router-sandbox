# Plug.Router Example

In this repository we're playing with the Plug.Router and multiple Phoenix applications.

## How to Play

In one terminal we can compile and run our Router application:

```console
$ cd router && mix deps.get && mix deps.compile
$ iex -S mix
```

While it's running, we can check that routing works in the other terminal:

```console
$ curl http://localhost:4000/alice
Hello, I am Alice.Plug⏎
$ curl http://localhost:4000/bob
Hello, I am Bob.Plug⏎
```
