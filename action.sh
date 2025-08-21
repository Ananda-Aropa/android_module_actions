#!/bin/bash

if [ -z "$VERSION_CODE" ]; then
	# Set version code to yyyymmdd
	VERSION_CODE=$(date +%Y%m%d)
fi

cat <<EOF > module/module.prop
id=$ID
name=$NAME
version=$VERSION
versionCode=$VERSION_CODE
author=$AUTHOR
description=$DESCRIPTION
EOF

if [ -n "$UPDATE_JSON" ]; then
	echo "updateJson=$UPDATE_JSON" >> module/module.prop
fi

zip -r "$ID.zip" module
exit 0