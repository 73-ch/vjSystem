'use strict';
const fs = require('fs');
const crypto = require('crypto');
const request = require('request-promise');

const API_INFO = require('./api_info.json');

const sign = (signString, accessSecret) => {
  return crypto.createHmac('sha1', accessSecret).update(Buffer.from(signString, 'utf-8')).digest().toString('base64');
};

class MusicRecognizer {
  constructor() {
    this.endpoint = '/v1/identify';
    this.signature_version = '1';
    this.data_type = 'audio';
    this.secure = true;
  }

  async identify(sample) {
    console.log('recognizing...');
    const timestamp = Date.now();

    const stringToSign = ['POST', this.endpoint,API_INFO.access_key,this.data_type,this.signature_version,timestamp].join('\n');

    const signature = sign(stringToSign, API_INFO.access_secret);

    const formData = {
      sample: sample,
      access_key: API_INFO.access_key,
      data_type: this.data_type,
      signature_version: this.signature_version,
      signature: signature,
      sample_bytes: sample.length,
      timestamp: timestamp
    };

    const body =  await request.post({
      url: `http://${API_INFO.host}${this.endpoint}`,
      method: 'POST',
      formData: formData
    }).catch(e => {
      console.error('failed to get music data', e.message);
      return e;
    });

    console.log('get recognized data!');

    this.extractMetaData(body);

    return this.recognized_musics;
  }

  extractMetaData(body) {
    try {
      let data = JSON.parse(body);

      if (data.status.code === 1001) {
        console.log('No result');
        return {};
      }

      if (!data.metadata || !data.metadata.music) {
        console.error('data format is invalid');
        return false;
      }

      const musics = data.metadata.music;

      this.recognized_musics = musics.map(m => {
        console.log(m);
        return {
          title: m.title,
          artist: m.artists[0] ? m.artists[0].name : ''
        }
      });

    } catch {
      console.error('body does not have json format');
      console.log(body);
      this.recognized_musics = [];
    }
  }

  specifyMusic(i) {
    if (this.recognized_musics && this.recognized_musics[i]){
      return this.recognized_musics[i];
    } else {
      console.error('given index is out of range or you have not recognized any music yet: recognizedMusics');
      return false;
    }
  }
}

module.exports = MusicRecognizer;