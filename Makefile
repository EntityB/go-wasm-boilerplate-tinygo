main: clean
	tinygo build -o ./docs/wasm.wasm -target wasm -no-debug ./src-go/main.go
	cp ./html/* ./docs/

clean:
	rm -rf ./docs
	mkdir ./docs

js:
	npx babel ./src-js/ --out-file ./html/wasm.min.js