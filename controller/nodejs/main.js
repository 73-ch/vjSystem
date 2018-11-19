const Max = require('max-api');
const FS = require('fs');
const glslify = require('glslify');
const glsl = require('glslify-import');

let folder_path = "";
let watcher;

Max.addHandler("setDir", (__directory_path) => {
  setFolderDir(__directory_path);
});

Max.addHandler("stop", () => {
  clearFolderDir();
});

Max.addHandler("getFile", (__file_name) => {
  outputFile(__file_name);
});

const setFolderDir = (__path) => {
  if (folder_path) clearFolderDir();

  folder_path = __path;

  watcher = FS.watch(__path, {recursive: true}, (e_type, file_name) => {
    if (e_type === 'change') outputFile(file_name);
  });
};

const clearFolderDir = () => {
  watcher.close();
};

const outputFile = async (file_name) => {
  console.log("change : " + file_name);

  fetchFile(folder_path + file_name).then((text) => {
    const imported = glsl(folder_path + file_name, text, {});

    const required = glslify.compile(imported, {basedir: folder_path});

    Max.outlet([file_name, required]);
  });

};

const fetchFile = (__path) => {
  return new Promise(resolve => {
    FS.readFile(__path, 'utf8', (err, data) => {
      if (err) {
        console.error(err);
      }else {
        resolve(data);
      }
    });
  });
};


