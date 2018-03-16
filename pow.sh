#!/bin/sh

pow() {
  if [ -z $1 ]; then
    echo 'You need to name the new directory'
    return 1
  fi

  if [ -z $POW_DIR ]; then
    echo 'You need to have an $POW_DIR env set something like: $POW_DIR="$HOME/dev/my-awesome-pow-dir"'
    return 1
  fi

  mkdir -p "$POW_DIR"

  mv -iv "$PWD" "$POW_DIR/$1"

  cd "$POW_DIR/$1"
}
