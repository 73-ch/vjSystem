const fs = require('fs');
const Max = require("max-api");

const AutoLyricsInterface = require('./AutoLyricsInterface');

const lyric_interface = new AutoLyricsInterface();

const RECOGNIZED_DICT_ID = "recognized";
const DOWNLOADED_DICT_ID = "downloaded";

const outputDictAndBang = (dictId, content, outputObj) => {
  Max.setDict(dictId, {...content}).then(() => {
    Max.outlet(...outputObj);
  }).catch(e => {
    console.error(e.message);
  });
};

Max.addHandler("startRecognize", async url => {
  const recognizedList = await lyric_interface.startRecognize(url);

  if (!recognizedList) {
    Max.outlet('any lyrics founded on recognizing');
    return false;
  }

  console.log(recognizedList);

  outputDictAndBang(RECOGNIZED_DICT_ID, recognizedList, ["recognized", "bang"]);
});

Max.addHandler("selectRecognizedMusic", async i => {
  const downloadedList = await lyric_interface.selectRecognizedMusic(i);

  if (!downloadedList) {
    Max.outlet('any lyrics founded on downloading');
    return false;
  }

  outputDictAndBang(DOWNLOADED_DICT_ID, downloadedList, ["downloaded", "bang"]);
});

Max.addHandler("searchLyricInfos", async (title, artist) => {
  const downloadedList = await lyric_interface.fetchLyricInfos(title, artist);

  if (!downloadedList) {
    Max.outlet('any lyrics founded on downloading');
    return false;
  }

  outputDictAndBang(DOWNLOADED_DICT_ID, downloadedList, ["downloaded", "bang"]);
});

Max.addHandler("selectDownloadedLyric", async i => {
  const songInfo = await lyric_interface.selectDownloadLyrics(i);
  outputSongInfo(songInfo);
});

Max.addHandler("searchWithGoogle", async (title, artist) => {
  const songInfo = await lyric_interface.searchWithGoogle(title, artist);
  outputSongInfo(songInfo);
});

Max.addHandler("setTranslate", flag => {
  lyric_interface.setTranslate(flag);
});

const outputSongInfo = info => {
  Max.outlet('song_data', 'title', info['title']);
  Max.outlet('song_data', 'artist', info['artist']);
  Max.outlet('song_data', 'lyric', info['lyric']);
  Max.outlet('song_data', 'translated_lyric', info['translated_lyric']);
};

Max.addHandler("setLyricDownloadSite", site_name => {
  lyric_interface.setLyricDownloadSite(site_name);
});