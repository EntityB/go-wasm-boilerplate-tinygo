# Go WASM Boilerplate with TinyGo

Develop entire web content with Golang. This project uses JS bridge from [Go WebAssembly](https://github.com/golang/go/wiki/WebAssembly) to communicate with Go. JS is premade with Babel and you don't have to modify it. 
For Go compilation, it uses [TinyGo](https://github.com/tinygo-org/tinygo) to achieve smaller WASM files. 

Preview: https://entityb.github.io/go-wasm-boilerplate-tinygo/

## Start

Requirements:
* Go 
* TinyGo

```bash
git clone git@github.com:EntityB/go-wasm-boilerplate-tinygo.git <myProject> --depth 1
```

---

Start server with Go
```bash
go run server.go
```
Your web app is accessible on http://localhost:8080/

---

Modify/add code in `src-go` folder and use
```bash
make
```
to compile and publish your code. Results are located in `docs` folder. 

## Advanced

Clean build folder
```bash
make clean
```

---

Run babel minification

Requirements:
* `npm install babel-cli babel-preset-minify npx`

```
make js
```
