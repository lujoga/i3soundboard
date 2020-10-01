#!/bin/sh

SOUNDBOARD_URL=""
SOUNDBOARD_URL_ALT=""

GROUP="$1"
SOUND="$2"

if [ -z "$GROUP" ] || [ -z "$SOUND" ]
then
	echo "usage: $0 <group> <sound>"
	exit 1
fi

REQUEST='{"group":"'$GROUP'","sound":"'$SOUND'"}'
echo "$REQUEST"

curl -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' -d "$REQUEST" "$SOUNDBOARD_URL" || curl -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' -d "$REQUEST" "$SOUNDBOARD_URL_ALT"
echo
