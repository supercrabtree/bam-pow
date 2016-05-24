import test from 'ava';
import execa from 'execa';
import fs from 'fs-promise';
import path from 'path';

test.before(t => {

  const dummyBamDir = path.join(__dirname, 'helpers', 'bam-dir');
  process.env.BAM_DIR = dummyBamDir;
  fs.mkdirp(dummyBamDir);

});


test(async t => {

  let result = await execa('../bam.js');

  console.log(result.stdout);

});
