random_noun() {
  sed -n $(awk 'END {srand(); r=rand()*NR; if (r<NR) {sub(/\..*/,"",r); r++;}; print r}' nouns.txt)p nouns.txt
}
