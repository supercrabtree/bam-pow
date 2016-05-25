#!/usr/bin/env node

const randomAdjective = require('./lib/random-adjective');
const randomNoun = require('./lib/random-noun');

const fs = require('fs-promise');
const path = require('path');


let dirExists;
let name;
let bamDir;

do {
  name = randomAdjective() + '-' + randomNoun();
  bamDir = path.join(process.env.BAM_DIR, name);
  dirExists = fs.existsSync(bamDir);
}
while (dirExists);

fs.mkdirp(bamDir).then(() => {

  console.log(bamDir);
  process.exit(0);

})
.catch(err => {
  process.exit(1);
});

