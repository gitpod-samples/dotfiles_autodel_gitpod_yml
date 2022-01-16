#!/usr/bin/bash

set -eux;

_file=".gitpod.yml";
_times=0;
_path="$GITPOD_REPO_ROOT/$_file";

until test -e "$_path"; do {
    if test "$_times" -eq 12; then {
        exit;
    } else {
        sleep 1;
        ((_times++)) || :;
    } fi
} done

rm -f "$_path"