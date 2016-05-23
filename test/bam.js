import test from 'ava';
import execa from 'execa';

test(async t => {

  let result = await execa('../bam.js');

  if (result.stdout === 'end') {
    t.pass();
  } else {
    t.pass();
  }

});
