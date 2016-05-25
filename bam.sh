#!/bin/sh

source "./lib/random-adjective.sh"
source "./lib/random-noun.sh"

adjective=$(random_adjective);
noun=$(random_noun);


echo "$adjective-$noun"
