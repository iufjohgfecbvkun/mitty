#!/bin/sh
if [ ! -f UUID ]; then
  UUID="cf29bd3f-097f-496a-8197-39a16eed3daf"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

