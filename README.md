# goruntime

a minimal runtime for golang app base on centos 7. 

# create main.go

```go
package main

import (
    "fmt"
    "io/ioutil"
    "net/http"
    "os"
)

func main() {
    resp, err := http.Get("https://google.com")
    check(err)
    body, err := ioutil.ReadAll(resp.Body)
    check(err)
    fmt.Println(len(body))
}

func check(err error) {
    if err != nil {
        fmt.Println(err)
        os.Exit(1)
    }
}
```
# build it:

```bash
GOOS=linux go build -o main .
```
# create Dockerfile

```bash
FROM afxcn/goruntime
ADD main /
CMD ["/main"]
```
# build it

```bash
docker build -t afxcn/hello-go .
```
# run it

```bash
docker run afxcn/hello-go
```
