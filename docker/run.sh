#!/usr/bin/env bash
if [ `id -u $USER` != "1000" ]; then
    echo "This only works if your local user has UID 1000 right now... sorry :(" 1>&2
    exit 1
fi
docker run -it --rm -v "$HOME/.ssh:/home/dockeruser/.ssh" -v "$(pwd):/home/dockeruser/mnt" -w /home/dockeruser/mnt -u dockeruser microsoft-internal/aspnet-build "$@"
