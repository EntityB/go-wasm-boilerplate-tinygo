window.addEventListener("load", () => {
  const go = new Go();
  WebAssembly.instantiateStreaming(fetch("wasm.wasm"), go.importObject).then((result) => {
    go.run(result.instance);
  });
});