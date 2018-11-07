const Max = require('max-api');

const ShaderFile = require('ShaderFile');
const ShaderManager = require('ShaderManager');

const manager = new ShaderManager;

Max.addHandler("watch", (__path) => {
  const new_shader = new ShaderFile(__path);

  manager.addFile(new_shader);
});

Max.addHandler("cancel", (__path) => {
  manager.cancelWatch(__path);
});

Max.addHandler("clear", () => {
  manager.clearAll();
});

