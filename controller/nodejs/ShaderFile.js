const Max = require('max-api');
const FS = require('fs');
const glsl = require('glslify-import');

const getFileName = (file_path) => {
  return file_path.match(/([^/]+?)?$/)[0].replace(/\..*/, "");
};

const ShaderFile = class {
  constructor(__path) {
    this.path = __path;
    this.name = getFileName(this.path);
  }

  onChange(file, stat) {
    console.log(file);
    console.log(stat);

    // Max.outlet(this.name, file.)
  }
};

module.exports = ShaderFile;