#!/bin/sh

URL="https://codeload.github.com";
AUTHOR="textpattern";
REPO="textpattern-default-theme";
EXTRACT="textpattern/setup/themes/default";


TAG="master";
if [ ! -z "$1" ]; then
    TAG="$1";
fi

echo "Get repo: $REPO :: $TAG";
echo "-------------------------------------------------------------------------------";
rm -rf $EXTRACT/*;
curl $URL/$AUTHOR/$REPO/tar.gz/$TAG | tar xz --strip=3 --directory=$EXTRACT $REPO-$TAG/dist/default_theme
