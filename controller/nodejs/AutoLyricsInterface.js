const fs = require('fs');

const MusicRecognizer = require('./MusicRecognizer');
const LyricsDownloader = require('./LyricsDownloader');


class AutoLyricsInterface {
  constructor() {
    this.recognizer = new MusicRecognizer();

    this.downloader = new LyricsDownloader();

    this.clearData();
  }

  clearData() {
    this.playingBuffer = null;
  }

  setLyricDownloadSite(site_name) {
    this.downloader.setLyricSite(site_name);
  }

  setTranslate(flag) {
    this.downloader.setTranslate(flag);
  }

  async searchWithGoogle(title, artist) {
    return await this.downloader.searchWithGoogle(title, artist);
  }


  // 以下のメソッドを順に実行していくことで、目的の歌詞を選択することができる

  async startRecognize(url) {
    const bitmap = fs.readFileSync(url);
    this.playingBuffer = Buffer.from(bitmap);

    await this.recognizer.identify(this.playingBuffer);

    return this.recognizer.recognized_musics;
  }

  async selectRecognizedMusic(i) {
    const target = this.recognizer.specifyMusic(i);

    await this.downloader.fetchLyricInfos(target.title, target.artist);

    return this.downloader.song_infos;
  }

  // タイトルなどを変更して検索する場合
  async fetchLyricInfos(title, artist) {
    await this.downloader.fetchLyricInfos(title, artist);

    return this.downloader.song_infos;
  }

  async selectDownloadLyrics(i) {
    return await this.downloader.specifyLyric(i);
  }
}

module.exports = AutoLyricsInterface;