const Max = require('max-api');
const FS = require('fs');

let folder_path = "";
let watcher;

Max.addHandler("setDir", (__directory_path) => {
  setFolderDir(__directory_path);
});

Max.addHandler("stop", () => {
  clearFolderDir();
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
  console.log("output : " + folder_path + file_name);
  fetchFile(folder_path + file_name).then((text) => {
    console.log("read");

    console.log(text);
    Max.outlet([file_name, text]);
  });

};

const fetchFile = (__path) => {
  return new Promise(resolve => {
    FS.readFile(__path, 'utf8', (err, data) => {
      if (err) {
        console.error(err);
      }
      resolve(data);
    });
  });
};


