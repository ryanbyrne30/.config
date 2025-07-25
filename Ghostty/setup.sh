#!/bin/bash

ALIASES=aliases.sh
BASH_ALIASES=$HOME/.bashrc_aliases

cat "$ALIASES" >> "$BASH_ALIASES"
