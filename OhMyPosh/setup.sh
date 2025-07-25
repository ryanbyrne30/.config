#!/bin/bash

FILE=oh-my-posh.json
CONFIG_DIR=$HOME/.config
BASHRC=$HOME/.bashrc_custom


# [Installation instructions](https://ohmyposh.dev/docs/installation/linux)
curl -s https://ohmyposh.dev/install.sh | bash -s

cp "$FILE" "$CONFIG_DIR"

echo "eval \"\$(oh-my-posh init bash --config $CONFIG_DIR/$FILE)\"" >> "$BASHRC"
