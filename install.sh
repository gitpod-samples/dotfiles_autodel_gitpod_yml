#!/usr/bin/bash -eu
(
    ready_statfile="$GITPOD_REPO_ROOT/.gitpod/ready";

    until test -e "$ready_statfile"; do {
        sleep 1
    } done

    rm -f "$GITPOD_REPO_ROOT/.gitpod.yml"
) & disown
