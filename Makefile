main: clean
	tinygo build -o ./build/wasm.wasm -target wasm -no-debug ./src-go/main.go
	cp ./html/* ./build/

clean:
	rm -rf ./build
	mkdir ./build

js:
	npx babel ./src-js/ --out-file ./html/wasm.min.js