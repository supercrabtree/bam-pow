random_adjective() {
  sed -n $(awk 'END {srand(); r=rand()*NR; if (r<NR) {sub(/\..*/,"",r); r++;}; print r}' adjectives.txt)p adjectives.txt
}
