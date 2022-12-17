const importObject = {
  imports: {
    print: (arg) => console.log(arg)
  },
};

WebAssembly.instantiateStreaming(fetch("graphic.wasm"), importObject).then(
  (obj) => {
    if(obj.instance.exports.create() == 0) console.log("successfully created the world.")
  }
);

WebAssembly.instantiateStreaming(fetch("plane.wasm"), importObject).then(
  (obj) => {
    console.log(obj.instance.exports.object());
  }
);