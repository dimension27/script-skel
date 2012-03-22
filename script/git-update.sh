#!/bin/bash

source `dirname $0`/env.sh
cd "$BASE_PATH"
`getSudo` true \
	&& git pull \
	&& git submodule init \
	&& git submodule sync \
	&& git submodule update \
	&& make \
	&& ./script/flush-caches.sh