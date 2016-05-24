#!/usr/bin/env node

const randomAdjective = require('./lib/random-adjective');
const randomNoun = require('./lib/random-noun');

console.log(randomAdjective() + '-' + randomNoun());

process.exit(0);
