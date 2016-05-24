import test from 'ava';
import execa from 'execa';

test(async t => {

  let result = await execa('../bam.js');

  console.log(result.stdout);

});
