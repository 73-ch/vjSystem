const Max = require('max-api');

const FileWatcher = require('filewatcher');

const ShaderFile = require('ShaderFile');

const ShaderManager = class {
  constructor() {
    this.shader_files = {};
  }

  addFile(__shader_file) {
    if (!__shader_file instanceof ShaderFile) {
      console.error('This object is not instance of ShaderFile');
      return false;
    }

    this.shader_files[__shader_file.path] = __shader_file;

    FileWatcher.add(__shader_file.path);
  }

  cancelWatch(__path) {
    if (this.shader_files[__path]) {
      FileWatcher.remove(__path);
      delete this.shader_files[__path];
    } else {
      console.error('file does not exist.');
    }
  }

  clearAll() {
    FileWatcher.removeAll();

    this.shader_files = {};
  }
};

module.exports = ShaderManager;