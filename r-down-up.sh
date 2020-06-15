#! /bin/bash

CURRENT_DIR="$(dirname "$0")"

cd "$CURRENT_DIR" || exit

docker container ls -a
printf "\n\n"

read -p "DOWN and UP? (Enter/n)" -n 1 -r KEY


if [ "$KEY" = "" ]; then
    sh "$CURRENT_DIR/r-down.sh" && sh "$CURRENT_DIR/r-up.sh"
    printf "🎉  DOWN and UP!\n\n"
else
    # shellcheck disable=SC2028
    printf "\n\nCancel\n"
fi
